@REM !!!!!!!!ndisasm.bat
@REM ********************************************************************************************************************************ndisasm.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================ndisasm.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------ndisasm.bat
SET MouseChshZRL_ProgName=NASM
SET MouseChshZRL_ProgDir=%MouseChshZRL_Zone_Root%\C\PROG\us.NASM
SET MouseChshZRL_ProgFile=%MouseChshZRL_ProgDir%\ndisasm.exe
REM --------------------------------------------------------------------------------------------------------------------------------ndisasm.bat
ECHO Running [%MouseChshZRL_ProgName%]
IF EXIST "%MouseChshZRL_ProgFile%" CALL "%MouseChshZRL_ProgFile%" %*
REM ================================================================================================================================ndisasm.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************ndisasm.bat****
