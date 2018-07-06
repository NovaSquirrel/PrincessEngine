@echo off
ca65 src/princess.s -o src/princess.o -l princess.lst
ld65 -C src/princess.x src/princess.o -o princess.nes -m map.txt
pause
