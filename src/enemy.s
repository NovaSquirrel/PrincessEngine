; Princess Engine
; Copyright (C) 2014-2018 NovaSquirrel
;
; This program is free software: you can redistribute it and/or
; modify it under the terms of the GNU General Public License as
; published by the Free Software Foundation; either version 3 of the
; License, or (at your option) any later version.
;
; This program is distributed in the hope that it will be useful, but
; WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
; General Public License for more details.
;
; You should have received a copy of the GNU General Public License
; along with this program.  If not, see <http://www.gnu.org/licenses/>.
;

.proc ObjectGoomba
  jsr EnemyFall
  lda ObjectF3,x
  beq :+
  php
  jsr EnemyBounceRandomHeights
  plp
  bcc :+
  jsr EnemyLookAtPlayer  
:
  lda #$10
  jsr EnemyWalk
  jsr EnemyAutoBump

  ; Switch between three frames
  lda retraces
  lsr
  lsr
  lsr
  and #3
  tay
  lda Frames,y
  ldy #OAM_COLOR_2
  jsr DispEnemyWide

  jmp GoombaSmoosh
Frames:
  .byt $0c, $10, $14, $10
.endproc

.proc GoombaSmoosh
  jsr EnemyPlayerTouch
  bcc NoTouch
  ; Custom behavior, so can't use EnemyPlayerTouchHurt
  lda PlayerDrawY
  add #8
  cmp O_RAM::OBJ_DRAWY
  bcc FlattenGoomba

  ; Not flattening? Then hurt the player
  lda ObjectF2,x
  cmp #ENEMY_STATE_STUNNED ; if the enemy isn't stunned, that is
  beq NoTouch
  jsr HurtPlayer
  jsr EnemyTurnAround
NoTouch:
  rts
.endproc

.proc FlattenGoomba
  lda #Enemy::POOF * 2
  sta ObjectF1,x
  lda #0
  sta ObjectTimer,x
  sta ObjectF2,x
  sta ObjectF3,x
  sta ObjectF4,x
  sta O_RAM::OBJ_TYPE ; fixes a bug where after changing to the poof, it still checks for projectiles
  lda #<-1
  sta PlayerVYH
  lda #<-$60
  sta PlayerVYL
  lda #22
  sta PlayerJumpCancelLock
  lda #SFX::ENEMY_SMOOSH
  sta NeedSFX
  rts
.endproc

.proc GenericPoof
DrawX = O_RAM::OBJ_DRAWX
DrawY = O_RAM::OBJ_DRAWY
.ifdef REAL_COLLISION_TEST
  jsr DispEnemyWideCalculatePositions
  bcc NoDraw
.endif

  lda ObjectTimer,x
  asl
  sta 0

  ldy OamPtr
  lda DrawY
  sub 0
  sta OAM_YPOS+(4*0),y
  sta OAM_YPOS+(4*1),y
  lda DrawY
  add #8
  add 0
  sta OAM_YPOS+(4*2),y
  sta OAM_YPOS+(4*3),y

  lda DrawX
  sub 0
  sta OAM_XPOS+(4*0),y
  sta OAM_XPOS+(4*2),y
  lda DrawX
  add #8
  add 0
  sta OAM_XPOS+(4*1),y
  sta OAM_XPOS+(4*3),y

  lda 1
  sta OAM_ATTR+(4*0),y
  sta OAM_ATTR+(4*1),y
  sta OAM_ATTR+(4*2),y
  sta OAM_ATTR+(4*3),y
  lda 2
  sta OAM_TILE+(4*0),y
  sta OAM_TILE+(4*1),y
  sta OAM_TILE+(4*2),y
  sta OAM_TILE+(4*3),y
  tya
  add #4*4
  sta OamPtr
NoDraw:
  inc ObjectTimer,x
  lda ObjectTimer,x
  cmp #6
  bcc :+
  lda #0
  sta ObjectF1,x
: rts
.endproc

.proc ObjectFloatingText
; Disappear
  inc ObjectTimer,x
  lda ObjectTimer,x
  cmp #15
  bcs :+ ; float up
    ; A is still ObjectTimer,x, don't reload it
    asl
    asl
    sta 0
    lda ObjectPYL,x
    sub 0
    sta ObjectPYL,x
    subcarryx ObjectPYH
    jmp :++
  :
  cmp #60
  bcc :+
    lda #0
    sta ObjectF1,x
  :

.ifdef REAL_COLLISION_TEST
  jsr DispEnemyWideCalculatePositions
  bcc NoDraw
.endif
; Display
  lda #$60
  sta O_RAM::TILEBASE
  lda #<Metasprite
  ldy #>Metasprite
  jmp DispEnemyMetasprite
NoDraw:
  rts

Metasprite:
  MetaspriteHeader 4, 1, 0
  .byt $1c, $1d, $1e, $1f
.endproc

.proc BrickPoof ; the particles used for brick poofs
  lda #OAM_COLOR_1
  sta 1
  lda retraces
  and #1
  ora #$56
  sta 2
  jmp GenericPoof
.endproc

.proc ObjectPoof ; also for particle effects
DrawX = O_RAM::OBJ_DRAWX
DrawY = O_RAM::OBJ_DRAWY
.ifndef REAL_COLLISION_TEST
  RealXPosToScreenPosByX ObjectPXL, ObjectPXH, DrawX
.endif
  RealYPosToScreenPosByX ObjectPYL, ObjectPYH, DrawY

  ldy ObjectF2,x
  beq RegularPoof
    lda ObjHi-1,y
    pha
    lda ObjLo-1,y
    pha
    rts
RegularPoof:

  lda #OAM_COLOR_1
  sta 1
  lda #$51
  sta 2
  jmp GenericPoof

ObjLo:
  .byt <(BrickPoof-1)
  .byt 0
  .byt <(ObjectFloatingText-1)
ObjHi:
  .byt >(BrickPoof-1)
  .byt 0
  .byt >(ObjectFloatingText-1)
.endproc

.proc ObjectSneaker
  jsr EnemyFall
  lda ObjectF2,x
  bne :+
  lda ObjectF4,x
  cmp #$20
  bcc :+
  sub #$20
  asl
  jsr EnemyWalk
  jsr EnemyAutoBump
:

  ; Alternate between two frames
  lda retraces
  and #4
  ldy #OAM_COLOR_2
  jsr DispEnemyWide

  ; Count up a timer before starting to move
  lda ObjectF2,x
  bne :+
    lda O_RAM::ON_SCREEN
    beq :+
      lda ObjectF4,x
      cmp #$20+$30/2
      beq :+
        inc ObjectF4,x
  :

  jmp EnemyPlayerTouchHurt
.endproc

.proc ObjectWaffle
  jsr EnemyFall
  jsr EnemyBumpOnCeiling

  lda #$10
  jsr EnemyWalkOnPlatform
Display:
  lda #$08
  ldy #OAM_COLOR_2
  jsr DispEnemyWide
  jmp EnemyPlayerTouchHurt
.endproc

.proc ObjectOwl
  jsr EnemyFall
  jsr EnemyBumpOnCeiling

  lda ObjectF3,x
  bne FlyingOwl
  lda #$10
  jsr EnemyWalkOnPlatform
Display:
  lda retraces
  and #4
  add #$18
  ldy #OAM_COLOR_2
  jsr DispEnemyWide
  jmp EnemyPlayerTouchHurt

FlyingOwl:
  lda ObjectF2,x
  bne Display
  
  lda #$10
  jsr EnemyWalk
  jsr EnemyAutoBump

  lda retraces
  and #15
  bne :+
    jsr EnemyLookAtPlayer

    ; Fly up
    lda PlayerPYH
    bmi :+
    cmp ObjectPYH,x
    bcs :+
    lda #<(-$040)
    sta ObjectVYL,x
    lda #>(-$040)
    sta ObjectVYH,x
  :

  jmp Display
.endproc

.proc EnemyBounceRandomHeights
  bcc :+
    ; Bounce when reaching the ground, if not stunned
    lda ObjectF2,x
    bne :+
      jsr huge_rand
      ora #$80      
      sta ObjectVYL,x
      lda #255
      sta ObjectVYH,x
  :
  rts
.endproc

; Hover the cannon and control logic relating to when to shoot
.proc ObjectCannonCommon1
  jsr EnemyHover
NoHover:
  ; initialize the timer if object is initializing
  lda ObjectF2,x
  cmp #ENEMY_STATE_INIT
  beq InitTimer

  ; decrease the timer otherwise
  dec ObjectTimer,x
  bne NotFire
  jsr InitTimer

  ; Get speeds for projectiles
  lda ObjectF1,x
  and #1
  tay
  lda HSpeedL,y
  sta 0
  lda HSpeedH,y
  sta 1

  sec ; carry set: fire
  rts

InitTimer:
  jsr huge_rand
  and #63
  add #60
  sta ObjectTimer,x
NotFire:
  clc ; clear carry, don't fire
  rts
HSpeedL:
  .byt <$38, <-$38
HSpeedH:
  .byt >$38, >-$38
.endproc
ObjectCannonCommon1NoHover = ObjectCannonCommon1::NoHover

; Display an indicator when the cannon is about to fire
.proc ObjectCannonCommon2
  lda O_RAM::ON_SCREEN
  beq :+
  lda ObjectTimer,x
  cmp #8*6
  bcs :+
    ldy OamPtr

    lda ObjectTimer,x
    lsr
    lsr
    lsr
    ora #$40
    sta OAM_TILE,y
    lda #OAM_COLOR_1
    sta OAM_ATTR,y
    lda O_RAM::OBJ_DRAWX
    add #4
    sta OAM_XPOS,y
    lda O_RAM::OBJ_DRAWY
    sub #12
    sta OAM_YPOS,y
    tya
    add #4
    sta OamPtr
  :
  rts
.endproc

; Shoots burgers only, ObjectF3 specifies the type of burger
.proc ObjectCannon1
  jsr ObjectCannonCommon1
  bcc NoShoot
    jsr FindFreeObjectY
    bcc NoShoot
      jsr ObjectCopyPosXY

      lda 0
      sta ObjectVXL,y
      lda 1
      sta ObjectVXH,y
      lda #0
      sta ObjectVYL,y
      sta ObjectVYH,y

      lda #25
      sta ObjectF4,y ; replacement timer 
      lda #0
      sta ObjectTimer,y

;      lda #Enemy::BURGER*2
;      sta ObjectF1,y

      lda ObjectF3,x
      sta ObjectF3,y
NoShoot:

  lda #<CannonFrame
  ldy #>CannonFrame
  jsr DispEnemyWideNonsequential

  jmp ObjectCannonCommon2
CannonFrame:
  .byt $0c, $0c, $0d, $0d, OAM_COLOR_2, OAM_COLOR_2|OAM_YFLIP, OAM_COLOR_2, OAM_COLOR_2|OAM_YFLIP
.endproc

; Shoots arbitary objects, ObjectF3 limits how many of the object will be made
.proc ObjectCannon2
  jsr ObjectCannonCommon1
  bcc NoShoot
    ; Get projectile type
    ldy ObjectPXH,x
    lda ColumnBytes,y
    asl
    sta 1

    ; Limit object amount
    ; (A is still object type)
    jsr CountObjectAmount
    iny ; compare against the limit set in cannon's ObjectF3
    tya ; and if it's too high then don't shoot
    cmp ObjectF3,x
    bcs NoShoot
      jsr FindFreeObjectY
      bcc NoShoot
        jsr ObjectCopyPosXY
        jsr ObjectClearY

        lda 2
        sta ObjectVXL,y
        lda 3
        sta ObjectVXH,y
        lda #0
        sta ObjectVYL,y
        sta ObjectVYH,y

        ; Copy object and direction
        lda ObjectF1,x
        and #1
        ora 1
        sta ObjectF1,y
NoShoot:

  lda #<CannonFrame
  ldy #>CannonFrame
  jsr DispEnemyWideNonsequential

  jmp ObjectCannonCommon2
CannonFrame:
  .byt $0e, $0e, $0f, $0f, OAM_COLOR_2, OAM_COLOR_2|OAM_YFLIP, OAM_COLOR_2, OAM_COLOR_2|OAM_YFLIP
.endproc

.proc EnemyExplode
  sta ObjectTimer,x
  lda #$40
  jsr ObjectOffsetXY
  jsr EnemyPosToVel

  lda #SFX::BOOM1
  sta NeedSFX

  lda #0
  sta ObjectF3,x
  sta ObjectF4,x

  lda #Enemy::EXPLOSION*2
  sta ObjectF1,x
  jmp CloneObjectX
.endproc

.proc CarryAboveHead
  ; Position above the player's head
  lda PlayerPXL
  sub #$40
  sta ObjectPXL,x
  lda PlayerPXH
  sbc #0
  sta ObjectPXH,x
  lda PlayerPYL
  sta ObjectPYL,x
  lda PlayerPYH
  sub #1
  sta ObjectPYH,x
  rts
.endproc
