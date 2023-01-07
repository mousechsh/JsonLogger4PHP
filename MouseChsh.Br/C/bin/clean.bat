@REM !!!!!!!!clean.bat
@REM ********************************************************************************************************************************clean.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================clean.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------clean.bat
@REM ECHO ^>^>^> Cleaning [Firefox]...
@REM IF EXIST "%MouseChshZRL_Root%\C\bin\wait.bat" CALL "%MouseChshZRL_Root%\C\bin\wait.bat" proc firefox.exe
@REM RMDIR "%USERPROFILE%\AppData\Local\Mozilla"
@REM RMDIR "%USERPROFILE%\AppData\Roaming\Mozilla"
@REM RMDIR /S /Q "%USERPROFILE%\AppData\Local\Mozilla"
@REM RMDIR /S /Q "%USERPROFILE%\AppData\Roaming\Mozilla"
REM --------------------------------------------------------------------------------------------------------------------------------clean.bat
ECHO ^>^>^> Cleaning [Electron]...
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\electron-clean.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\electron-clean.bat"
REM ================================================================================================================================clean.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************clean.bat****
