@REM !!!!!!!!mysql-start-router.bat
@REM ********************************************************************************************************************************mysql-start-router.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================mysql-start-router.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------mysql-start-router.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysqlrouter.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysqlrouter.bat" --config="%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\router.conf"
REM ================================================================================================================================mysql-start-router.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************mysql-start-router.bat****
