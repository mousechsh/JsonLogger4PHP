@REM !!!!!!!!jar.bat
@REM ********************************************************************************************************************************jar.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================jar.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------jar.bat
SET JAVA_HOME=%MouseChshZRL_JAVA_HOME%
SET JDK_HOME=%MouseChshZRL_JAVA_HOME%
SET JRE_HOME=%MouseChshZRL_JAVA_HOME%
SET CLASSPATH=.;%MouseChshZRL_JAVA_HOME%\lib;%MouseChshZRL_Zone_Root%\C\lib
SET JAVA_TOOL_OPTIONS=-Duser.language=en -Duser.region=CN
REM --------------------------------------------------------------------------------------------------------------------------------jar.bat
IF EXIST "%MouseChshZRL_JAVA_HOME%\bin\jar.exe" CALL "%MouseChshZRL_JAVA_HOME%\bin\jar.exe" %*
REM ================================================================================================================================jar.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************jar.bat****
