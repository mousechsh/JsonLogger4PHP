@REM !!!!!!!!netbeans-clean.bat
@REM ********************************************************************************************************************************netbeans-clean.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================netbeans-clean.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------netbeans-clean.bat
SET MouseChshZRL_ProgName=NetBeans
SET MouseChshZRL_ProgDir=org.apache.NetBeans
SET MouseChshZRL_ProgFile=bin\netbeans64.exe
REM --------------------------------------------------------------------------------------------------------------------------------netbeans-clean.bat
SET PATHEXT=%MouseChshZRL_OS_PathExt%
REM --------------------------------------------------------------------------------------------------------------------------------netbeans-clean.bat
RMDIR "%USERPROFILE%\.m2"
RMDIR /S /Q "%USERPROFILE%\.m2"
RMDIR "%USERPROFILE%\AppData\Local\NetBeans"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\NetBeans"
RMDIR "%USERPROFILE%\AppData\Roaming\NetBeans"
RMDIR /S /Q "%USERPROFILE%\AppData\Roaming\NetBeans"
REM --------------------------------------------------------------------------------------------------------------------------------netbeans-clean.bat
CALL "PACK"
REM ================================================================================================================================netbeans-clean.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************netbeans-clean.bat****
