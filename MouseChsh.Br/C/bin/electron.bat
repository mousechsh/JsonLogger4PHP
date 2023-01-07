@REM !!!!!!!!electron.bat
@REM ********************************************************************************************************************************electron.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================electron.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------electron.bat
SET MouseChshZRL_ProgName=Electron
SET MouseChshZRL_ProgDir=Electron
SET MouseChshZRL_ProgFile=electron.exe
REM --------------------------------------------------------------------------------------------------------------------------------electron.bat
CALL "RUN" %*
REM --------------------------------------------------------------------------------------------------------------------------------electron.bat
::IF EXIST "%MouseChshZRL_Root%\C\bin\wait.bat" CALL "%MouseChshZRL_Root%\C\bin\wait.bat" no-proc electron.exe
::IF EXIST "%MouseChshZRL_Root%\C\bin\wait.bat" CALL "%MouseChshZRL_Root%\C\bin\wait.bat" proc electron.exe
::RMDIR /S /Q %USERPROFILE%\AppData\Local\Mozilla
::RMDIR /S /Q %USERPROFILE%\AppData\Roaming\Electron
::RMDIR /S /Q %USERPROFILE%\AppData\Roaming\桌面浏览器
REM ================================================================================================================================electron.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************electron.bat****
