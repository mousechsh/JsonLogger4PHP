@REM !!!!!!!!zone.bat
@REM ********************************************************************************************************************************zone.bat
@ECHO OFF
REM ================================================================================================================================zone.bat
IF "%1"=="" GOTO List
IF /I "%1"=="create" GOTO Create
IF /I "%1"=="on" GOTO Active
IF /I "%1"=="run" GOTO Attach
IF /I "%1"=="off" GOTO Disactive
IF /I "%1"=="repath" GOTO Repath
GOTO List
REM --------------------------------------------------------------------------------------------------------------------------------zone.bat
:Create
IF "%2"=="" GOTO List
IF EXIST "%MouseChshZRL_Root%.%2" GOTO END
MKDIR "%MouseChshZRL_Root%.%2"
MKDIR "%MouseChshZRL_Root%.%2\C"
MKDIR "%MouseChshZRL_Root%.%2\C\bin"
MKDIR "%MouseChshZRL_Root%.%2\C\etc"
MKDIR "%MouseChshZRL_Root%.%2\C\lib"
MKDIR "%MouseChshZRL_Root%.%2\C\PROG"
MKDIR "%MouseChshZRL_Root%.%2\C\sbin"
MKDIR "%MouseChshZRL_Root%.%2\C\USER\MouseChsh"
MKDIR "%MouseChshZRL_Root%.%2\C\var"
GOTO Active
REM --------------------------------------------------------------------------------------------------------------------------------zone.bat
:Active
IF "%2"=="" GOTO List
ECHO REM [This file is create by zone.bat]>"%MouseChshZRL_Root%\C\etc\MouseChshZone-%2.bat"
ECHO ECHO Run ZONE [%2] config...>>"%MouseChshZRL_Root%\C\etc\MouseChshZone-%2.bat"
ECHO ECHO SET PATH=%%%%PATH%%%%;%%%%MouseChshZRL_Root%%%%.%2\C\bin^>"%%MouseChshZRL_Root%%\C\dev\path-%2.bat">>"%MouseChshZRL_Root%\C\etc\MouseChshZone-%2.bat"
ECHO ECHO IF "%%%%MouseChshZRL_UAC%%%%"=="1" SET PATH=%%%%PATH%%%%;%%%%MouseChshZRL_Root%%%%.%2\C\sbin^>^>"%%MouseChshZRL_Root%%\C\dev\path-%2.bat">>"%MouseChshZRL_Root%\C\etc\MouseChshZone-%2.bat"
ECHO FOR /R "%%MouseChshZRL_Root%%.%2\C\etc" %%%%i IN (*.bat) DO (>>"%MouseChshZRL_Root%\C\etc\MouseChshZone-%2.bat"
ECHO 	CALL %%%%i>>"%MouseChshZRL_Root%\C\etc\MouseChshZone-%2.bat"
ECHO )>>"%MouseChshZRL_Root%\C\etc\MouseChshZone-%2.bat"
GOTO Attach
REM --------------------------------------------------------------------------------------------------------------------------------zone.bat
:Attach
SETLOCAL
IF EXIST "%MouseChshZRL_Root%\C\etc\MouseChshZone-%2.bat" CALL "%MouseChshZRL_Root%\C\etc\MouseChshZone-%2.bat"
COPY /Y "%MouseChshZRL_Root%\C\SYS\MouseChsh-ZoneRoot.txt" "%MouseChshZRL_Root%.%2\MouseChsh.bat"
ENDLOCAL
GOTO Repath
REM --------------------------------------------------------------------------------------------------------------------------------zone.bat
:Disactive
SETLOCAL
DEL /Q "%MouseChshZRL_Root%\C\dev\path-%2.bat"
DEL /Q "%MouseChshZRL_Root%\C\etc\MouseChshZone-%2.bat"
ENDLOCAL
GOTO Repath
REM --------------------------------------------------------------------------------------------------------------------------------zone.bat
:Repath
IF EXIST "%MouseChshZRL_Root%\C\SYS\MouseChshPath.bat" CALL "%MouseChshZRL_Root%\C\SYS\MouseChshPath.bat"
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------zone.bat
:List
ECHO ZONE CREATE [Name]
ECHO Create new zone folder
ECHO ZONE ON [Name]
ECHO Create zone folder config
ECHO ZONE OFF [Name]
ECHO Remove zone folder config
ECHO ZONE RUN [Name]
ECHO Attach zone into config
ECHO ZONE REPATH
ECHO Renew PATH
GOTO END
REM ================================================================================================================================zone.bat
:END
REM ********************************************************************************************************************************zone.bat****
