@REM !!!!!!!!cli.bat
@REM ********************************************************************************************************************************cli.bat
@ECHO OFF
REM ================================================================================================================================cli.bat
SETLOCAL
REM --------------------------------------------------------------------------------------------------------------------------------cli.bat
IF "%MouseChshZRL_Zone_Root%"=="" SET MouseChshZRL_Zone_Root=%MouseChshZRL_Root%
REM --------------------------------------------------------------------------------------------------------------------------------cli.bat
IF "%MouseChshZRL_ProgName%"=="" GOTO END
IF "%MouseChshZRL_ProgDir%"=="" GOTO END
IF "%MouseChshZRL_ProgFile%"=="" GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------cli.bat
SET MouseChshZRL_Final_ProgDir=%MouseChshZRL_Zone_Root%\C\PROG\%MouseChshZRL_ProgDir%
SET MouseChshZRL_Final_ProgFile=%MouseChshZRL_Final_ProgDir%\%MouseChshZRL_ProgFile%
IF EXIST "%MouseChshZRL_Final_ProgDir%" GOTO RunNow
IF EXIST "%MouseChshZRL_Final_ProgDir%.7z" GOTO RunTemp
ECHO Missing [%MouseChshZRL_ProgName%]
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------cli.bat
:RunTemp
SET MouseChshZRL_Final_ProgDir=%MouseChshZRL_Temp%\%MouseChshZRL_ProgDir%
SET MouseChshZRL_Final_ProgFile=%MouseChshZRL_Final_ProgDir%\%MouseChshZRL_ProgFile%
IF EXIST "%MouseChshZRL_Final_ProgDir%" GOTO RunNow
CALL "7z.bat" x "%MouseChshZRL_Zone_Root%\C\PROG\%MouseChshZRL_ProgDir%.7z" -o"%MouseChshZRL_Temp%\" -aoa
IF EXIST "%MouseChshZRL_Final_ProgDir%" GOTO RunNow
ECHO Error [%MouseChshZRL_ProgName%]
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------cli.bat
:RunNow
ECHO Running [%MouseChshZRL_ProgName%]
IF EXIST "%MouseChshZRL_Final_ProgFile%" CALL "%MouseChshZRL_Final_ProgFile%" %*
ECHO Already running [%MouseChshZRL_ProgName%]
REM --------------------------------------------------------------------------------------------------------------------------------cli.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************cli.bat****
