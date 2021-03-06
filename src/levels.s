MasterLevelListL:
  .byt <sample, <emptylevel
MasterLevelListH:
  .byt >sample, >emptylevel

.proc LevelBanks
; Array of what bank each level belongs to. Can also put other data in its upper bits.
B1 = LEVELS_BANK1
  .byt B1,     B1
.endproc

.enum LevelId
  Sample
  Empty
.endenum

.pushseg
.segment "PRGe"
.proc PreLevelText
  .byt 255
.endproc

.proc PreLevelHasCutscene
  .byt 255
.endproc
.popseg

.include "../levels/sample.s"
.include "../levels/emptylevel.s"

;Level data:
;TTTTTTTT XXXXYYYY [SSSSSSSS]
;T - Object type (0-255)
;Y - Y position absolute (0-15)
;X - X position relative (0-15)
;S - Settings byte, if needed
;
;Level commands
;1111TTTT [SSSSSSSS]
;T - 0 finished with the level
;    1 set X to S
;    2 write 1 column byte at current column
;    3 write 2 column bytes starting at this column
;    4 write 3 column bytes starting at this column
;    5 current X -= 16
;    6 current X += 16

