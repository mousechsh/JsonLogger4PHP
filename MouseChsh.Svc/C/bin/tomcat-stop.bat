@REM !!!!!!!!tomcat.bat
@REM ********************************************************************************************************************************tomcat.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================tomcat.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------tomcat.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\bin" GOTO StartRun
GOTO END
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
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\bin\catalina.bat" CALL "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\bin\catalina.bat" stop
REM ================================================================================================================================tomcat.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************tomcat.bat****
