@REM !!!!!!!!python-venv.bat
@REM ********************************************************************************************************************************python-venv.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================python-venv.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------python-venv.bat
SET PYTHON_HOME=%MouseChshZRL_PYTHON_HOME%
SET PYTHONHOME=%PYTHONHOME%
REM --------------------------------------------------------------------------------------------------------------------------------python-venv.bat
ECHO Current Python Home is %MouseChshZRL_PYTHON_HOME%
IF "%1"=="" (
	ECHO Need a param for the name of Virtual Environments
	GOTO END
)
ECHO %MouseChshZRL_PYTHON_HOME% | CALL findstr \C\PROG\Python\ > NUL && (
	:: Include string then run this cmd
	GOTO RunNow
) || (
	:: Not include string then run this cmd
	GOTO ErrorInfo
)
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------python-venv.bat
:RunNow
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\python.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\python.bat" -m venv %MouseChshZRL_Zone_Root%\C\var\py-%1
REM ================================================================================================================================python-venv.bat
ECHO @REM !!!!!!!!MouseChshPython.bat> "%MouseChshZRL_Zone_Root%\C\etc\MouseChshPython.bat-v-%1"
ECHO @REM ********************************************************************************************************************************MouseChshPython.bat>> "%MouseChshZRL_Zone_Root%\C\etc\MouseChshPython.bat-v-%1"
ECHO @ECHO OFF>> "%MouseChshZRL_Zone_Root%\C\etc\MouseChshPython.bat-v-%1"
ECHO REM ================================================================================================================================MouseChshPython.bat>> "%MouseChshZRL_Zone_Root%\C\etc\MouseChshPython.bat-v-%1"
ECHO CALL "%%~dp0..\..\MouseChsh.bat">> "%MouseChshZRL_Zone_Root%\C\etc\MouseChshPython.bat-v-%1"
ECHO REM ================================================================================================================================MouseChshPython.bat>> "%MouseChshZRL_Zone_Root%\C\etc\MouseChshPython.bat-v-%1"
ECHO SET MouseChshZRL_PYTHON_HOME=%%MouseChshZRL_Zone_Root%%\C\var\py-%1>> "%MouseChshZRL_Zone_Root%\C\etc\MouseChshPython.bat-v-%1"
ECHO REM --------------------------------------------------------------------------------------------------------------------------------MouseChshPython.bat>> "%MouseChshZRL_Zone_Root%\C\etc\MouseChshPython.bat-v-%1"
ECHO ECHO Current Python Version in Virtual Environments (%1)>> "%MouseChshZRL_Zone_Root%\C\etc\MouseChshPython.bat-v-%1"
ECHO IF "%%1"=="sw" (>> "%MouseChshZRL_Zone_Root%\C\etc\MouseChshPython.bat-v-%1"
ECHO 	ECHO "Switching Mode...">> "%MouseChshZRL_Zone_Root%\C\etc\MouseChshPython.bat-v-%1"
ECHO )>> "%MouseChshZRL_Zone_Root%\C\etc\MouseChshPython.bat-v-%1"
ECHO REM ********************************************************************************************************************************MouseChshPython.bat****>> "%MouseChshZRL_Zone_Root%\C\etc\MouseChshPython.bat-v-%1"
REM --------------------------------------------------------------------------------------------------------------------------------python-venv.bat
ECHO Python in Virtual Environments - %1 is created
GOTO END
REM ================================================================================================================================python-venv.bat
:ErrorInfo
ECHO python-venv must run with python in PROG folder
REM ================================================================================================================================python-venv.bat
GOTO END
:END
ENDLOCAL
REM ********************************************************************************************************************************python-venv.bat****
