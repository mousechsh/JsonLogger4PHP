@REM !!!!!!!!node.bat
@REM ********************************************************************************************************************************node.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================node.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------node.bat
@REM ECHO registry=https://registry.npm.taobao.org/> "%MouseChshZRL_Zone_Root%\C\PROG\Node.js\etc\npmrc"
ECHO registry=http://127.0.0.1:8081/repository/npm/> "%MouseChshZRL_Zone_Root%\C\PROG\Node.js\etc\npmrc"
ECHO cache=%MouseChshZRL_Zone_Root%\C\PROG\Node.js\node_cache>> "%MouseChshZRL_Zone_Root%\C\PROG\Node.js\etc\npmrc"
ECHO prefix=%MouseChshZRL_Zone_Root%\C\PROG\Node.js\node_global>> "%MouseChshZRL_Zone_Root%\C\PROG\Node.js\etc\npmrc"
REM --------------------------------------------------------------------------------------------------------------------------------node.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\Node.js\node.exe" CALL "%MouseChshZRL_Zone_Root%\C\PROG\Node.js\node.exe" %*
REM ================================================================================================================================node.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************node.bat****
