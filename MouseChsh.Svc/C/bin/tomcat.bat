@REM !!!!!!!!tomcat.bat
@REM ********************************************************************************************************************************tomcat.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================tomcat.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------tomcat.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\bin" GOTO StartRun
REM --------------------------------------------------------------------------------------------------------------------------------tomcat.bat
FOR /F %%a IN (%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\MouseChshZRL_Tomcat_Version) DO (
	SET MouseChshZRL_Tomcat_Version=%%a
	GOTO Goon
)
:Goon
ECHO Current Tomcat Version is %MouseChshZRL_Tomcat_Version%
REM --------------------------------------------------------------------------------------------------------------------------------tomcat.bat
MKDIR "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\bin"
MKDIR "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\lib"
MKDIR "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\webapps\docs"
MKDIR "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\webapps\examples"
MKDIR "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\webapps\host-manager"
MKDIR "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\webapps\manager"
MKDIR "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\webapps\ROOT"
REM --------------------------------------------------------------------------------------------------------------------------------tomcat.bat
"%SYSTEMROOT%\System32\xcopy" /E /Y "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\bin-%MouseChshZRL_Tomcat_Version%\*" "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\bin\"
"%SYSTEMROOT%\System32\xcopy" /E /Y "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\lib-%MouseChshZRL_Tomcat_Version%\*" "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\lib\"
"%SYSTEMROOT%\System32\xcopy" /E /Y "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\webapps-%MouseChshZRL_Tomcat_Version%\docs\*" "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\webapps\docs\"
"%SYSTEMROOT%\System32\xcopy" /E /Y "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\webapps-%MouseChshZRL_Tomcat_Version%\examples\*" "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\webapps\examples\"
"%SYSTEMROOT%\System32\xcopy" /E /Y "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\webapps-%MouseChshZRL_Tomcat_Version%\host-manager\*" "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\webapps\host-manager\"
"%SYSTEMROOT%\System32\xcopy" /E /Y "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\webapps-%MouseChshZRL_Tomcat_Version%\manager\*" "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\webapps\manager\"
"%SYSTEMROOT%\System32\xcopy" /E /Y "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\webapps-%MouseChshZRL_Tomcat_Version%\ROOT\*" "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\webapps\ROOT\"
REM --------------------------------------------------------------------------------------------------------------------------------tomcat.bat
:StartRun
REM --------------------------------------------------------------------------------------------------------------------------------tomcat.bat
SET JAVA_HOME=%MouseChshZRL_JAVA_HOME%
SET JAVA_TOOL_OPTIONS=-Duser.language=en -Duser.region=CN
REM --------------------------------------------------------------------------------------------------------------------------------tomcat.bat
SET CLASSPATH=.;%MouseChshZRL_JAVA_HOME%\lib;%MouseChshZRL_Zone_Root%\C\lib;D:\SAJT\A\Tomcat\lib\bootstrap.jar;D:\SAJT\A\Tomcat\bin\tomcat-juli.jar
SET CATALINA_BASE=%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat
SET CATALINA_HOME=%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat
SET CATALINA_TMPDIR=%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\temp
SET CATALINA_BASE=%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat
SET CATALINA_BASE=%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat
SET CATALINA_OPTS=
REM --------------------------------------------------------------------------------------------------------------------------------tomcat.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\bin\catalina.bat" CALL "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\bin\catalina.bat" run
REM ================================================================================================================================tomcat.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************tomcat.bat****
