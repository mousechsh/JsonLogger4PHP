@REM !!!!!!!!javac.bat
@REM ********************************************************************************************************************************javac.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================javac.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------javac.bat
SET JAVA_HOME=%MouseChshZRL_JAVA_HOME%
SET JDK_HOME=%MouseChshZRL_JAVA_HOME%
SET JRE_HOME=%MouseChshZRL_JAVA_HOME%
SET CLASSPATH=.;%MouseChshZRL_JAVA_HOME%\lib;%MouseChshZRL_Zone_Root%\C\lib
SET JAVA_TOOL_OPTIONS=-Duser.language=en -Duser.region=CN
REM --------------------------------------------------------------------------------------------------------------------------------javac.bat
IF EXIST "%MouseChshZRL_JAVA_HOME%\bin\javac.exe" CALL "%MouseChshZRL_JAVA_HOME%\bin\javac.exe" %*
REM ================================================================================================================================javac.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************javac.bat****
