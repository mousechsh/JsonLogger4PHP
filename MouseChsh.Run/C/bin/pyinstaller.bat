@REM !!!!!!!!pyinstaller.bat
@REM ********************************************************************************************************************************pyinstaller.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================pyinstaller.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------pyinstaller.bat
SET PYTHON_HOME=%MouseChshZRL_PYTHON_HOME%
SET PYTHONHOME=%PYTHONHOME%
REM --------------------------------------------------------------------------------------------------------------------------------pyinstaller.bat
set PYTHONIOENCODING=UTF-8
IF EXIST "%MouseChshZRL_PYTHON_HOME%\pyinstaller.exe" (
	CALL "%MouseChshZRL_PYTHON_HOME%\pyinstaller.exe" %*
) ELSE (
	IF EXIST "%MouseChshZRL_PYTHON_HOME%\Scripts\pyinstaller.exe" CALL "%MouseChshZRL_PYTHON_HOME%\Scripts\pyinstaller.exe" %*
)
REM ================================================================================================================================pyinstaller.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************pyinstaller.bat****
