@REM !!!!!!!!clean.bat
@REM ********************************************************************************************************************************clean.bat
@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
REM ================================================================================================================================clean.bat
ECHO Starting cleaning...
FOR /R "%MouseChshZRL_Root%\C\dev" %%i IN (path-*.bat) DO (
	SET MouseChshZRL_IF_String=%%~ni
	SET MouseChshZRL_IF_String=!MouseChshZRL_IF_String:~5!
	ECHO -- Cleaning normal in Zone !MouseChshZRL_IF_String! --
	IF EXIST "%MouseChshZRL_Root%.!MouseChshZRL_IF_String!\C\bin\clean.bat" CALL "%MouseChshZRL_Root%.!MouseChshZRL_IF_String!\C\bin\clean.bat"
)
IF "%MouseChshZRL_UAC%"=="1" (
	FOR /R "%MouseChshZRL_Root%\C\dev" %%i IN (path-*.bat) DO (
		SET MouseChshZRL_IF_String=%%~ni
		SET MouseChshZRL_IF_String=!MouseChshZRL_IF_String:~5!
		ECHO -- Cleaning admin in Zone !MouseChshZRL_IF_String! --
	IF EXIST "%MouseChshZRL_Root%.!MouseChshZRL_IF_String!\C\sbin\clean.bat" CALL "%MouseChshZRL_Root%.!MouseChshZRL_IF_String!\C\sbin\clean.bat"
	)
)
REM --------------------------------------------------------------------------------------------------------------------------------clean.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************clean.bat****
