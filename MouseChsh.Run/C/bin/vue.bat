@REM !!!!!!!!vue.bat
@REM ********************************************************************************************************************************vue.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================vue.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------vue.bat
SET PATHEXT=%MouseChshZRL_OS_PathExt%
REM --------------------------------------------------------------------------------------------------------------------------------vue.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\Node.js\node_global\vue.cmd" CALL "%MouseChshZRL_Zone_Root%\C\PROG\Node.js\node_global\vue.cmd" %*
REM ================================================================================================================================vue.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************vue.bat****
