@REM !!!!!!!!cl.bat
@REM ********************************************************************************************************************************cl.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================cl.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------cl.bat
IF NOT EXIST "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build" GOTO Download
REM --------------------------------------------------------------------------------------------------------------------------------cl.bat
SET MouseChshZRL_Temp_Drive=%CD:~0,2%
SET MouseChshZRL_Temp_Path=%CD%
PATH=%MouseChshZRL_OS_Path%
SET PATHEXT=%MouseChshZRL_OS_PathExt%
C:
CD C:\Program Files\Microsoft Visual Studio\2022\Community\
CALL "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars32.bat"
%MouseChshZRL_Temp_Drive%
CD %MouseChshZRL_Temp_Path%
SET
CALL cl %*
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------cl.bat
:Download
ECHO Need install Visual Studio first!
explorer https://visualstudio.microsoft.com/
REM ================================================================================================================================cl.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************cl.bat****
