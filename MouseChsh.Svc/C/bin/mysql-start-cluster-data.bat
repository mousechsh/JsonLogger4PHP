@REM !!!!!!!!mysql-start-cluster-data.bat
@REM ********************************************************************************************************************************mysql-start-cluster-data.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================mysql-start-cluster-data.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------mysql-start-cluster-data.bat
ECHO Init NDB Data Node "%1"
MKDIR %MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\data-node-%1
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\ndbd.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\ndbd.bat" --defaults-file="%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my%1d.ini"
REM ================================================================================================================================mysql-start-cluster-data.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************mysql-start-cluster-data.bat****
