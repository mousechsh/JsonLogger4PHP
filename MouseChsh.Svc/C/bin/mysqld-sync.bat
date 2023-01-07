@REM !!!!!!!!mysqld-sync.bat
@REM ********************************************************************************************************************************mysqld-sync.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================mysqld-sync.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-sync.bat
SET MouseChshZRL_Just_Slave=%1
SET MouseChshZRL_MySQL_User=root
SET /p MouseChshZRL_MySQL_Password=<%MouseChshZRL_Zone_Root%\C\etc\mysql-root-password.key
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-sync.bat
GOTO InitSyncNext
:InitSync
ECHO ----------------
ECHO InitSync MySQL "%~1"
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql.bat" --defaults-file="%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my%~1.ini" -u%MouseChshZRL_MySQL_User% -p%MouseChshZRL_MySQL_Password% -e "show master status\G;"
GOTO :EOF
:InitSyncNext
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-sync.bat
CALL :InitSync ""
CALL :InitSync 2
REM ================================================================================================================================mysqld-sync.bat
GOTO SetSyncNext
:SetSync
ECHO ----------------
ECHO SetSync MySQL "%~1" "%~4"@"%~2","%~3"
SETLOCAL
SET /P X=Input Log Filename:
SET /P Y=Input Log Position:
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql.bat" --defaults-file="%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my%~1.ini" -u%MouseChshZRL_MySQL_User% -p%MouseChshZRL_MySQL_Password% -e "change master to master_host='%~2', master_port=%~3, master_user='%~4', master_password='%~5',master_log_file='%X%', master_log_pos=%Y%;"
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql.bat" --defaults-file="%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my%~1.ini" -u%MouseChshZRL_MySQL_User% -p%MouseChshZRL_MySQL_Password% -e "start slave;"
ENDLOCAL
GOTO :EOF
:SetSyncNext
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-sync.bat
IF /I "%MouseChshZRL_Just_Slave%" == "just-slave" GOTO ConfigSlave
CALL :SetSync 2  "127.0.0.1" "3306" "%MouseChshZRL_MySQL_User%" "%MouseChshZRL_MySQL_Password%"
CALL :SetSync "" "127.0.0.1" "3307" "%MouseChshZRL_MySQL_User%" "%MouseChshZRL_MySQL_Password%"
:ConfigSlave
CALL :SetSync 5  "127.0.0.1" "3306" "%MouseChshZRL_MySQL_User%" "%MouseChshZRL_MySQL_Password%"
REM ================================================================================================================================mysqld-sync.bat
ECHO ----------------
GOTO ShowSyncNext
:ShowSync
ECHO ShowSync MySQL "%~1"
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql.bat" --defaults-file="%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my%~1.ini" -u%MouseChshZRL_MySQL_User% -p%MouseChshZRL_MySQL_Password% -e "show slave status\G;"
GOTO :EOF
:ShowSyncNext
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-sync.bat
IF /I "%MouseChshZRL_Just_Slave%" == "just-slave" GOTO RunSlave
CALL :ShowSync ""
CALL :ShowSync 2
:RunSlave
CALL :ShowSync 5
REM ================================================================================================================================mysqld-sync.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************mysqld-sync.bat****
