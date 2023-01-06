@REM !!!!!!!!webpack-dev-server.bat
@REM ********************************************************************************************************************************webpack-dev-server.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================webpack-dev-server.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------webpack-dev-server.bat
SET PATHEXT=%MouseChshZRL_OS_PathExt%
REM --------------------------------------------------------------------------------------------------------------------------------webpack-dev-server.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\Node.js\node_global\webpack-dev-server.cmd" CALL "%MouseChshZRL_Zone_Root%\C\PROG\Node.js\node_global\webpack-dev-server.cmd" %*
REM ================================================================================================================================webpack-dev-server.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************webpack-dev-server.bat****
