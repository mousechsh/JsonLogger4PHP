@REM !!!!!!!!java.bat
@REM ********************************************************************************************************************************java.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================java.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------java.bat
SET JAVA_HOME=%MouseChshZRL_JAVA_HOME%
SET JDK_HOME=%MouseChshZRL_JAVA_HOME%
SET JRE_HOME=%MouseChshZRL_JAVA_HOME%
SET CLASSPATH=.;%MouseChshZRL_JAVA_HOME%\lib;%MouseChshZRL_Zone_Root%\C\lib
SET JAVA_TOOL_OPTIONS=-Duser.language=zh -Duser.region=CN -Dfile.encoding=utf8 -Xms256M -Xmx2048M
REM --------------------------------------------------------------------------------------------------------------------------------java.bat
IF EXIST "%MouseChshZRL_JAVA_HOME%\bin\java.exe" CALL "%MouseChshZRL_JAVA_HOME%\bin\java.exe" %*
REM ================================================================================================================================java.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************java.bat****
