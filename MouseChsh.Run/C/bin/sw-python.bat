@REM !!!!!!!!sw-python.bat
@REM ********************************************************************************************************************************sw-python.bat
@ECHO OFF
REM ================================================================================================================================sw-python.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
SETLOCAL ENABLEDELAYEDEXPANSION
REM ================================================================================================================================sw-python.bat
FOR /R "%MouseChshZRL_Zone_Root%\C\etc\" %%i IN (MouseChshPython.bat-*) DO (
	SET MouseChshZRL_IF_String=%%~nxi
	IF /I "!MouseChshZRL_IF_String:~20!"=="%1" (
		COPY /Y "%%i" "%MouseChshZRL_Zone_Root%\C\etc\MouseChshPython.bat"
	)
)
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------sw-python.bat
:END
ENDLOCAL
IF "%*"=="" (
	IF EXIST "%MouseChshZRL_Zone_Root%\C\etc\MouseChshPython.bat" CALL "%MouseChshZRL_Zone_Root%\C\etc\MouseChshPython.bat"
) ELSE (
	IF EXIST "%MouseChshZRL_Zone_Root%\C\etc\MouseChshPython.bat" CALL "%MouseChshZRL_Zone_Root%\C\etc\MouseChshPython.bat" sw
)
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\pip.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\pip.bat" list
REM ********************************************************************************************************************************sw-python.bat****
