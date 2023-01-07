@REM !!!!!!!!redis-server.bat
@REM ********************************************************************************************************************************redis-server.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================redis-server.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------redis-server.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\io.Redis\redis-server.exe" START "Redis" /D "%MouseChshZRL_Zone_Root%\C\PROG\io.Redis" "%MouseChshZRL_Zone_Root%\C\PROG\io.Redis\redis-server.exe" "%MouseChshZRL_Zone_Root%\C\PROG\io.Redis\redis.conf"
::
REM ================================================================================================================================redis-server.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************redis-server.bat****
