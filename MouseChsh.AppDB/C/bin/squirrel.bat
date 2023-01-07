@REM !!!!!!!!squirrel.bat
@REM ********************************************************************************************************************************squirrel.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================squirrel.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------squirrel.bat
IF NOT EXIST "%MouseChshZRL_Root%.Run\C\bin\java.bat" GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------squirrel.bat
IF "%MouseChshZRL_Sandbox%"=="0" (
	MKLINK /J "%USERPROFILE%\.squirrel-sql" "%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\.squirrel-sql"
)
REM --------------------------------------------------------------------------------------------------------------------------------squirrel.bat
SET JAVA_HOME=%MouseChshZRL_JAVA_HOME%
SET "IZPACK_JAVA=%JAVA_HOME%"
REM --------------------------------------------------------------------------------------------------------------------------------squirrel.bat
SET MouseChshZRL_ProgName=SQuirreL SQL Client
SET MouseChshZRL_ProgDir=%MouseChshZRL_Zone_Root%\C\PROG\org.SQuirreLSQL
SET MouseChshZRL_ProgFile=%MouseChshZRL_ProgDir%\squirrel-sql.bat
REM --------------------------------------------------------------------------------------------------------------------------------squirrel.bat
SET CP="%MouseChshZRL_ProgDir%\squirrel-sql.jar;%MouseChshZRL_ProgDir%\lib\*;%MouseChshZRL_Zone_Root%\C\lib\jdbc-drivers\derby\*;%MouseChshZRL_Zone_Root%\C\lib\jdbc-drivers\mssql\*;%MouseChshZRL_Zone_Root%\C\lib\jdbc-drivers\mysql\*;%MouseChshZRL_Zone_Root%\C\lib\jdbc-drivers\oracle\*;%MouseChshZRL_Zone_Root%\C\lib\jdbc-drivers\postgres\*;%MouseChshZRL_Zone_Root%\C\lib\jdbc-drivers\sqlite\*"
SET TMP_PARMS=--log-config-file "%MouseChshZRL_ProgDir%\log4j.properties" --squirrel-home "%MouseChshZRL_ProgDir%" %1 %2 %3 %4 %5 %6 %7 %8 %9
REM --------------------------------------------------------------------------------------------------------------------------------squirrel.bat
ECHO Running [%MouseChshZRL_ProgName%]
@REM IF "%MouseChshZRL_DEBUG%"=="DEBUG" (
@REM 	%~d0
@REM 	CD "%MouseChshZRL_ProgDir%"
@REM 	IF EXIST "%MouseChshZRL_ProgFile%" CALL "%MouseChshZRL_Root%.Run\C\bin\javacn.bat" -cp %CP% -Dsun.awt.nopixfmt=true -Dsun.java2d.noddraw=true %SQUIRREL_SQL_OPTS% -splash:"%MouseChshZRL_ProgDir%/icons/splash.jpg" net.sourceforge.squirrel_sql.client.Main %TMP_PARMS%
@REM ) ELSE (
@REM 	IF EXIST "%MouseChshZRL_ProgFile%" START "%MouseChshZRL_ProgName%" /D "%MouseChshZRL_ProgDir%" "%MouseChshZRL_Root%.Run\C\bin\javawcn.bat" -cp %CP% -Dsun.awt.nopixfmt=true -Dsun.java2d.noddraw=true %SQUIRREL_SQL_OPTS% -splash:"%MouseChshZRL_ProgDir%/icons/splash.jpg" net.sourceforge.squirrel_sql.client.Main %TMP_PARMS%
@REM )
IF EXIST "%MouseChshZRL_ProgFile%" CALL "%MouseChshZRL_Root%.Run\C\bin\javacn.bat" -cp %CP% -Dsun.awt.nopixfmt=true -Dsun.java2d.noddraw=true %SQUIRREL_SQL_OPTS% -splash:"%MouseChshZRL_ProgDir%/icons/splash.jpg" net.sourceforge.squirrel_sql.client.Main %TMP_PARMS%
REM ================================================================================================================================squirrel.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************squirrel.bat****
