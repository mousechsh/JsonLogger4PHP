@REM !!!!!!!!mysql-start-cluster-mgr.bat
@REM ********************************************************************************************************************************mysql-start-cluster-mgr.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================mysql-start-cluster-mgr.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------mysql-start-cluster-mgr.bat
ECHO Init NDB Manager "%1"
MKDIR %MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\data-cluster-%1
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\ndb_mgmd.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\ndb_mgmd.bat" --defaults-file="%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my0.ini" --ndb-nodeid=%1
REM ================================================================================================================================mysql-start-cluster-mgr.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************mysql-start-cluster-mgr.bat****
