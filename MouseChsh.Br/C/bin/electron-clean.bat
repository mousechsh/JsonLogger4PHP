@REM !!!!!!!!electron-clean.bat
@REM ********************************************************************************************************************************electron-clean.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================electron-clean.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------electron-clean.bat
SET MouseChshZRL_ProgName=Electron
SET MouseChshZRL_ProgDir=Electron
SET MouseChshZRL_ProgFile=electron.exe
REM --------------------------------------------------------------------------------------------------------------------------------electron-clean.bat
IF EXIST "%MouseChshZRL_Root%\C\bin\wait.bat" CALL "%MouseChshZRL_Root%\C\bin\wait.bat" proc electron.exe
RMDIR /S /Q "%USERPROFILE%\AppData\Local\CEF"
RMDIR /S /Q "%USERPROFILE%\AppData\Roaming\Electron"
RMDIR /S /Q "%USERPROFILE%\AppData\Roaming\MouseChshBrowser"
REM --------------------------------------------------------------------------------------------------------------------------------electron-clean.bat
CALL "PACK"
REM ================================================================================================================================electron-clean.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************electron-clean.bat****
