@REM !!!!!!!!pgsql-init.bat
@REM ********************************************************************************************************************************pgsql-init.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================pgsql-init.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------pgsql-init.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\data" GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------pgsql-init.bat
SET PGDATA=%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\data
SET PGDATABASE=DB_MouseChshDB
SET PGHOST=127.0.0.1
SET PGPORT=5432
SET PGUSER=MouseChsh
REM --------------------------------------------------------------------------------------------------------------------------------pgsql-init.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\bin\initdb.exe" CALL "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\bin\initdb.exe" -E UTF8 -D %PGDATA% -U MouseChsh
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\bin\pg_ctl.exe" CALL "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\bin\pg_ctl.exe" start
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\bin\createdb.exe" CALL "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\bin\createdb.exe" DB_MouseChshDB
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\bin\psql.exe" CALL "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\bin\psql.exe" < "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\data.sql"
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\bin\pg_ctl.exe" CALL "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\bin\pg_ctl.exe" stop -m smart
REM ================================================================================================================================pgsql-init.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************pgsql-init.bat****
