@REM !!!!!!!!sw-tomcat.bat
@REM ********************************************************************************************************************************sw-tomcat.bat
@ECHO OFF
REM ================================================================================================================================sw-tomcat.bat
SETLOCAL ENABLEDELAYEDEXPANSION
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------sw-tomcat.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\tomcat-clean.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\tomcat-clean.bat"
REM --------------------------------------------------------------------------------------------------------------------------------sw-tomcat.bat
IF "9.0"=="%1" ECHO 9.0> %MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\MouseChshZRL_Tomcat_Version
IF "10.0"=="%1" ECHO 10.0> %MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\MouseChshZRL_Tomcat_Version
REM --------------------------------------------------------------------------------------------------------------------------------sw-tomcat.bat
FOR /F %%a IN (%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\MouseChshZRL_Tomcat_Version) DO (
	SET MouseChshZRL_Tomcat_Version=%%a
	GOTO Goon
)
:Goon
ECHO Current Tomcat Version is %MouseChshZRL_Tomcat_Version%
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------sw-tomcat.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************sw-tomcat.bat****
