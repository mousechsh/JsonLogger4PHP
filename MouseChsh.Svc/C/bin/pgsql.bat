@REM !!!!!!!!pgsql.bat
@REM ********************************************************************************************************************************pgsql.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================pgsql.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------pgsql.bat
SET MouseChshZRL_ProgName=PostgreSQL Server
SET MouseChshZRL_ProgDir=%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL
SET MouseChshZRL_ProgFile=%MouseChshZRL_ProgDir%\bin\pg_ctl.exe
REM --------------------------------------------------------------------------------------------------------------------------------pgsql.bat
SET PGDATA=%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\data
REM --------------------------------------------------------------------------------------------------------------------------------pgsql.bat
ECHO Running [%MouseChshZRL_ProgName%]
:: IF "%MouseChshZRL_DEBUG%"=="DEBUG" (
:: 	%~d0
:: 	CD "%MouseChshZRL_ProgDir%"
:: 	IF EXIST "%MouseChshZRL_ProgFile%" CALL "%MouseChshZRL_ProgFile%" start -l "%MouseChshZRL_Temp%\PostgreSQL.log"
:: ) ELSE (
:: 	IF EXIST "%MouseChshZRL_ProgFile%" START "%MouseChshZRL_ProgName%" /D "%MouseChshZRL_ProgDir%" "%MouseChshZRL_ProgFile%" start -l "%MouseChshZRL_Temp%\PostgreSQL.log"
:: )
IF EXIST "%MouseChshZRL_ProgFile%" CALL "%MouseChshZRL_ProgFile%" start -l "%MouseChshZRL_Temp%\PostgreSQL.log"
REM ================================================================================================================================pgsql.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************pgsql.bat****
