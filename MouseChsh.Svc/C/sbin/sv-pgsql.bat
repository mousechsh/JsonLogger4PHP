@REM !!!!!!!!sv-pgsql.bat
@REM ********************************************************************************************************************************sv-pgsql.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================sv-pgsql.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------sv-pgsql.bat
IF /I "%1"=="install" GOTO Install
IF /I "%1"=="uninstall" GOTO Uninstall
IF /I "%1"=="start" GOTO Start
IF /I "%1"=="stop" GOTO Stop
ECHO Do nothing
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------sv-pgsql.bat
:Install
ECHO SET Env Var PGHOME
CALL SETX "PGHOME" "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL" /m
ECHO SET Env Var PGDATA
CALL SETX "PGDATA" "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\data" /m
ECHO regist svc PGSQL
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\bin\pg_ctl.exe" CALL "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\bin\pg_ctl.exe" register -N "PGSQL" -D "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\data"
%SYSTEMROOT%\System32\net.exe START PGSQL
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------sv-pgsql.bat
:Uninstall
%SYSTEMROOT%\System32\net.exe STOP PGSQL
ECHO unregist svc PGSQL
IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\bin\pg_ctl.exe" CALL "%MouseChshZRL_Zone_Root%\C\PROG\org.PostgreSQL\bin\pg_ctl.exe" unregister -N "PGSQL"
ECHO CLEAN Env Var PGHOME
SETX "PGHOME" "" /m
ECHO CLEAN Env Var PGDATA
SETX "PGDATA" "" /m
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------sv-pgsql.bat
:Start
%SYSTEMROOT%\System32\net.exe START PGSQL
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------sv-pgsql.bat
:Stop
%SYSTEMROOT%\System32\net.exe STOP PGSQL
GOTO END
REM ================================================================================================================================sv-pgsql.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************sv-pgsql.bat****
