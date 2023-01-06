@REM !!!!!!!!python.bat
@REM ********************************************************************************************************************************python.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================python.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------python.bat
SET PYTHON_HOME=%MouseChshZRL_PYTHON_HOME%
SET PYTHONHOME=%PYTHONHOME%
REM --------------------------------------------------------------------------------------------------------------------------------python.bat
set PYTHONIOENCODING=UTF-8
IF EXIST "%MouseChshZRL_PYTHON_HOME%\python.exe" (
	CALL "%MouseChshZRL_PYTHON_HOME%\python.exe" %*
) ELSE (
	IF EXIST "%MouseChshZRL_PYTHON_HOME%\Scripts\python.exe" CALL "%MouseChshZRL_PYTHON_HOME%\Scripts\python.exe" %*
)
REM ================================================================================================================================python.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************python.bat****
