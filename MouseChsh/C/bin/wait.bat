@REM !!!!!!!!wait.bat
@REM ********************************************************************************************************************************wait.bat
@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
REM ================================================================================================================================wait.bat
IF /I "%1"=="proc" GOTO Proc
IF /I "%1"=="no-proc" GOTO NoProc
IF /I "%1"=="time" GOTO TimeLong
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------wait.bat
:Proc
IF /I "%2"=="" GOTO END
ECHO Waiting [%2] stoping...
:LoopProc
FOR /F %%i IN ('%SYSTEMROOT%\System32\tasklist.exe ^| %SYSTEMROOT%\System32\find.exe /i "%2" /C') DO ( SET MouseChshZRL_IF_String=%%i)
IF "%MouseChshZRL_IF_String%"=="0" GOTO END
%SYSTEMROOT%\System32\timeout.exe /T 1 /NOBREAK >NUL
GOTO LoopProc
REM --------------------------------------------------------------------------------------------------------------------------------wait.bat
:NoProc
IF /I "%2"=="" GOTO END
ECHO Waiting [%2] starting...
:LoopNoProc
FOR /F %%i IN ('%SYSTEMROOT%\System32\tasklist.exe ^| %SYSTEMROOT%\System32\find.exe /i "%2" /C') DO ( SET MouseChshZRL_IF_String=%%i)
IF NOT "%MouseChshZRL_IF_String%"=="0" GOTO END
%SYSTEMROOT%\System32\timeout.exe /T 1 /NOBREAK >NUL
GOTO LoopNoProc
REM --------------------------------------------------------------------------------------------------------------------------------wait.bat
:TimeLong
ECHO Waiting...
SET /A MouseChshZRL_IF_Count=%2 * 1
IF %MouseChshZRL_IF_Count% == 0 PAUSE
%SYSTEMROOT%\System32\timeout.exe /T %MouseChshZRL_IF_Count% /NOBREAK >NUL
REM ================================================================================================================================wait.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************wait.bat****
