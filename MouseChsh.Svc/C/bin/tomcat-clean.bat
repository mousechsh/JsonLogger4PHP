@REM !!!!!!!!tomcat-clean.bat
@REM ********************************************************************************************************************************tomcat-clean.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================tomcat-clean.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------tomcat-clean.bat
RMDIR /S /Q "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\logs"
MKDIR "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\logs"
RMDIR /S /Q "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\temp"
MKDIR "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\temp"
RMDIR /S /Q "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\work"
MKDIR "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\work"
REM --------------------------------------------------------------------------------------------------------------------------------tomcat-clean.bat
RMDIR /S /Q "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\bin"
RMDIR /S /Q "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\lib"
RMDIR /S /Q "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\webapps\docs"
RMDIR /S /Q "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\webapps\examples"
RMDIR /S /Q "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\webapps\host-manager"
RMDIR /S /Q "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\webapps\manager"
RMDIR /S /Q "%MouseChshZRL_Zone_Root%\C\PROG\org.apache.Tomcat\webapps\ROOT"
REM ================================================================================================================================tomcat-clean.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************tomcat-clean.bat****
