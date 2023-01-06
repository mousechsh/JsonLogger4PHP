@REM !!!!!!!!pyarmor.bat
@REM ********************************************************************************************************************************pyarmor.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================pyarmor.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------pyarmor.bat
SET PYTHON_HOME=%MouseChshZRL_PYTHON_HOME%
SET PYTHONHOME=%PYTHONHOME%
REM --------------------------------------------------------------------------------------------------------------------------------pyarmor.bat
:: 命令行
:: pyarmor obfuscate -recursive *.py
:: 入口代码
:: from pytransform import pyarmor_runtime
:: pyarmor_runtime()
REM --------------------------------------------------------------------------------------------------------------------------------pyarmor.bat
set PYTHONIOENCODING=UTF-8
IF EXIST "%MouseChshZRL_PYTHON_HOME%\Scripts\pyarmor.exe" CALL "%MouseChshZRL_PYTHON_HOME%\Scripts\pyarmor.exe" obfuscate -recursive *.py
REM ================================================================================================================================pyarmor.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************pyarmor.bat****
