@REM !!!!!!!!intellij-clean.bat
@REM ********************************************************************************************************************************intellij-clean.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================intellij-clean.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------intellij-clean.bat
SET MouseChshZRL_ProgName=JetBrains IntelliJ IDEA
SET MouseChshZRL_ProgDir=com.JetBrains.IntelliJ_IDEA
SET MouseChshZRL_ProgFile=bin\idea64.exe
REM --------------------------------------------------------------------------------------------------------------------------------intellij-clean.bat
SET PATHEXT=%MouseChshZRL_OS_PathExt%
REM --------------------------------------------------------------------------------------------------------------------------------intellij-clean.bat
RMDIR "%USERPROFILE%\.m2"
RMDIR /S /Q "%USERPROFILE%\.m2"
RMDIR "%USERPROFILE%\AppData\Local\JetBrains"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\JetBrains"
RMDIR "%USERPROFILE%\AppData\Roaming\JetBrains"
RMDIR /S /Q "%USERPROFILE%\AppData\Roaming\JetBrains"
REM --------------------------------------------------------------------------------------------------------------------------------intellij-clean.bat
CALL "PACK"
REM ================================================================================================================================intellij-clean.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************intellij-clean.bat****
