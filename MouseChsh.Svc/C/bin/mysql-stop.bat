@REM !!!!!!!!mysql-stop.bat
@REM ********************************************************************************************************************************mysql-stop.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================mysql-stop.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------mysql-stop.bat
SET MouseChshZRL_MySQL_User=root
SET /p MouseChshZRL_MySQL_Password=<%MouseChshZRL_Zone_Root%\C\etc\mysql-root-password.key
REM --------------------------------------------------------------------------------------------------------------------------------mysql-stop.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\ndb_mgmq.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\ndb_mgmq.bat" -e shutdown
REM --------------------------------------------------------------------------------------------------------------------------------mysql-stop.bat
GOTO DbStopNext
:DbStop
ECHO DbStop "%1"
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysqladmin.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysqladmin.bat" --defaults-file="%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my%1.ini" shutdown -u%MouseChshZRL_MySQL_User% -p%MouseChshZRL_MySQL_Password%
GOTO :EOF
:DbStopNext
REM --------------------------------------------------------------------------------------------------------------------------------mysql-stop.bat
CALL :DbStop
CALL :DbStop 2
CALL :DbStop 3
CALL :DbStop 4
CALL :DbStop 5
REM --------------------------------------------------------------------------------------------------------------------------------mysql-stop.bat
taskkill /IM mysqlrouter.exe
REM ================================================================================================================================mysql-stop.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************mysql-stop.bat****
