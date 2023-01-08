@REM !!!!!!!!git.bat
@REM ********************************************************************************************************************************git.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================git.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------git.bat
SET MouseChshZRL_ProgName=Git
SET MouseChshZRL_ProgDir=%MouseChshZRL_Zone_Root%\C\PROG\com.git-scm.Git
SET MouseChshZRL_ProgFile=%MouseChshZRL_ProgDir%\bin\git.exe
REM --------------------------------------------------------------------------------------------------------------------------------git.bat
ECHO Running [%MouseChshZRL_ProgName%]
IF EXIST "%MouseChshZRL_ProgFile%" CALL "%MouseChshZRL_ProgFile%" config --global user.name "Zhang Ruilong"
IF EXIST "%MouseChshZRL_ProgFile%" CALL "%MouseChshZRL_ProgFile%" config --global user.email admin@mousechsh.com
IF EXIST "%MouseChshZRL_ProgFile%" CALL "%MouseChshZRL_ProgFile%" %*
REM ================================================================================================================================git.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************git.bat****
