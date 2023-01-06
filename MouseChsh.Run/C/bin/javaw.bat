@REM !!!!!!!!javaw.bat
@REM ********************************************************************************************************************************javaw.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================javaw.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------javaw.bat
SET JAVA_HOME=%MouseChshZRL_JAVA_HOME%
SET JDK_HOME=%MouseChshZRL_JAVA_HOME%
SET JRE_HOME=%MouseChshZRL_JAVA_HOME%
SET CLASSPATH=.;%MouseChshZRL_JAVA_HOME%\lib;%MouseChshZRL_Zone_Root%\C\lib
SET JAVA_TOOL_OPTIONS=-Duser.language=en -Duser.region=CN -Dfile.encoding=utf8 -Xms256M -Xmx2048M
REM --------------------------------------------------------------------------------------------------------------------------------javaw.bat
IF EXIST "%MouseChshZRL_JAVA_HOME%\bin\javaw.exe" CALL "%MouseChshZRL_JAVA_HOME%\bin\javaw.exe" %*
REM ================================================================================================================================javaw.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************javaw.bat****
