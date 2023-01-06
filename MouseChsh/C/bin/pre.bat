@REM !!!!!!!!pre.bat
@REM ********************************************************************************************************************************pre.bat
@ECHO OFF
REM ================================================================================================================================pre.bat
SETLOCAL
REM --------------------------------------------------------------------------------------------------------------------------------pre.bat
IF "%MouseChshZRL_Zone_Root%"=="" SET MouseChshZRL_Zone_Root=%MouseChshZRL_Root%
REM --------------------------------------------------------------------------------------------------------------------------------pre.bat
IF "%MouseChshZRL_ProgName%"=="" GOTO END
IF "%MouseChshZRL_ProgDir%"=="" GOTO END
IF "%MouseChshZRL_ProgFile%"=="" GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------pre.bat
SET MouseChshZRL_Final_ProgDir=%MouseChshZRL_Zone_Root%\C\PROG\%MouseChshZRL_ProgDir%
SET MouseChshZRL_Final_ProgFile=%MouseChshZRL_Final_ProgDir%\%MouseChshZRL_ProgFile%
IF EXIST "%MouseChshZRL_Final_ProgDir%" GOTO RunNow
IF EXIST "%MouseChshZRL_Final_ProgDir%.7z" GOTO RunTemp
ECHO Missing [%MouseChshZRL_ProgName%]
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------pre.bat
:RunTemp
SET MouseChshZRL_Final_ProgDir=%MouseChshZRL_Temp%\%MouseChshZRL_ProgDir%
SET MouseChshZRL_Final_ProgFile=%MouseChshZRL_Final_ProgDir%\%MouseChshZRL_ProgFile%
IF EXIST "%MouseChshZRL_Final_ProgDir%" GOTO RunNow
CALL "7z.bat" x "%MouseChshZRL_Zone_Root%\C\PROG\%MouseChshZRL_ProgDir%.7z" -o"%MouseChshZRL_Temp%\" -aoa
IF EXIST "%MouseChshZRL_Final_ProgDir%" GOTO RunNow
ECHO Error [%MouseChshZRL_ProgName%]
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------pre.bat
:RunNow
ECHO Prepare OK [%MouseChshZRL_ProgName%]
REM --------------------------------------------------------------------------------------------------------------------------------pre.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************pre.bat****
