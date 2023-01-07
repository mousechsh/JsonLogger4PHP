@REM !!!!!!!!sv-mysql.bat
@REM ********************************************************************************************************************************sv-mysql.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================sv-mysql.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------sv-mysql.bat
IF /I "%1"=="install" GOTO Install
IF /I "%1"=="uninstall" GOTO Uninstall
IF /I "%1"=="start" GOTO Start
IF /I "%1"=="stop" GOTO Stop
ECHO Do nothing
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------sv-mysql.bat
:Install
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\bin\mysqld.exe" CALL "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\bin\mysqld.exe" --install MySQL
%SYSTEMROOT%\System32\net.exe START MySQL
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------sv-mysql.bat
:Uninstall
%SYSTEMROOT%\System32\net.exe STOP MySQL
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\bin\mysqld.exe" CALL "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\bin\mysqld.exe" --remove MySQL
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------sv-mysql.bat
:Start
%SYSTEMROOT%\System32\net.exe START MySQL
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------sv-mysql.bat
:Stop
%SYSTEMROOT%\System32\net.exe STOP MySQL
GOTO END
REM ================================================================================================================================sv-mysql.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************sv-mysql.bat****
