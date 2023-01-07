@REM !!!!!!!!sv-redis.bat
@REM ********************************************************************************************************************************sv-redis.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================sv-redis.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------sv-redis.bat
IF /I "%1"=="install" GOTO Install
IF /I "%1"=="uninstall" GOTO Uninstall
IF /I "%1"=="start" GOTO Start
IF /I "%1"=="stop" GOTO Stop
ECHO Do nothing
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------sv-redis.bat
:Install
@REM IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\io.Redis\redis-server.exe" CALL "%MouseChshZRL_Zone_Root%\C\PROG\io.Redis\redis-server.exe" --service-install "%MouseChshZRL_Zone_Root%\C\PROG\io.Redis\redis.conf" --service-name Redis --loglevel verbose
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\io.Redis\install_redis.cmd" CALL "%MouseChshZRL_Zone_Root%\C\PROG\io.Redis\install_redis.cmd"
%SYSTEMROOT%\System32\net.exe START Redis
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------sv-redis.bat
:Uninstall
%SYSTEMROOT%\System32\net.exe STOP Redis
@REM IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\io.Redis\redis-server.exe" CALL "%MouseChshZRL_Zone_Root%\C\PROG\io.Redis\redis-server.exe" --service-uninstall "%MouseChshZRL_Zone_Root%\C\PROG\io.Redis\redis.conf" --service-name Redis --loglevel verbose
sc delete redis
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------sv-redis.bat
:Start
%SYSTEMROOT%\System32\net.exe START Redis
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------sv-redis.bat
:Stop
%SYSTEMROOT%\System32\net.exe STOP Redis
GOTO END
REM ================================================================================================================================sv-redis.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************sv-redis.bat****
