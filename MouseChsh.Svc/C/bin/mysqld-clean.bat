@REM !!!!!!!!mysqld-clean.bat
@REM ********************************************************************************************************************************mysqld-clean.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================mysqld-clean.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-clean.bat
IF NOT EXIST "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\data" GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-clean.bat
SET MouseChshZRL_MySQL_Waiting=10
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-clean.bat
SET MouseChshZRL_MySQL_User=root
SET /p MouseChshZRL_MySQL_Password=<%MouseChshZRL_Zone_Root%\C\etc\mysql-root-password.key
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-clean.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-all.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-all.bat"
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-clean.bat
IF EXIST "%MouseChshZRL_Root%\C\bin\wait.bat" CALL "%MouseChshZRL_Root%\C\bin\wait.bat" time %MouseChshZRL_MySQL_Waiting%
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-clean.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysqld-dump.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysqld-dump.bat" %1
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-clean.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql-stop.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql-stop.bat"
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-clean.bat
IF EXIST "%MouseChshZRL_Root%\C\bin\wait.bat" CALL "%MouseChshZRL_Root%\C\bin\wait.bat" proc ndb_mgmd
IF EXIST "%MouseChshZRL_Root%\C\bin\wait.bat" CALL "%MouseChshZRL_Root%\C\bin\wait.bat" proc ndbd
IF EXIST "%MouseChshZRL_Root%\C\bin\wait.bat" CALL "%MouseChshZRL_Root%\C\bin\wait.bat" proc mysqld
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-clean.bat
@REM GOTO CleanNext
@REM :Clean
@REM ECHO Clean "%1"
@REM IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\data%1.sql" CALL MOVE /Y "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\data%1.sql" "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\data%1.%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%.old.sql"
@REM IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysqld.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysqld.bat" --defaults-file="%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my%1.ini"
@REM IF EXIST "%MouseChshZRL_Root%\C\bin\wait.bat" CALL "%MouseChshZRL_Root%\C\bin\wait.bat" no-proc mysqld
@REM IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\bin\mysqldump.exe" CALL "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\bin\mysqldump.exe" --defaults-file="%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my%1.ini" -u%MouseChshZRL_MySQL_User% -p%MouseChshZRL_MySQL_Password% --all-databases > "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\data%1.sql"
@REM IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysqladmin.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysqladmin.bat" --defaults-file="%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my%1.ini" shutdown -u%MouseChshZRL_MySQL_User% -p%MouseChshZRL_MySQL_Password%
@REM IF EXIST "%MouseChshZRL_Root%\C\bin\wait.bat" CALL "%MouseChshZRL_Root%\C\bin\wait.bat" proc mysqld
@REM RMDIR /S /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\data%1"
@REM DEL /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my%1.ini"
@REM GOTO :EOF
@REM :CleanNext
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-clean.bat
@REM CALL :Clean
@REM CALL :Clean 2
@REM CALL :Clean 3
@REM CALL :Clean 4
@REM CALL :Clean 5
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-clean.bat
RMDIR /S /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\data-cluster-1"
RMDIR /S /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\data-cluster-2"
DEL /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
DEL /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my00.ini"
DEL /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my0.ini"
DEL /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\router.conf"
DEL /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\ndb_*"
DEL /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\mysqlrouter.log"
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-clean.bat
RMDIR /S /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\data-node-1"
DEL /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my1d.ini"
RMDIR /S /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\data-node-2"
DEL /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2d.ini"
RMDIR /S /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\data-node-3"
DEL /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3d.ini"
RMDIR /S /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\data-node-4"
DEL /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4d.ini"
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-clean.bat
RMDIR /S /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\data"
DEL /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"
RMDIR /S /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\data2"
DEL /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
RMDIR /S /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\data3"
DEL /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3.ini"
RMDIR /S /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\data4"
DEL /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4.ini"
RMDIR /S /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\data5"
DEL /Q "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my5.ini"
REM ================================================================================================================================mysqld-clean.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************mysqld-clean.bat****
