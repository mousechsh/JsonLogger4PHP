@REM !!!!!!!!sv-activemq.bat
@REM ********************************************************************************************************************************sv-activemq.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================sv-activemq.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------sv-activemq.bat
IF /I "%1"=="install" GOTO Install
IF /I "%1"=="uninstall" GOTO Uninstall
IF /I "%1"=="start" GOTO Start
IF /I "%1"=="stop" GOTO Stop
ECHO Do nothing
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------sv-activemq.bat
:Install
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.ActiveMQ\bin\win64\InstallService.bat" CALL "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.ActiveMQ\bin\win64\InstallService.bat"
%SYSTEMROOT%\System32\net.exe START ActiveMQ
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------sv-activemq.bat
:Uninstall
%SYSTEMROOT%\System32\net.exe STOP ActiveMQ
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.ActiveMQ\bin\win64\UninstallService.bat" CALL "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.ActiveMQ\bin\win64\UninstallService.bat"
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------sv-activemq.bat
:Start
%SYSTEMROOT%\System32\net.exe START ActiveMQ
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------sv-activemq.bat
:Stop
%SYSTEMROOT%\System32\net.exe STOP ActiveMQ
GOTO END
REM ================================================================================================================================sv-activemq.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************sv-activemq.bat****
