@REM !!!!!!!!clean.bat
@REM ********************************************************************************************************************************clean.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================clean.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------clean.bat
ECHO ^>^>^> Cleaning [Nginx]...
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\nginx.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\nginx.bat" -s stop
IF EXIST "%MouseChshZRL_Root%\C\bin\wait.bat" CALL "%MouseChshZRL_Root%\C\bin\wait.bat" proc nginx.exe
RMDIR /S /Q "%MouseChshZRL_Zone_Root%\C\PROG\org.nginx\logs"
MKDIR "%MouseChshZRL_Zone_Root%\C\PROG\org.nginx\logs"
RMDIR /S /Q "%MouseChshZRL_Zone_Root%\C\PROG\org.nginx\temp"
MKDIR "%MouseChshZRL_Zone_Root%\C\PROG\org.nginx\temp"
DEL /Q "%MouseChshZRL_Zone_Root%\C\PROG\org.nginx\conf\nginx.conf"
REM --------------------------------------------------------------------------------------------------------------------------------clean.bat
ECHO ^>^>^> Cleaning [Apache HTTP Server]...
RMDIR /S /Q "%MouseChshZRL_Zone_Root%\C\PROG\org.Apache.httpd\logs"
MKDIR "%MouseChshZRL_Zone_Root%\C\PROG\org.Apache.httpd\logs"
DEL /Q "%MouseChshZRL_Zone_Root%\C\PROG\org.Apache.httpd\conf\httpd.conf"
REM --------------------------------------------------------------------------------------------------------------------------------clean.bat
ECHO ^>^>^> Cleaning [Apache Tomcat]...
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\tomcat-clean.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\tomcat-clean.bat"
REM --------------------------------------------------------------------------------------------------------------------------------clean.bat
ECHO ^>^>^> Cleaning [Apache ActiveMQ]...
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\activemq-clean.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\activemq-clean.bat"
REM --------------------------------------------------------------------------------------------------------------------------------clean.bat
ECHO ^>^>^> Cleaning [MySQL]...
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\activemq-clean.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysqld-clean.bat"
REM ================================================================================================================================clean.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************clean.bat****
