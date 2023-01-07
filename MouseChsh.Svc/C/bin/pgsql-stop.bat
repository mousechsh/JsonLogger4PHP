@REM !!!!!!!!pgsql-stop.bat
@REM ********************************************************************************************************************************pgsql-stop.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================pgsql-stop.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------pgsql-stop.bat
SET PGDATA=%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\data
SET PGDATABASE=DB_MouseChshDB
SET PGHOST=127.0.0.1
SET PGPORT=5432
SET PGUSER=MouseChsh
REM --------------------------------------------------------------------------------------------------------------------------------pgsql-stop.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\bin\vacuumdb.exe" CALL "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\bin\vacuumdb.exe" -a -f
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\bin\pg_ctl.exe" CALL "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\bin\pg_ctl.exe" stop
REM ================================================================================================================================pgsql-stop.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************pgsql-stop.bat****
