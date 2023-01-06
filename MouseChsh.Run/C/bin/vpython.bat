@REM !!!!!!!!vpython.bat
@REM ********************************************************************************************************************************vpython.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================vpython.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------vpython.bat
ECHO Current Python Home is %MouseChshZRL_PYTHON_HOME%
ECHO %MouseChshZRL_PYTHON_HOME% | CALL findstr \C\PROG\Python\ > NUL && (
	:: Include string then run this cmd
	GOTO AutoCall
) || (
	:: Not include string then run this cmd
	GOTO ErrorInfo
)
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------vpython.bat
:AutoCall
SETLOCAL ENABLEDELAYEDEXPANSION
SET MouseChshZRL_ALL_Params=%*
SET MouseChshZRL_First_Param=%1
SET "MouseChshZRL_Other_Params=!MouseChshZRL_ALL_Params:%MouseChshZRL_First_Param%=!"
IF EXIST %MouseChshZRL_Zone_Root%\C\var\py-%MouseChshZRL_First_Param%\Scripts\python.exe (
	SET PYTHON_HOME=%MouseChshZRL_Zone_Root%\C\var\py-%MouseChshZRL_First_Param%
	SET PYTHONHOME=%PYTHONHOME%
	ECHO Run Python in Virtual Environments - %MouseChshZRL_First_Param%
	ECHO ::: python %MouseChshZRL_Other_Params%
	%MouseChshZRL_Zone_Root%\C\var\py-%MouseChshZRL_First_Param%\Scripts\python.exe %MouseChshZRL_Other_Params%
) ELSE (
	ECHO Python Virtual Environments - %MouseChshZRL_First_Param% is NOT exist!
)
ENDLOCAL
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------vpython.bat
:ErrorInfo
ECHO vpython must run with python in PROG folder, var folder is auto called with vpython
GOTO END
REM ================================================================================================================================vpython.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************vpython.bat****
