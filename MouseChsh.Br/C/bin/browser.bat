@REM !!!!!!!!browser.bat
@REM ********************************************************************************************************************************browser.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================browser.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------browser.bat
IF /I "%1"=="-" GOTO Firefox
GOTO Electron
REM --------------------------------------------------------------------------------------------------------------------------------browser.bat
:Firefox
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\firefox.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\firefox.bat"
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------browser.bat
:Electron
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\electron.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\electron.bat" "%MouseChshZRL_Root%\C\Project\src\com\mousechsh\browser" %1
REM ================================================================================================================================browser.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************browser.bat****
