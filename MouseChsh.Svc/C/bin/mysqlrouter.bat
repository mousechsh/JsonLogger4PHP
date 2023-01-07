@REM !!!!!!!!mysqlrouter.bat
@REM ********************************************************************************************************************************mysqlrouter.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================mysqlrouter.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------mysqlrouter.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\bin\mysqlrouter.exe" START "MySQL Router" /D "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL" "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\bin\mysqlrouter.exe" %*
REM ================================================================================================================================mysqlrouter.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************mysqlrouter.bat****
