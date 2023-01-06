@REM !!!!!!!!jshell.bat
@REM ********************************************************************************************************************************jshell.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================jshell.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------jshell.bat
SET JAVA_HOME=%MouseChshZRL_JAVA_HOME%
SET JDK_HOME=%MouseChshZRL_JAVA_HOME%
SET JRE_HOME=%MouseChshZRL_JAVA_HOME%
SET CLASSPATH=.;%MouseChshZRL_JAVA_HOME%\lib;%MouseChshZRL_Zone_Root%\C\lib
SET JAVA_TOOL_OPTIONS=-Duser.language=en -Duser.region=CN
REM --------------------------------------------------------------------------------------------------------------------------------jshell.bat
IF EXIST "%MouseChshZRL_JAVA_HOME%\bin\jshell.exe" CALL "%MouseChshZRL_JAVA_HOME%\bin\jshell.exe" %*
REM ================================================================================================================================jshell.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************jshell.bat****
