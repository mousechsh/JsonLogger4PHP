@REM !!!!!!!!mysql-start-3.bat
@REM ********************************************************************************************************************************mysql-start-3.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================mysql-start-3.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------mysql-start-3.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql-start.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql-start.bat"
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql-start.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql-start.bat"  2
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql-start.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql-start.bat"  5
REM --------------------------------------------------------------------------------------------------------------------------------mysql-start-3.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-router.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-router.bat"
REM ================================================================================================================================mysql-start-3.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************mysql-start-3.bat****
