@REM !!!!!!!!pip-install.bat
@REM ********************************************************************************************************************************pip-install.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================pip-install.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------pip-install.bat
::IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\pip.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\pip.bat" install %* -i https://mirrors.aliyun.com/pypi/simple/
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\pip.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\pip.bat" install %* -i http://localhost:8081/repository/pypi/simple/
REM ================================================================================================================================pip-install.bat
:: Default Package for Python 3.9
:: Package    Version
:: ---------- -------
:: pip        upgrade
:: setuptools 58.1.0
REM ================================================================================================================================pip-install.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************pip-install.bat****
