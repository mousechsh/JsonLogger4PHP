@REM !!!!!!!!sv-tomcat.bat
@REM ********************************************************************************************************************************sv-tomcat.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================sv-tomcat.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------sv-tomcat.bat
SET CLASSPATH=.;%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\bin\bootstrap.jar;%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\bin\tomcat-juli.jar
SET CATALINA_BASE=%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat
SET CATALINA_HOME=%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat
SET CATALINA_TMPDIR=%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\temp
SET CATALINA_BASE=%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat
SET CATALINA_BASE=%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat
SET CATALINA_OPTS=
REM --------------------------------------------------------------------------------------------------------------------------------sv-tomcat.bat
IF /I "%1"=="install" GOTO Install
IF /I "%1"=="uninstall" GOTO Uninstall
IF /I "%1"=="start" GOTO Start
IF /I "%1"=="stop" GOTO Stop
ECHO Do nothing
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------sv-tomcat.bat
:Install
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\bin\service.bat" CALL "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\bin\service.bat" install Tomcat
%SYSTEMROOT%\System32\net.exe START Tomcat
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------sv-tomcat.bat
:Uninstall
%SYSTEMROOT%\System32\net.exe STOP Tomcat
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\bin\service.bat" CALL "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\bin\service.bat" remove Tomcat
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------sv-tomcat.bat
:Start
%SYSTEMROOT%\System32\net.exe START Tomcat
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------sv-tomcat.bat
:Stop
%SYSTEMROOT%\System32\net.exe STOP Tomcat
GOTO END
REM ================================================================================================================================sv-tomcat.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************sv-tomcat.bat****
