@REM !!!!!!!!vscode-clean.bat
@REM ********************************************************************************************************************************vscode-clean.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================vscode-clean.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------vscode-clean.bat
SET MouseChshZRL_ProgName=Visual Studio Code
SET MouseChshZRL_ProgDir=com.VisualStudio.Code
SET MouseChshZRL_ProgFile=Code.exe
REM --------------------------------------------------------------------------------------------------------------------------------vscode-clean.bat
IF EXIST "%MouseChshZRL_Root%\C\bin\wait.bat" CALL "%MouseChshZRL_Root%\C\bin\wait.bat" proc Code.exe
RMDIR "%USERPROFILE%\.vscode"
RMDIR /S /Q "%USERPROFILE%\.vscode"
RMDIR "%USERPROFILE%\AppData\Roaming\Code"
RMDIR /S /Q "%USERPROFILE%\AppData\Roaming\Code"
REM --------------------------------------------------------------------------------------------------------------------------------vscode-clean.bat
CALL "PACK"
REM ================================================================================================================================vscode-clean.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************vscode-clean.bat****
