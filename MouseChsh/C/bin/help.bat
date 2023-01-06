@REM !!!!!!!!help.bat
@REM ********************************************************************************************************************************help.bat
@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
REM ================================================================================================================================help.bat
GOTO Start
:Loopbat
FOR /R "%1" %%i IN (*.bat) DO (
	ECHO %%~ni
)
GOTO :EOF
:Start
REM ================================================================================================================================help.bat
IF "%1"=="" GOTO List
SET MouseChshZRL_IF_FLAG=0
FOR /R "%MouseChshZRL_Root%\C\PROG\help" %%i IN (*.txt) DO (
	IF /I "%%~ni"=="%1" (
		TYPE "%%i"
		SET MouseChshZRL_IF_FLAG=1
	)
)
IF "%MouseChshZRL_IF_FLAG%"=="1" GOTO END
GOTO List
REM --------------------------------------------------------------------------------------------------------------------------------help.bat
:List
ECHO -- Normal Command --
CALL :Loopbat "%MouseChshZRL_Root%\C\bin"
FOR /R "%MouseChshZRL_Root%\C\dev" %%i IN (path-*.bat) DO (
	SET MouseChshZRL_IF_String=%%~ni
	SET MouseChshZRL_IF_String=!MouseChshZRL_IF_String:~5!
	ECHO -- Normal Command in Zone !MouseChshZRL_IF_String! --
	CALL :Loopbat "%MouseChshZRL_Root%.!MouseChshZRL_IF_String!\C\bin"
)
IF "%MouseChshZRL_UAC%"=="1" (
	ECHO -- Admin Command --
	CALL :Loopbat "%MouseChshZRL_Root%\C\sbin"
	FOR /R "%MouseChshZRL_Root%\C\dev" %%i IN (path-*.bat) DO (
		SET MouseChshZRL_IF_String=%%~ni
		SET MouseChshZRL_IF_String=!MouseChshZRL_IF_String:~5!
		ECHO -- Admin Command in Zone !MouseChshZRL_IF_String! --
		CALL :Loopbat "%MouseChshZRL_Root%.!MouseChshZRL_IF_String!\C\sbin"
	)
)
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------help.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************help.bat****
