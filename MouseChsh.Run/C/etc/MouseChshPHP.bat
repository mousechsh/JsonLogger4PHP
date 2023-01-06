@REM !!!!!!!!MouseChshPHP.bat
@REM ********************************************************************************************************************************MouseChshPHP.bat
@ECHO OFF
REM ================================================================================================================================MouseChshPHP.bat
CALL "%~dp0..\..\MouseChsh.bat"
REM ================================================================================================================================MouseChshPHP.bat
SET MouseChshZRL_PHP_HOME=%MouseChshZRL_Zone_Root%\C\PROG\PHP\PHP7NTS
REM --------------------------------------------------------------------------------------------------------------------------------MouseChshPHP.bat
ECHO Current PHP Version is PHP 7.4.9 Non Thread Safe for FAST-CGI ( VC15 - Visual Studio 2017, using nginx )
REM --------------------------------------------------------------------------------------------------------------------------------MouseChshPHP.bat
SETLOCAL ENABLEDELAYEDEXPANSION
:END
SET MouseChshZRL_IF_Path=%MouseChshZRL_PHP_HOME%\ext
IF "%1"=="sw" (
	ECHO "Switching Mode..."
	DEL /Q %MouseChshZRL_PHP_HOME%\php.ini
)
IF NOT EXIST %MouseChshZRL_PHP_HOME%\php.ini (
	FOR /F "eol=* tokens=*" %%i IN (%MouseChshZRL_PHP_HOME%\php.ini-origin) DO (
		SET "MouseChshZRL_IF_String=%%i"
		SET "MouseChshZRL_IF_String=!MouseChshZRL_IF_String: "{MouseChsh}"= "%MouseChshZRL_IF_Path%"!"
		ECHO !MouseChshZRL_IF_String!>>%MouseChshZRL_PHP_HOME%\php.ini
	)
)
ENDLOCAL
REM ********************************************************************************************************************************MouseChshPHP.bat****
