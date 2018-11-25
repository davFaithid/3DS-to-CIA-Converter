@echo off
if "%~x1"==".cxi" ( goto existing )
makerom -f ncch -target t -desc ecapp:3 -rsf dummy.rsf -exefslogo -icon exefs/icon.bin -logo exefs/logo.bin -romfs romfs.bin -exheader extheader.bin -code exefs\code.bin -banner exefs\banner.bin -plainrgn plain.bin -alignwr -o test.cxi
exheaderfix -rom test.cxi -exheader extheader.bin -sd
makerom -f cia -target t -content test.cxi:0:0 -o Output.cia
del test.cxi
pause
exit
:existing
exheaderfix -rom "%~1" -exheader extheader.bin -sd
xcopy /q "%~1" test.cxi
makerom -f cia -target t -content test.cxi:0:0 -o Output.cia
del test.cxi
pause
exit