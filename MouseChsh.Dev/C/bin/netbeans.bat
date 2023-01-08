@REM !!!!!!!!netbeans.bat
@REM ********************************************************************************************************************************netbeans.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================netbeans.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------netbeans.bat
SET MouseChshZRL_ProgName=NetBeans
SET MouseChshZRL_ProgDir=org.apache.NetBeans
SET MouseChshZRL_ProgFile=bin\netbeans64.exe
REM --------------------------------------------------------------------------------------------------------------------------------netbeans.bat
SET PATHEXT=%MouseChshZRL_OS_PathExt%
REM --------------------------------------------------------------------------------------------------------------------------------netbeans.bat
IF "%MouseChshZRL_Sandbox%"=="0" (
	MKLINK /J "%USERPROFILE%\.m2" "%MouseChshZRL_Root%.Run\C\USER\MouseChsh\.m2"
)
REM --------------------------------------------------------------------------------------------------------------------------------netbeans.bat
IF "%MouseChshZRL_Sandbox%"=="0" (
	MKLINK /J "%USERPROFILE%\AppData\Local\NetBeans" "%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\Windows\AppData\Local\NetBeans"
	MKLINK /J "%USERPROFILE%\AppData\Roaming\NetBeans" "%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\Windows\AppData\Roaming\NetBeans"
)
REM --------------------------------------------------------------------------------------------------------------------------------netbeans.bat
CALL "RUN" --jdkhome "%MouseChshZRL_JAVA_HOME%" --locale zh:CN
REM ================================================================================================================================netbeans.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************netbeans.bat****
