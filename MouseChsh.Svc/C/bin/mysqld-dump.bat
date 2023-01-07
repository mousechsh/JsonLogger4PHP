@REM !!!!!!!!mysqld-dump.bat
@REM ********************************************************************************************************************************mysqld-dump.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================mysqld-dump.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-dump.bat
SET MouseChshZRL_Just_Cluster=%1
IF EXIST "%MouseChshZRL_Root%\C\bin\wait.bat" CALL "%MouseChshZRL_Root%\C\bin\wait.bat" no-proc mysqld
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-dump.bat
SET MouseChshZRL_MySQL_User=root
SET /p MouseChshZRL_MySQL_Password=<%MouseChshZRL_Zone_Root%\C\etc\mysql-root-password.key
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-dump.bat
GOTO DumpNext
:Dump
ECHO Dump "%1"
IF NOT EXIST "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\data%1" GOTO :EOF
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\data%1.sql" CALL MOVE /Y "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\data%1.sql" "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\data%1.%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%.old.sql"
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\bin\mysqldump.exe" CALL "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\bin\mysqldump.exe" --defaults-file="%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my%1.ini" -u%MouseChshZRL_MySQL_User% -p%MouseChshZRL_MySQL_Password% --all-databases > "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\data%1.sql"
GOTO :EOF
:DumpNext
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-dump.bat
CALL :Dump
IF /I "%MouseChshZRL_Just_Cluster%" == "just-cluster" GOTO END
CALL :Dump 2
CALL :Dump 3
CALL :Dump 4
CALL :Dump 5
REM ================================================================================================================================mysqld-dump.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************mysqld-dump.bat****
