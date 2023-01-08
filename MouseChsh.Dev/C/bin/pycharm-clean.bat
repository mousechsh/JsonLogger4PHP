@REM !!!!!!!!pycharm-clean.bat
@REM ********************************************************************************************************************************pycharm-clean.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================pycharm-clean.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------pycharm-clean.bat
SET MouseChshZRL_ProgName=JetBrains PyCharm
SET MouseChshZRL_ProgDir=com.JetBrains.PyCharm
SET MouseChshZRL_ProgFile=bin\pycharm64.exe
REM --------------------------------------------------------------------------------------------------------------------------------pycharm-clean.bat
SET PATHEXT=%MouseChshZRL_OS_PathExt%
REM --------------------------------------------------------------------------------------------------------------------------------pycharm-clean.bat
RMDIR "%USERPROFILE%\.m2"
RMDIR /S /Q "%USERPROFILE%\.m2"
RMDIR "%USERPROFILE%\AppData\Local\JetBrains"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\JetBrains"
RMDIR "%USERPROFILE%\AppData\Roaming\JetBrains"
RMDIR /S /Q "%USERPROFILE%\AppData\Roaming\JetBrains"
REM --------------------------------------------------------------------------------------------------------------------------------pycharm-clean.bat
CALL "PACK"
REM ================================================================================================================================pycharm-clean.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************pycharm-clean.bat****
