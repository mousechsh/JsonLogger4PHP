@REM !!!!!!!!vcrypt.bat
@REM ********************************************************************************************************************************vcrypt.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================vcrypt.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------vcrypt.bat
SET MouseChshZRL_ProgName=VeraCrypt
SET MouseChshZRL_ProgDir=%MouseChshZRL_Zone_Root%\C\PROG\fr.VeraCrypt
SET MouseChshZRL_ProgFile=%MouseChshZRL_ProgDir%\VeraCrypt.exe
REM --------------------------------------------------------------------------------------------------------------------------------vcrypt.bat
ECHO Running [%MouseChshZRL_ProgName%]
IF "%MouseChshZRL_DEBUG%"=="DEBUG" (
	%~d0
	CD "%MouseChshZRL_ProgDir%"
	IF EXIST "%MouseChshZRL_ProgFile%" CALL "%MouseChshZRL_ProgFile%"
) ELSE (
	IF EXIST "%MouseChshZRL_ProgFile%" START "%MouseChshZRL_ProgName%" /D "%MouseChshZRL_ProgDir%" "%MouseChshZRL_ProgFile%"
)
REM ================================================================================================================================vcrypt.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************vcrypt.bat****
