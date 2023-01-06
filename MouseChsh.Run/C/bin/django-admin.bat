@REM !!!!!!!!django-admin.bat
@REM ********************************************************************************************************************************django-admin.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================django-admin.bat
CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------django-admin.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\python.bat" GOTO Py39Call
GOTO END
:Py39Call
IF EXIST "%MouseChshZRL_PYTHON_HOME%\Scripts\django-admin.exe" GOTO PyVenvCall
CALL "%MouseChshZRL_Zone_Root%\C\bin\python.bat" "%MouseChshZRL_Zone_Root%\C\PROG\Python\Python39\Scripts\django-admin.exe" %*
GOTO END
:PyVenvCall
CALL "%MouseChshZRL_Zone_Root%\C\bin\python.bat" "%MouseChshZRL_PYTHON_HOME%\Scripts\django-admin.exe" %*
REM ================================================================================================================================django-admin.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************django-admin.bat****
