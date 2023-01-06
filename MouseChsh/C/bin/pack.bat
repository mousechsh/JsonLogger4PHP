@REM !!!!!!!!pack.bat
@REM ********************************************************************************************************************************pack.bat
@ECHO OFF
REM ================================================================================================================================pack.bat
SETLOCAL
REM --------------------------------------------------------------------------------------------------------------------------------pack.bat
IF "%MouseChshZRL_Zone_Root%"=="" SET MouseChshZRL_Zone_Root=%MouseChshZRL_Root%
REM --------------------------------------------------------------------------------------------------------------------------------pack.bat
IF "%MouseChshZRL_ProgName%"=="" GOTO END
IF "%MouseChshZRL_ProgDir%"=="" GOTO END
IF "%MouseChshZRL_ProgFile%"=="" GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------pack.bat
SET MouseChshZRL_Final_ProgDir=%MouseChshZRL_Zone_Root%\C\PROG\%MouseChshZRL_ProgDir%
SET MouseChshZRL_Final_ProgFile=%MouseChshZRL_Final_ProgDir%\%MouseChshZRL_ProgFile%
IF EXIST "%MouseChshZRL_Final_ProgDir%" GOTO Message
IF EXIST "%MouseChshZRL_Final_ProgDir%.7z" GOTO Message
REM --------------------------------------------------------------------------------------------------------------------------------pack.bat
SET MouseChshZRL_Final_ProgDir=%MouseChshZRL_Temp%\%MouseChshZRL_ProgDir%
IF EXIST "%MouseChshZRL_Final_ProgDir%" GOTO PackNow
ECHO [%MouseChshZRL_Final_ProgDir%] is Missing
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------pack.bat
:PackNow
CALL "7z.bat" a "%MouseChshZRL_Zone_Root%\C\PROG\%MouseChshZRL_ProgDir%.7z" "%MouseChshZRL_Final_ProgDir%"
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------pack.bat
:Message
ECHO [%MouseChshZRL_Final_ProgDir%] or [%MouseChshZRL_Final_ProgDir%.7z] is Ready
REM --------------------------------------------------------------------------------------------------------------------------------pack.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************pack.bat****
