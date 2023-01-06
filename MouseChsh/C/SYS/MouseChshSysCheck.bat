@REM !!!!!!!!MouseChshSysCheck.bat
@REM ********************************************************************************************************************************MouseChshSysCheck.bat
@ECHO OFF
REM ================================================================================================================================MouseChshSysCheck.bat
DEL "%SystemDrive%\.mousechsh"
ECHO 1 > "%SystemDrive%\.mousechsh"
IF EXIST "%MouseChshZRL_Sandbox%\drive\%SystemDrive:~0,1%\.mousechsh" (
	SET MouseChshZRL_Sandbox=1
) ELSE (
	SET MouseChshZRL_Sandbox=0
)
DEL "%SystemDrive%\.mousechsh"
REM ================================================================================================================================MouseChshSysCheck.bat
IF "%PROCESSOR_ARCHITECTURE%"=="x86" GOTO B32
IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" GOTO B64
IF EXIST %windir%\SysWOW64 GOTO B64
GOTO B32
REM --------------------------------------------------------------------------------------------------------------------------------MouseChshSysCheck.bat
:B32
ECHO Process is run at 32-bit mode
SET MouseChshZRL_ProcBitMode=32
GOTO END
:B64
ECHO Process is run at 64-bit mode
SET MouseChshZRL_ProcBitMode=64
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------MouseChshSysCheck.bat
:END
REM ********************************************************************************************************************************MouseChshSysCheck.bat****
