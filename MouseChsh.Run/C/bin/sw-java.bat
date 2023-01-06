@REM !!!!!!!!sw-java.bat
@REM ********************************************************************************************************************************sw-java.bat
@ECHO OFF
REM ================================================================================================================================sw-java.bat
SETLOCAL ENABLEDELAYEDEXPANSION
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM ================================================================================================================================sw-java.bat
FOR /R "%MouseChshZRL_Zone_Root%\C\etc\" %%i IN (MouseChshJava.bat-*) DO (
	SET MouseChshZRL_IF_String=%%~nxi
	IF /I "!MouseChshZRL_IF_String:~18!"=="%1" (
		COPY /Y "%%i" "%MouseChshZRL_Zone_Root%\C\etc\MouseChshJava.bat"
	)
)
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------sw-java.bat
:END
ENDLOCAL
IF "%*"=="" (
	IF EXIST "%MouseChshZRL_Zone_Root%\C\etc\MouseChshJava.bat" CALL "%MouseChshZRL_Zone_Root%\C\etc\MouseChshJava.bat"
) ELSE (
	IF EXIST "%MouseChshZRL_Zone_Root%\C\etc\MouseChshJava.bat" CALL "%MouseChshZRL_Zone_Root%\C\etc\MouseChshJava.bat" sw
)
REM ********************************************************************************************************************************sw-java.bat****
