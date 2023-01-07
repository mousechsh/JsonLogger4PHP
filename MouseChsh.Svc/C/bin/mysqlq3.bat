@REM !!!!!!!!mysqlq3.bat
@REM ********************************************************************************************************************************mysqlq3.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================mysqlq3.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------mysqlq3.bat
SET MouseChshZRL_MySQL_User=root
SET /p MouseChshZRL_MySQL_Password=<%MouseChshZRL_Zone_Root%\C\etc\mysql-root-password.key
REM --------------------------------------------------------------------------------------------------------------------------------mysqlq3.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql.bat" --defaults-file="%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3.ini" -u%MouseChshZRL_MySQL_User% -p%MouseChshZRL_MySQL_Password% %*
REM ================================================================================================================================mysqlq3.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************mysqlq3.bat****
