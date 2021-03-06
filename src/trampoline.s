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

; Run inventory code from the main loop bank
.proc FarInventoryCode
  stx TempX
  pha
  lda #INVENTORY_BANK
  jsr _SetPRG
  pla

  tay
  ldx #255
  jsr CallInventoryCodeDirect

  lda #MAINLOOP_BANK
  jsr _SetPRG
  ldx TempX
  rts
.endproc

; Plays a sound, handles bank switching
; input: A (sound number)
.proc PlaySoundAuto
  pha
  lda #SOUND_BANK
  jsr _SetPRG
  pla
  jsr pently_start_sound
  jmp SetPRG_Restore
.endproc

; Allows a projectile to collect a collectible metatile
.proc DoCollectibleFar
  pha
  lda #MAINLOOP_BANK
  jsr _SetPRG
  pla
  inc CollectedByProjectile
  jsr DoCollectible
  dec CollectedByProjectile
  lda #OBJECT_BANK
  jmp _SetPRG
.endproc

.proc ExitToLevelSelectFar
; different from JumpToLevelSelect in that it doesn't change the level select number
  lda #VWF_BANK
  jsr SetPRG
  jmp ShowLevelSelect
.endproc

; Gets block information
.proc GetBlockInfoFar
  lda #MAINLOOP_BANK
  jsr _SetPRG
  lda MetatileUL,x
  sta 0
  lda MetatileLL,x
  sta 1
  lda MetatileUR,x
  sta 2
  lda MetatileLR,x
  sta 3
  lda MetatilePalettes,x
  sta 4
  lda #SANDBOX_BANK
  jmp _SetPRG
.endproc

; Allows an object bank routine to break bricks
.proc DoBreakBricksFar
  pha
  lda #MAINLOOP_BANK
  jsr _SetPRG
  pla
  jsr DoBreakBricks
  lda #OBJECT_BANK
  jmp _SetPRG
.endproc

; Allows any bank to change blocks
.proc ChangeBlockFar
  pha
  lda #MAINLOOP_BANK
  jsr _SetPRG
  pla
  jsr ChangeBlock
  jmp SetPRG_Restore
.endproc

; Allows any bank to change blocks on a delay
.proc DelayChangeBlockFar
  pha
  lda #MAINLOOP_BANK
  jsr _SetPRG
  pla
  jsr DelayChangeBlock
  jmp SetPRG_Restore
.endproc

; Allows any bank to silence sound
.proc StopSoundFar
  lda #SOUND_BANK
  jsr _SetPRG
  jsr pently_init
  ;inc pently_music_playing ; I forget why I inc this
  ; inc it yourself if you need it

  jmp SetPRG_Restore
.endproc

.proc SoundTestStopMusic
  lda #SOUND_BANK
  jsr _SetPRG
  jsr pently_init

  jmp SetPRG_Restore
.endproc

; Plays music, handles bank switching
; input: A (music number)
.proc SoundTestStartPently
  pha
  lda #SOUND_BANK
  jsr _SetPRG
  pla
  jsr pently_start_music
  jmp SetPRG_Restore
.endproc
PlayMusicAuto = SoundTestStartPently

.proc SoundTestUpdatePently
  lda #SOUND_BANK
  jsr _SetPRG
  jsr pently_update
  jmp SetPRG_Restore
.endproc

.proc DecompressTextFar
  pha
  lda #DIALOG_BANK
  jsr _SetPRG
  pla

  jsr DecompressText
  pha
  jsr SetPRG_Restore
  pla
  rts
.endproc

.proc LoadDialogGraphic
  jsr DoGraphicUpload
  lda #DIALOG_BANK
  jmp SetPRG
.endproc

; For calling code in Object Bank 2 from Object Bank 1.
; input: A (<Routine), Y (>Routine)
; locals: 0, 1
.proc InObjectBank2
  sta 0             ; Store the address pointer
  sty 1

  lda #OBJECT_BANK2 ; Swap to bank 2
  jsr _SetPRG

  jsr Call          ; Call the routine

  lda #OBJECT_BANK  ; Swap bank to bank 1
  jmp _SetPRG

Call:
  jmp (0)
.endproc

.proc StartCredits
  pha
  lda #CREDITS_BANK
  jsr SetPRG
  jsr ShowCredits
  pla
  jmp SetPRG
.endproc

.proc AbilityHelpTrampoline
  lda #ABILITY_HELP_BANK
  jsr SetPRG
  jsr ShowAbilityHelp
  lda #INVENTORY_BANK
  jmp SetPRG
.endproc

.proc ShowControlsTrampoline
  lda #ABILITY_HELP_BANK
  jsr SetPRG
  jsr ShowControls
  lda #OPTIONS_BANK
  jsr SetPRG
  jmp ShowMainMenu
.endproc
