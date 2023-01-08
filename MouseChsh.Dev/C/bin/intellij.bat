@REM !!!!!!!!intellij.bat
@REM ********************************************************************************************************************************intellij.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================intellij.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------intellij.bat
SET MouseChshZRL_ProgName=JetBrains IntelliJ IDEA
SET MouseChshZRL_ProgDir=com.JetBrains.IntelliJ_IDEA
SET MouseChshZRL_ProgFile=bin\idea64.exe
REM --------------------------------------------------------------------------------------------------------------------------------intellij.bat
SET PATHEXT=%MouseChshZRL_OS_PathExt%
REM --------------------------------------------------------------------------------------------------------------------------------intellij.bat
IF "%MouseChshZRL_Sandbox%"=="0" (
	MKDIR "%MouseChshZRL_Temp%\temp=%MouseChshZRL_ProgDir%"
)
REM --------------------------------------------------------------------------------------------------------------------------------intellij.bat
IF "%MouseChshZRL_Sandbox%"=="0" (
	MKLINK /J "%USERPROFILE%\.m2" "%MouseChshZRL_Root%.Run\C\USER\MouseChsh\.m2"
)
REM --------------------------------------------------------------------------------------------------------------------------------intellij.bat
IF "%MouseChshZRL_Sandbox%"=="0" (
	MKLINK /J "%USERPROFILE%\AppData\Local\JetBrains" "%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\Windows\AppData\Local\JetBrains"
	MKLINK /J "%USERPROFILE%\AppData\Roaming\JetBrains" "%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\Windows\AppData\Roaming\JetBrains"
)
REM --------------------------------------------------------------------------------------------------------------------------------intellij.bat
CALL "RUN"
REM ================================================================================================================================intellij.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************intellij.bat****
