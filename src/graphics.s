; palettes:
; ssssnnnn
; ||||++++ number of 3 entry palettes
; ++++---- palette to start writing to, * 4

SPPlayer:   ChrFile "../chr/spplayer.pb53",   1024, $1000 
SPCommon:   ChrFile "../chr/spcommon.pb53",   1024, $1400
BGCommon:   ChrFile "../chr/bgcommon.pb53",   1024, $0000
BGGrassy:   ChrFile "../chr/bggrassy.pb53",   768,  $0500
BGCutscene: ChrFile "../chr/bgcutscene.pb53", 512,  $0000
SPWalker:   ChrFile "../chr/spwalker.pb53",   512,  $1800
SPSnowman:  ChrFile "../chr/spsnowman.pb53",  512,  $1800
TitleCHR:   ChrFile "../tools/title/title.pb53",    4096, $0000
TitleNAM:   ChrFile "../tools/title/titlenam.pb53", 1024, $2000
InventoryCHR: ChrFile "../chr/inventory.pb53", 512, $0000
NPCCHR:     ChrFile "../chr/spnpc.pb53",      2048, $1000
LevelSelCHR: ChrFile "../chr/levelselect.pb53",  1024,  $0000
CHRFont:    ChrFile "../chr/font.pb53",       1536, $0200

PalGrassy:  .byt $03
            .byt $1a, $2a, $37
            .byt $00, $10, $30
            .byt $17, $26, $37
            .byt $13, $23, $33
PalTitle:   .byt $02
            .byt $0f, $2a, $12
            .byt $0f, $2a, $26
            .byt $12, $22, $32
PalEnemy1:  .byt $61
            .byt $06, $16, $36
            .byt $16, $27, $37

PalLevelSel: .byt $07
             .byt $30, $30, $30
             .byt $15, $25, $35
             .byt $14, $24, $34
             .byt $1c, $2c, $3c
             .byt $12, $2a, $30
             .byt $15, $25, $35
             .byt $1a, $2a, $3a
             .byt $00, $10, $30

AbilityIcons: .incbin "chr/sppowericons.chr"
AbilityGfx:   .incbin "chr/sppowergfx.chr"
AbilityOffsets:
  .byt 0, $00, $01, $05, $09, $11, $17, $1b, $1e, $22, $28, $30
AbilityLengths:
  .byt 0,   1,   4,   4,   8,   6,   4,   3,   4,   6,   8,   4

