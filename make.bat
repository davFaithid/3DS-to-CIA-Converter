@ECHO OFF
echo What contents do you have?
echo Answer like this: 0167
echo Numbers are the asterik in content*.xxxx.ncch
set /p M=Type here: 
IF %M%==0 goto 0
IF %M%==01 goto 01
IF %M%==012 goto 012
IF %M%==013 goto 013
IF %M%==014 goto 014
IF %M%==015 goto 015
IF %M%==016 goto 016
IF %M%==017 goto 017
IF %M%==02 goto 02
IF %M%==023 goto 023
IF %M%==024 goto 024
IF %M%==025 goto 025
IF %M%==026 goto 026
IF %M%==027 goto 027
IF %M%==03 goto 03
IF %M%==034 goto 034
IF %M%==035 goto 035
IF %M%==036 goto 036
IF %M%==037 goto 037
IF %M%==04 goto 04
IF %M%==045 goto 045
IF %M%==046 goto 046
IF %M%==047 goto 047
IF %M%==05 goto 05
IF %M%==056 goto 056
IF %M%==057 goto 057
IF %M%==06 goto 06
IF %M%==067 goto 067
:0
makerom -f cia -o Output.cia -content content0.game.ncch:0
:01
makerom -f cia -o Output.cia -content content0.game.ncch:0 -content content1.manual.ncch:1
echo Done!
:017
makerom -f cia -o Output.cia -content content0.game.ncch:0 -content content1.manual.ncch:1 -content content7.update_o3ds.ncch:7
pause
exit
:01267
makerom -f cia -o Output.cia -content content0.game.ncch:0 -content content1.manual.ncch:1 -content content2.dlp.ncch:2 -content content6.update_n3ds.ncch:6 -content content7.update_o3ds.ncch:7
echo Done!
pause
