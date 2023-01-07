@REM !!!!!!!!mysql-start-all.bat
@REM ********************************************************************************************************************************mysql-start-all.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================mysql-start-all.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------mysql-start-all.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-cluster-mgr.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-cluster-mgr.bat" 1
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-cluster-mgr.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-cluster-mgr.bat" 2
REM --------------------------------------------------------------------------------------------------------------------------------mysql-start-all.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-cluster-data.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-cluster-data.bat" 1
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-cluster-data.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-cluster-data.bat" 2
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-cluster-data.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-cluster-data.bat" 3
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-cluster-data.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-cluster-data.bat" 4
REM --------------------------------------------------------------------------------------------------------------------------------mysql-start-all.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql-start.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql-start.bat"
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql-start.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql-start.bat"  2
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql-start.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql-start.bat"  3
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql-start.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql-start.bat"  4
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql-start.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql-start.bat"  5
REM --------------------------------------------------------------------------------------------------------------------------------mysql-start-all.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-router.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-router.bat"
REM ================================================================================================================================mysql-start-all.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************mysql-start-all.bat****
