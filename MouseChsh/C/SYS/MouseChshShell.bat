@REM !!!!!!!!MouseChshShell.bat
@REM ********************************************************************************************************************************MouseChshShell.bat
@ECHO OFF
REM ================================================================================================================================MouseChshShell.bat
IF "%MouseChshZRL_Sandbox%"=="1" GOTO ShellCmd
IF EXIST %USERPROFILE%\AppData\Local\Microsoft\WindowsApps\wt.exe GOTO ShellWt
REM --------------------------------------------------------------------------------------------------------------------------------MouseChshShell.bat
:ShellCmd
START "MouseChsh Environment CLI - Windows" /D "%MouseChshZRL_CD%"
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------MouseChshShell.bat
:ShellWt
START "MouseChsh Environment CLI - Windows" /D %MouseChshZRL_CD% %USERPROFILE%\AppData\Local\Microsoft\WindowsApps\wt.exe -d %MouseChshZRL_CD% --title "MouseChsh Environment CLI - Windows"
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------MouseChshShell.bat
:END
REM ********************************************************************************************************************************MouseChshShell.bat****
