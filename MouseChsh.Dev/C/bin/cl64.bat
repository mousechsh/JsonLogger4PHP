@REM !!!!!!!!cl64.bat
@REM ********************************************************************************************************************************cl64.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================cl64.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------cl64.bat
IF NOT EXIST "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build" GOTO Download
REM --------------------------------------------------------------------------------------------------------------------------------cl64.bat
SET MouseChshZRL_Temp_Drive=%CD:~0,2%
SET MouseChshZRL_Temp_Path=%CD%
PATH=%MouseChshZRL_OS_Path%
SET PATHEXT=%MouseChshZRL_OS_PathExt%
C:
CD C:\Program Files\Microsoft Visual Studio\2022\Community\
CALL "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat"
%MouseChshZRL_Temp_Drive%
CD %MouseChshZRL_Temp_Path%
SET
CALL cl %*
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------cl64.bat
:Download
ECHO Need install Visual Studio first!
explorer https://visualstudio.microsoft.com/
REM ================================================================================================================================cl64.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************cl64.bat****
