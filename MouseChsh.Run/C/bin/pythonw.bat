@REM !!!!!!!!pythonw.bat
@REM ********************************************************************************************************************************pythonw.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================pythonw.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------pythonw.bat
SET PYTHON_HOME=%MouseChshZRL_PYTHON_HOME%
SET PYTHONHOME=%PYTHONHOME%
REM --------------------------------------------------------------------------------------------------------------------------------pythonw.bat
set PYTHONIOENCODING=UTF-8
IF EXIST "%MouseChshZRL_PYTHON_HOME%\pythonw.exe" (
	CALL "%MouseChshZRL_PYTHON_HOME%\pythonw.exe" %*
) ELSE (
	IF EXIST "%MouseChshZRL_PYTHON_HOME%\Scripts\pythonw.exe" CALL "%MouseChshZRL_PYTHON_HOME%\Scripts\pythonw.exe" %*
)
REM ================================================================================================================================pythonw.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************pythonw.bat****
