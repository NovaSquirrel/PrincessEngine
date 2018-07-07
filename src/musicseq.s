; Generated using Pently music assembler
; Music from src/musicseq.pently
;.include "../../src/pentlyseq.inc"
;.segment "RODATA"
NUM_SONGS=1
NUM_SOUNDS=4
.exportzp NUM_SONGS, NUM_SOUNDS
pently_sfx_table:  ; 4 entries, 74 bytes
sfxdef PE_kick, PEDAT_kick, 10, 1, 3
sfxdef PE_snare, PEDAT_snare, 10, 1, 3
sfxdef PE_trikick, PEDAT_trikick, 5, 1, 2
sfxdef PE_trisnare, PEDAT_trisnare, 4, 1, 2
; first sound effect is 4
  .addr playerjump_snd
  .byt 0, 10
  .addr enemyhurt_snd
  .byt 0, 10
  .addr youhurt_snd
  .byt 0, 10
  .addr spring_snd
  .byt 0, 20
  .addr boom1_snd ; explosion sounds taken from Thwaite
  .byt 16+0, 15
  .addr boom2_snd
  .byt 48+12, 16
  .addr enemyhurt2_snd
  .byt 0, 10
  .addr money_snd
  .byt 0, 10
  .addr teleport_snd
  .byt 0, 10
  .addr bump_snd
  .byt 0, 5
  .addr tailattack_snd
  .byt 13, 5
  .addr smash_snd
  .byt $2c, 6
  .addr newability_snd
  .byt $20, 8
  .addr itemget_snd
  .byte $30,$07
  .addr unlock_snd
  .byte $1c,$05
  .addr arrowshoot_snd
  .byte $3c,$05
  .addr placeblock_snd
  .byte $20,$03
  .addr player_bump_snd ; player bump sound
  .byte $00,$04

PEDAT_kick:
.byte 12,5,10,15,8,15,6,15,5,15,4,15,3,15,2,15,1,15,1,15
PEDAT_snare:
.byte 12,11,10,5,8,5,6,5,5,5,4,5,3,5,2,5,1,5,1,5
PEDAT_trikick:
.byte 143,31,143,27,143,24,130,21,130,19
PEDAT_trisnare:
.byte 143,37,143,35,130,34,130,33
pently_instruments:  ; 5 entries, 186 bytes
instdef PI_lead, 1, 0, 0, 0, PIDAT_lead, 45
instdef PI_guitar, 2, 0, 0, 0, PIDAT_guitar, 23
instdef PI_second, 2, 0, 0, 0, PIDAT_second, 31
instdef PI_lead_quiet, 1, 0, 0, 0, PIDAT_lead_quiet, 23
instdef PI_chord, 1, 0, 0, 0, PIDAT_chord, 39
PIDAT_lead:
.byte 148,153,153,27,28,28,92,92,92,92,91,91,91,90,90,89,89,89,88,88,88,87,87
.byte 87,86,86,86,85,85,85,84,84,84,83,83,83,82,82,82,81,81,81,80,80,80
PIDAT_guitar:
.byte 159,159,159,159,158,157,157,156,155,155,154,153,153,152,151,150,150,149
.byte 148,148,147,146,146
PIDAT_second:
.byte 158,157,157,156,156,155,155,154,154,153,153,152,152,151,151,150,150,149
.byte 149,148,148,147,147,147,146,146,145,145,144,144,144
PIDAT_lead_quiet:
.byte 154,155,155,27,28,28,92,93,93,93,92,91,90,89,88,87,86,85,84,83,82,81,81
PIDAT_chord:
.byte 88,88,88,87,87,87,87,86,86,86,86,86,85,85,85,85,84,84,84,84,84,83,83,83
.byte 83,82,82,82,82,82,81,81,81,81,80,80,80,80,80
pently_drums:  ; 2 entries, 4 bytes
drumdef DR_kick_28a292fsnare_28229_a, PE_kick, PE_trikick
drumdef DR_kick_28a292fsnare_28229_2, PE_snare, PE_trisnare
pently_patterns:  ; 15 entries, 274 bytes
patdef PP_New_song_pat_1_0_0, PPDAT_New_song_pat_1_0_0
patdef PP_New_song_pat_1_0_1, PPDAT_New_song_pat_1_0_1
patdef PP_New_song_pat_1_0_3, PPDAT_New_song_pat_1_0_3
patdef PP_New_song_pat_1_0_4, PPDAT_New_song_pat_1_0_4
patdef PP_New_song_pat_1_0_5, PPDAT_New_song_pat_1_0_5
patdef PP_New_song_pat_1_0_6, PPDAT_New_song_pat_1_0_6
patdef PP_New_song_pat_1_1_1, PPDAT_New_song_pat_1_1_1
patdef PP_New_song_pat_1_1_2, PPDAT_New_song_pat_1_1_2
patdef PP_New_song_pat_1_1_3, PPDAT_New_song_pat_1_1_3
patdef PP_New_song_pat_1_1_5, PPDAT_New_song_pat_1_1_5
patdef PP_New_song_pat_1_1_6, PPDAT_New_song_pat_1_1_6
patdef PP_New_song_pat_1_2_0, PPDAT_New_song_pat_1_2_0
patdef PP_New_song_pat_1_2_1, PPDAT_New_song_pat_1_2_1
patdef PP_New_song_pat_1_3_0, PPDAT_New_song_pat_1_3_0
patdef PP_New_song_pat_1_3_1, PPDAT_New_song_pat_1_3_1
PPDAT_New_song_pat_1_0_0:
.byte N_C|D_4,N_F|D_4,N_F|D_4,N_D|D_2,N_C|D_4,N_C|D_4,N_D|D_2,N_C|D_8,N_D|D_4
.byte N_E|D_4,N_F|D_8,N_E|D_4,N_G|D_D2,PATEND
PPDAT_New_song_pat_1_0_1:
.byte N_F|D_2,N_F|D_4,N_E|D_2,N_E|D_8,REST|D_8,N_E|D_8,REST|D_8,N_F|D_8
.byte N_D|D_D4,N_E|D_8,REST|D_8,N_D|D_2,N_E|D_4,N_C|D_D2,PATEND
PPDAT_New_song_pat_1_0_3:
.byte N_C|D_4,N_F|D_4,N_F|D_4,N_D|D_2,N_C|D_4,N_C|D_4,N_D|D_2,N_C|D_8,N_D|D_4
.byte N_E|D_4,N_F|D_8,N_E|D_4,N_G|D_D2,PATEND
PPDAT_New_song_pat_1_0_4:
.byte N_F|D_2,N_F|D_4,N_E|D_2,N_E|D_8,REST|D_8,N_E|D_8,REST|D_8,N_F|D_8
.byte N_D|D_D4,N_E|D_8,REST|D_8,N_D|D_2,N_E|D_4,N_C|D_D2,PATEND
PPDAT_New_song_pat_1_0_5:
.byte N_C|D_4,N_F|D_4,N_C|D_4,N_C|D_4,N_F|D_D2,N_C|D_4,N_CH|D_2,N_C|D_4,N_F|D_4
.byte N_CH|D_4,N_C|D_D2,PATEND
PPDAT_New_song_pat_1_0_6:
.byte N_C|D_4,N_F|D_4,N_C|D_4,N_C|D_4,N_F|D_D2,N_C|D_4,N_CH|D_2,N_C|D_4,N_F|D_4
.byte N_CH|D_4,N_C|D_D2,PATEND
PPDAT_New_song_pat_1_1_1:
.byte REST|D_1,N_TIE|D_1,N_TIE|D_1,N_TIE|D_2,N_C|D_8,N_DS|D_8,N_F|D_8,N_GS|D_8
.byte PATEND
PPDAT_New_song_pat_1_1_2:
.byte REST|D_2,N_DH|D_D4,N_B,N_CH,N_G|D_8,N_GS,N_G,N_F|D_4,N_D|D_4,N_C|D_4
.byte N_F|D_4,N_D|D_4,N_F|D_4,N_GS|D_8,N_AS|D_2,N_TIE|D_8,N_E|D_8,N_G|D_8
.byte N_A|D_8,N_CH|D_8,PATEND
PPDAT_New_song_pat_1_1_3:
.byte REST|D_2,N_DH|D_D4,N_B,N_CH,N_G|D_8,N_GS,N_G,N_F|D_4,N_D|D_4,N_C|D_4
.byte N_F|D_4,N_D|D_4,N_F|D_4,N_G|D_8,N_F|D_1,N_TIE|D_8,PATEND
PPDAT_New_song_pat_1_1_5:
.byte N_C|D_4,N_F|D_4,N_C|D_4,N_C|D_4,N_F|D_D2,N_C|D_4,N_C|D_2,N_C|D_4,N_F|D_4
.byte N_CH|D_4,N_C|D_D2,PATEND
PPDAT_New_song_pat_1_1_6:
.byte N_C|D_4,N_F|D_4,N_C|D_4,N_C|D_4,N_F|D_D2,N_C|D_4,N_C|D_2,N_C|D_4,N_F|D_4
.byte N_C|D_4,N_C|D_D2,PATEND
PPDAT_New_song_pat_1_2_0:
.byte N_CS|D_4,N_CSH|D_4,N_GS|D_8,N_AS|D_8,REST|D_8,N_DS|D_4,N_DSH|D_8
.byte N_CSH|D_4,REST|D_8,N_GS|D_D4,N_DS|D_4,N_DSH|D_8,N_AS|D_8,REST|D_8
.byte N_AS|D_8,REST|D_8,N_DS|D_8,N_GS|D_8,N_GS|D_8,N_G|D_8,REST|D_8,N_G|D_8
.byte N_DS|D_8,N_C|D_4,PATEND
PPDAT_New_song_pat_1_2_1:
.byte N_C|D_4,N_CH|D_8,REST|D_8,N_G|D_8,N_CH|D_8,REST|D_8,N_F|D_4,N_CHH|D_8
.byte N_F|D_8,N_FH|D_8,REST|D_8,N_AH,REST,N_AH|D_4,N_AS|D_4,N_FH|D_8,N_CH|D_8
.byte REST|D_8,N_CH|D_8,REST|D_8,N_F|D_8,N_AS|D_8,N_AS|D_8,N_A|D_8,REST|D_8
.byte N_A|D_8,N_F|D_8,N_D|D_4,PATEND
PPDAT_New_song_pat_1_3_0:
.byte DR_kick_28a292fsnare_28229_a|D_2,DR_kick_28a292fsnare_28229_2|D_8
.byte DR_kick_28a292fsnare_28229_a|D_4,DR_kick_28a292fsnare_28229_a|D_D4
.byte DR_kick_28a292fsnare_28229_a|D_4,DR_kick_28a292fsnare_28229_2|D_8
.byte DR_kick_28a292fsnare_28229_a|D_D4,DR_kick_28a292fsnare_28229_a|D_2
.byte DR_kick_28a292fsnare_28229_2|D_8,DR_kick_28a292fsnare_28229_a|D_4
.byte DR_kick_28a292fsnare_28229_a|D_8,DR_kick_28a292fsnare_28229_a|D_8
.byte DR_kick_28a292fsnare_28229_a|D_8,DR_kick_28a292fsnare_28229_a|D_4
.byte DR_kick_28a292fsnare_28229_a|D_8,DR_kick_28a292fsnare_28229_a|D_8
.byte DR_kick_28a292fsnare_28229_a|D_4,PATEND
PPDAT_New_song_pat_1_3_1:
.byte DR_kick_28a292fsnare_28229_a|D_2,DR_kick_28a292fsnare_28229_2|D_8
.byte DR_kick_28a292fsnare_28229_a|D_4,DR_kick_28a292fsnare_28229_a|D_D4
.byte DR_kick_28a292fsnare_28229_a|D_4,DR_kick_28a292fsnare_28229_2|D_8
.byte DR_kick_28a292fsnare_28229_a|D_4,DR_kick_28a292fsnare_28229_a|D_4
.byte DR_kick_28a292fsnare_28229_a|D_D4,DR_kick_28a292fsnare_28229_2|D_8
.byte DR_kick_28a292fsnare_28229_a|D_4,DR_kick_28a292fsnare_28229_a|D_8
.byte DR_kick_28a292fsnare_28229_a|D_8,DR_kick_28a292fsnare_28229_a|D_8
.byte DR_kick_28a292fsnare_28229_a|D_4,DR_kick_28a292fsnare_28229_a|D_8
.byte DR_kick_28a292fsnare_28229_a|D_8,DR_kick_28a292fsnare_28229_a|D_4,PATEND
pently_songs:  ; 1 entry, 139 bytes
songdef PS_New_song, PSDAT_New_song
PSDAT_New_song:
stopPatSq1
stopPatSq2
playPatTri PP_New_song_pat_1_2_0, 23, PI_guitar
stopPatNoise
setTempo 1008
setBeatDuration D_4
waitRows 64
playPatTri PP_New_song_pat_1_2_1, 21, PI_guitar
waitRows 64
segno
playPatSq1 PP_New_song_pat_1_0_0, 31, PI_lead
stopPatSq2
playPatTri PP_New_song_pat_1_2_0, 23, PI_guitar
playPatNoise PP_New_song_pat_1_3_0
waitRows 64
playPatSq1 PP_New_song_pat_1_0_1, 31, PI_lead
playPatSq2 PP_New_song_pat_1_1_1, 30, PI_second
playPatTri PP_New_song_pat_1_2_1, 21, PI_guitar
playPatNoise PP_New_song_pat_1_3_1
waitRows 64
playPatSq1 PP_New_song_pat_1_0_3, 31, PI_lead_quiet
playPatSq2 PP_New_song_pat_1_1_2, 26, PI_second
playPatTri PP_New_song_pat_1_2_0, 23, PI_guitar
playPatNoise PP_New_song_pat_1_3_0
waitRows 64
playPatSq1 PP_New_song_pat_1_0_4, 31, PI_lead_quiet
playPatSq2 PP_New_song_pat_1_1_3, 26, PI_second
playPatTri PP_New_song_pat_1_2_1, 21, PI_guitar
playPatNoise PP_New_song_pat_1_3_1
waitRows 64
playPatSq1 PP_New_song_pat_1_0_5, 19, PI_chord
playPatSq2 PP_New_song_pat_1_1_5, 23, PI_chord
playPatTri PP_New_song_pat_1_2_0, 23, PI_guitar
stopPatNoise
waitRows 64
playPatSq1 PP_New_song_pat_1_0_6, 19, PI_chord
playPatSq2 PP_New_song_pat_1_1_6, 23, PI_chord
playPatTri PP_New_song_pat_1_2_1, 21, PI_guitar
playPatNoise PP_New_song_pat_1_3_1
waitRows 64
dalSegno

; Make music data available to Pently
.export pently_sfx_table,pently_instruments,pently_drums,pently_patterns
.export pently_songs

; Sound effect, instrument, and song names for your program to .importzp
.exportzp pently_resume_mute,PE_kick,PE_snare,PE_trikick,PE_trisnare,PI_lead
.exportzp PI_guitar,PI_second,PI_lead_quiet,PI_chord,PS_New_song
pently_resume_mute = $00

; Total music data size: 677 bytes
; pently_sfx_table: 74 bytes
;   PE_kick: 24 bytes
;   PE_snare: 24 bytes
;   PE_trikick: 14 bytes
;   PE_trisnare: 12 bytes
; pently_instruments: 186 bytes
;   PI_lead: 50 bytes
;   PI_guitar: 28 bytes
;   PI_second: 36 bytes
;   PI_lead_quiet: 28 bytes
;   PI_chord: 44 bytes
; pently_drums: 4 bytes
;   DR_kick_28a292fsnare_28229_a: 2 bytes
;   DR_kick_28a292fsnare_28229_2: 2 bytes
; pently_patterns: 274 bytes
;   PP_New_song_pat_1_0_0: 16 bytes
;   PP_New_song_pat_1_0_1: 17 bytes
;   PP_New_song_pat_1_0_3: 16 bytes
;   PP_New_song_pat_1_0_4: 17 bytes
;   PP_New_song_pat_1_0_5: 14 bytes
;   PP_New_song_pat_1_0_6: 14 bytes
;   PP_New_song_pat_1_1_1: 11 bytes
;   PP_New_song_pat_1_1_2: 23 bytes
;   PP_New_song_pat_1_1_3: 19 bytes
;   PP_New_song_pat_1_1_5: 14 bytes
;   PP_New_song_pat_1_1_6: 14 bytes
;   PP_New_song_pat_1_2_0: 27 bytes
;   PP_New_song_pat_1_2_1: 31 bytes
;   PP_New_song_pat_1_3_0: 20 bytes
;   PP_New_song_pat_1_3_1: 21 bytes
; pently_songs: 139 bytes
;   PS_New_song: 139 bytes
;
; Breakdown by song
;   Shared: 264 bytes
;   Song New_song: 413 bytes

; Period table of length 76 for ntsc: 152 bytes
.pushseg
.code
.export periodTableLo, periodTableHi
periodTableLo:
.byt $f1,$7f,$13,$ad,$4d,$f3,$9d,$4c,$00,$b8,$74,$34,$f8,$bf,$89,$56,$26,$f9
.byt $ce,$a6,$80,$5c,$3a,$1a,$fb,$df,$c4,$ab,$93,$7c,$67,$52,$3f,$2d,$1c,$0c
.byt $fd,$ef,$e1,$d5,$c9,$bd,$b3,$a9,$9f,$96,$8e,$86,$7e,$77,$70,$6a,$64,$5e
.byt $59,$54,$4f,$4b,$46,$42,$3f,$3b,$38,$34,$31,$2f,$2c,$29,$27,$25,$23,$21
.byt $1f,$1d,$1b,$1a
periodTableHi:
.byt 7,7,7,6,6,5,5,5,5,4,4,4,3,3,3,3,3,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,0
.byt 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.byt 0,0
.popseg

; alternating duty/volume and pitch bytes
itemget_snd:
  .byte $4b,$18+12,$4b,$15+12,$4b,$18+12,$4b,$1a+12,$4b,$1c+12,$48,$1c+12,$44,$1c+12
unlock_snd:
  .byte $0f,$0b,$08,$0b,$00,$00,$0f,$0d,$08,$0d
arrowshoot_snd:
  .byte $0f,$02,$0b,$01,$09,$00,$06,$00,$03,$00
placeblock_snd:
  .byte $4f,$00,$00,$00,$4f,$0c

tailattack_snd:
  .dbyt $0f00,$0f02,$0f04,$0c06,$0908,$0609,$030a

smash_snd:
  .byte $0f,$00,$0c,$07,$0b,$0c,$09,$0e,$08,$0f,$05,$0e

newability_snd:
  .dbyt $4f18,$4818,$0f1b,$081b,$0f20,$0820,$0f24,$0824

playerjump_snd:
  .dbyt $4f20, $4f21
  .dbyt $4f22, $4f23
  .dbyt $4f24, $4f25
  .dbyt $4f26, $4f27
  .dbyt $4f28, $4f29

spring_snd:
  .dbyt $4f20, $4f21
  .dbyt $4f20, $4f21
  .dbyt $4f22, $4f23
  .dbyt $4f22, $4f23
  .dbyt $4f24, $4f25
  .dbyt $4f24, $4f25
  .dbyt $4f26, $4f27
  .dbyt $4f26, $4f27
  .dbyt $4f28, $4f29
  .dbyt $4f28, $4f29


enemyhurt_snd:
  .dbyt $4f20, $4f21
  .dbyt $4022, $4023
  .dbyt $4f24, $4f2f
  .dbyt $4f26, $4f2f
  .dbyt $4f28, $4f2f

youhurt_snd:
  .dbyt $4f10, $4f11
  .dbyt $4012, $4013
  .dbyt $4f14, $4f1f
  .dbyt $4f16, $4f1f
  .dbyt $4f18, $4f1f

teleport_snd:
  .dbyt $8f20, $8020
  .dbyt $8f20, $8020
  .dbyt $8f20, $8820
  .dbyt $8620, $8420
  .dbyt $8220, $8120

enemyhurt2_snd:
  .dbyt $4f20, $4f18
  .dbyt $4f10, $4f16
  .dbyt $4f20, $4f14
  .dbyt $4f10, $4f12
  .dbyt $4f20, $4f10

money_snd:
  .dbyt $4f20, $4f20
  .dbyt $4020, $4020
  .dbyt $4f23, $4f23
  .dbyt $4026, $4026
  .dbyt $4f26, $4f27

player_bump_snd:
  .byte $8f,$0f,$8f,$08,$8f,$05,$8f,$00
bump_snd:
  .byt $0f, $24, $0f, $23
  .byt $0f, $22, $0f, $21
  .byt $0f, $20

snare2_snd:
  .byt $8F, $26, $8F, $25
kick2_snd:
  .byt $8F, $1F, $8F, $1B, $8F, $18, $82, $15
hihat_snd:
  .byt $06, $03, $04, $83
snare_snd:
  .byt $0A, 085, $08, $84, $06, $04
  .byt $04, $84, $03, $04, $02, $04, $01, $04
kick_snd:
  .byt $08,$04,$08,$0E,$04,$0E
  .byt $05,$0E,$04,$0E,$03,$0E,$02,$0E,$01,$0E

boom1_snd:
  .byt $8F, $12, $4F, $0F, $8E, $0C
  .byt $0E, $0E, $8D, $0C, $4C, $0A
  .byt $8B, $0B, $0A, $09, $89, $06
  .byt $48, $08, $87, $07, $06, $05
  .byt $84, $06, $42, $04, $81, $03
boom2_snd:
  .byt $0F, $0E, $0E, $0D
  .byt $0D, $0E, $0C, $0E
  .byt $0B, $0E, $0A, $0F
  .byt $09, $0E, $08, $0E
  .byt $07, $0F, $06, $0E
  .byt $05, $0F, $04, $0E
  .byt $03, $0F, $02, $0E
  .byt $01, $0F, $01, $0F
