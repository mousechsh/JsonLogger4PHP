@REM !!!!!!!!pycharm.bat
@REM ********************************************************************************************************************************pycharm.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================pycharm.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------pycharm.bat
SET MouseChshZRL_ProgName=JetBrains PyCharm
SET MouseChshZRL_ProgDir=com.JetBrains.PyCharm
SET MouseChshZRL_ProgFile=bin\pycharm64.exe
REM --------------------------------------------------------------------------------------------------------------------------------pycharm.bat
SET PATHEXT=%MouseChshZRL_OS_PathExt%
REM --------------------------------------------------------------------------------------------------------------------------------pycharm.bat
IF "%MouseChshZRL_Sandbox%"=="0" (
	MKDIR "%MouseChshZRL_Temp%\temp=%MouseChshZRL_ProgDir%"
)
REM --------------------------------------------------------------------------------------------------------------------------------pycharm.bat
IF "%MouseChshZRL_Sandbox%"=="0" (
	MKLINK /J "%USERPROFILE%\.m2" "%MouseChshZRL_Root%.Run\C\USER\MouseChsh\.m2"
)
REM --------------------------------------------------------------------------------------------------------------------------------pycharm.bat
IF "%MouseChshZRL_Sandbox%"=="0" (
	MKLINK /J "%USERPROFILE%\AppData\Local\JetBrains" "%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\Windows\AppData\Local\JetBrains"
	MKLINK /J "%USERPROFILE%\AppData\Roaming\JetBrains" "%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\Windows\AppData\Roaming\JetBrains"
)
REM --------------------------------------------------------------------------------------------------------------------------------pycharm.bat
CALL "RUN"
REM ================================================================================================================================pycharm.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************pycharm.bat****
