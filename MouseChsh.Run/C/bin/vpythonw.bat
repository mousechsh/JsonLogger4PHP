@REM !!!!!!!!vpythonw.bat
@REM ********************************************************************************************************************************vpythonw.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================vpythonw.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------vpythonw.bat
ECHO Current Python Home is %MouseChshZRL_PYTHON_HOME%
ECHO %MouseChshZRL_PYTHON_HOME% | CALL findstr \C\PROG\Python\ > NUL && (
	:: Include string then run this cmd
	GOTO AutoCall
) || (
	:: Not include string then run this cmd
	GOTO ErrorInfo
)
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------vpythonw.bat
:AutoCall
SETLOCAL ENABLEDELAYEDEXPANSION
SET MouseChshZRL_ALL_Params=%*
SET MouseChshZRL_First_Param=%1
SET "MouseChshZRL_Other_Params=!MouseChshZRL_ALL_Params:%MouseChshZRL_First_Param%=!"
IF EXIST %MouseChshZRL_Zone_Root%\C\var\py-%MouseChshZRL_First_Param%\Scripts\pythonw.exe (
	SET PYTHON_HOME=%MouseChshZRL_Zone_Root%\C\var\py-%MouseChshZRL_First_Param%
	SET PYTHONHOME=%PYTHONHOME%
	ECHO Run Python in Virtual Environments - %MouseChshZRL_First_Param%
	ECHO ::: pythonw %MouseChshZRL_Other_Params%
	%MouseChshZRL_Zone_Root%\C\var\py-%MouseChshZRL_First_Param%\Scripts\pythonw.exe %MouseChshZRL_Other_Params%
) ELSE (
	ECHO Python Virtual Environments - %MouseChshZRL_First_Param% is NOT exist!
)
ENDLOCAL
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------vpythonw.bat
:ErrorInfo
ECHO vpythonw must run with python in PROG folder, var folder is auto called with vpythonw
GOTO END
REM ================================================================================================================================vpythonw.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************vpythonw.bat****
