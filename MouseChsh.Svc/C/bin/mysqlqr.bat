@REM !!!!!!!!mysqlqr.bat
@REM ********************************************************************************************************************************mysqlqr.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================mysqlqr.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------mysqlqr.bat
SET MouseChshZRL_MySQL_User=root
SET /p MouseChshZRL_MySQL_Password=<%MouseChshZRL_Zone_Root%\C\etc\mysql-root-password.key
REM --------------------------------------------------------------------------------------------------------------------------------mysqlqr.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql.bat" -h127.0.0.1 -P7000 --protocol=TCP -u%MouseChshZRL_MySQL_User% -p%MouseChshZRL_MySQL_Password% %*
REM ================================================================================================================================mysqlqr.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************mysqlqr.bat****
