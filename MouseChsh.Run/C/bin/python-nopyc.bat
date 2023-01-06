@REM !!!!!!!!python-nopyc.bat
@REM ********************************************************************************************************************************python-nopyc.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================python-nopyc.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------python-nopyc.bat
SET PYTHON_HOME=%MouseChshZRL_PYTHON_HOME%
SET PYTHONHOME=%PYTHONHOME%
SET PYTHONDONTWRITEBYTECODE=1
REM --------------------------------------------------------------------------------------------------------------------------------python-nopyc.bat
SET PYTHONIOENCODING=UTF-8
IF EXIST "%MouseChshZRL_PYTHON_HOME%\python.exe" (
	CALL "%MouseChshZRL_PYTHON_HOME%\python.exe" %*
) ELSE (
	IF EXIST "%MouseChshZRL_PYTHON_HOME%\Scripts\python.exe" CALL "%MouseChshZRL_PYTHON_HOME%\Scripts\python.exe" %*
)
REM ================================================================================================================================python-nopyc.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************python-nopyc.bat****
