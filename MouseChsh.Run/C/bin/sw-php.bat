@REM !!!!!!!!sw-php.bat
@REM ********************************************************************************************************************************sw-php.bat
@ECHO OFF
REM ================================================================================================================================sw-php.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
SETLOCAL ENABLEDELAYEDEXPANSION
REM ================================================================================================================================sw-php.bat
FOR /R "%MouseChshZRL_Zone_Root%\C\etc\" %%i IN (MouseChshPHP.bat-*) DO (
	SET MouseChshZRL_IF_String=%%~nxi
	IF /I "!MouseChshZRL_IF_String:~17!"=="%1" (
		COPY /Y "%%i" "%MouseChshZRL_Zone_Root%\C\etc\MouseChshPHP.bat"
	)
)
GOTO Next
REM --------------------------------------------------------------------------------------------------------------------------------sw-php.bat
:Next
ENDLOCAL
IF "%*"=="" (
	IF EXIST "%MouseChshZRL_Zone_Root%\C\etc\MouseChshPHP.bat" CALL "%MouseChshZRL_Zone_Root%\C\etc\MouseChshPHP.bat"
) ELSE (
	IF EXIST "%MouseChshZRL_Zone_Root%\C\etc\MouseChshPHP.bat" CALL "%MouseChshZRL_Zone_Root%\C\etc\MouseChshPHP.bat" sw
)
REM ********************************************************************************************************************************sw-php.bat****
