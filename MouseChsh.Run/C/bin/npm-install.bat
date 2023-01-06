@REM !!!!!!!!npm-install.bat
@REM ********************************************************************************************************************************npm-install.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================npm-install.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------npm-install.bat
::IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\npm.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\npm.bat" install --registry=https://registry.npm.taobao.org %*
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\npm.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\npm.bat" install --registry=http://127.0.0.1:8081/repository/npm/ %*
REM ================================================================================================================================npm-install.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************npm-install.bat****
