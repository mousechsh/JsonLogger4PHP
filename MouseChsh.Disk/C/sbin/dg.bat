@REM !!!!!!!!dg.bat
@REM ********************************************************************************************************************************dg.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================dg.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------dg.bat
SET MouseChshZRL_ProgName=DiskGenius
SET MouseChshZRL_ProgDir=%MouseChshZRL_Zone_Root%\C\PROG\cn.DiskGenius
SET MouseChshZRL_ProgFile=%MouseChshZRL_ProgDir%\DiskGenius.exe
REM --------------------------------------------------------------------------------------------------------------------------------dg.bat
ECHO Running [%MouseChshZRL_ProgName%]
IF "%MouseChshZRL_DEBUG%"=="DEBUG" (
	%~d0
	CD "%MouseChshZRL_ProgDir%"
	IF EXIST "%MouseChshZRL_ProgFile%" CALL "%MouseChshZRL_ProgFile%"
) ELSE (
	IF EXIST "%MouseChshZRL_ProgFile%" START "%MouseChshZRL_ProgName%" /D "%MouseChshZRL_ProgDir%" "%MouseChshZRL_ProgFile%"
)
REM ================================================================================================================================dg.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************dg.bat****
