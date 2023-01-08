@REM !!!!!!!!vscode.bat
@REM ********************************************************************************************************************************vscode.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================vscode.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------vscode.bat
SET MouseChshZRL_ProgName=Visual Studio Code
SET MouseChshZRL_ProgDir=com.VisualStudio.Code
SET MouseChshZRL_ProgFile=Code.exe
REM --------------------------------------------------------------------------------------------------------------------------------vscode.bat
SET JAVA_HOME=%MouseChshZRL_JAVA_HOME%
SET JDK_HOME=%JAVA_HOME%
SET JRE_HOME=%JAVA_HOME%
SET CLASSPATH=.;%MouseChshZRL_JAVA_HOME%\lib;%MouseChshZRL_Zone_Root%\C\lib
SET JAVA_TOOL_OPTIONS=-Duser.language=en -Duser.region=CN
REM --------------------------------------------------------------------------------------------------------------------------------vscode.bat
SET PYTHON_HOME=%MouseChshZRL_PYTHON_HOME%
SET PYTHONHOME=%PYTHONHOME%
REM --------------------------------------------------------------------------------------------------------------------------------vscode.bat
IF "%MouseChshZRL_Sandbox%"=="0" (
	MKDIR "%MouseChshZRL_Temp%\temp=%MouseChshZRL_ProgDir%"
)
REM --------------------------------------------------------------------------------------------------------------------------------vscode.bat
IF "%MouseChshZRL_Sandbox%"=="0" (
	MKLINK /J "%USERPROFILE%\.vscode" "%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\.vscode"
	@REM MKLINK /J "%USERPROFILE%\AppData\Roaming\Code" "%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\Windows\AppData\Roaming\Code"
	MKLINK /J "%USERPROFILE%\AppData\Roaming\Code" "%MouseChshZRL_Temp%\temp=%MouseChshZRL_ProgDir%"
)
REM --------------------------------------------------------------------------------------------------------------------------------vscode.bat
CALL "RUN"
REM ================================================================================================================================vscode.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************vscode.bat****
