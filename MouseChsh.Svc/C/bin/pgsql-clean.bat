@REM !!!!!!!!pgsql-clean.bat
@REM ********************************************************************************************************************************pgsql-clean.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================pgsql-clean.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------pgsql-clean.bat
IF NOT EXIST "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\data" GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------pgsql-clean.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\data.sql" CALL MOVE /Y "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\data.sql" "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\data.%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%.old.sql"
REM --------------------------------------------------------------------------------------------------------------------------------pgsql-clean.bat
SET PGDATA=%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\data
SET PGDATABASE=DB_MouseChshDB
SET PGHOST=127.0.0.1
SET PGPORT=5432
SET PGUSER=MouseChsh
REM --------------------------------------------------------------------------------------------------------------------------------pgsql-clean.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\bin\pg_ctl.exe" CALL "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\bin\pg_ctl.exe" start
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\bin\pg_dumpall.exe" CALL "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\bin\pg_dumpall.exe" > "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\data.sql"
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\bin\pg_ctl.exe" CALL "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\bin\pg_ctl.exe" stop -m smart
RMDIR /S /Q "%PGDATA%"
REM ================================================================================================================================pgsql-clean.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************pgsql-clean.bat****
