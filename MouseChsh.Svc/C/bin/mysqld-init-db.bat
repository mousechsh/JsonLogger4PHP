@REM !!!!!!!!mysqld-init-db.bat
@REM ********************************************************************************************************************************mysqld-init-db.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================mysqld-init-db.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-init-db.bat
ECHO Init MySQL "%~1" %2
SET MouseChshZRL_Skip_Waiting=%2
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-init-db.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\data%~1" GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-init-db.bat
:: 'mysql_native_password','*23AE809DDACAF96AF0FD78ED04B6A265E05AA257'
SET MouseChshZRL_MySQL_User=root
SET /p MouseChshZRL_MySQL_Password=<%MouseChshZRL_Zone_Root%\C\etc\mysql-root-password.key
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-init-db.bat
SET MouseChshZRL_MySQL_Waiting=10
REM ================================================================================================================================mysqld-init-db.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysqld.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysqld.bat" --defaults-file="%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my%~1.ini" --initialize-insecure
::FOR /R "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\data" %%i IN (*.err) DO (
::	TYPE %%i
::)
IF "%MouseChshZRL_Skip_Waiting%" == "skip-waiting" (
	PAUSE
) ELSE (
	IF EXIST "%MouseChshZRL_Root%\C\bin\wait.bat" CALL "%MouseChshZRL_Root%\C\bin\wait.bat" proc mysqld
)

IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysqld.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysqld.bat" --defaults-file="%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my%~1.ini"
IF "%MouseChshZRL_Skip_Waiting%" == "skip-waiting" (
	PAUSE
) ELSE (
	IF EXIST "%MouseChshZRL_Root%\C\bin\wait.bat" CALL "%MouseChshZRL_Root%\C\bin\wait.bat" no-proc mysqld
	IF EXIST "%MouseChshZRL_Root%\C\bin\wait.bat" CALL "%MouseChshZRL_Root%\C\bin\wait.bat" time %MouseChshZRL_MySQL_Waiting%
)

IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysqladmin.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysqladmin.bat" --defaults-file="%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my%~1.ini" -u%MouseChshZRL_MySQL_User% password %MouseChshZRL_MySQL_Password%
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql.bat" --defaults-file="%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my%~1.ini" -u%MouseChshZRL_MySQL_User% -p%MouseChshZRL_MySQL_Password% < "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\data%~1.sql"

IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysqladmin.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysqladmin.bat" --defaults-file="%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my%~1.ini" shutdown -u%MouseChshZRL_MySQL_User% -p%MouseChshZRL_MySQL_Password%
IF "%MouseChshZRL_Skip_Waiting%" == "skip-waiting" (
	PAUSE
) ELSE (
	IF EXIST "%MouseChshZRL_Root%\C\bin\wait.bat" CALL "%MouseChshZRL_Root%\C\bin\wait.bat" proc mysqld
)
REM ================================================================================================================================mysqld-init-db.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************mysqld-init-db.bat****
