@REM !!!!!!!!MouseChshBoot.bat
@REM ********************************************************************************************************************************MouseChshBoot.bat
@ECHO OFF
COLOR 07
ECHO Loading Boot file...
REM ================================================================================================================================MouseChshBoot.bat
IF NOT EXIST "%MouseChshZRL_Temp%" MKDIR "%MouseChshZRL_Temp%"
REM ================================================================================================================================MouseChshBoot.bat
IF EXIST "%MouseChshZRL_Root%\C\SYS\MouseChshSet.bat" CALL "%MouseChshZRL_Root%\C\SYS\MouseChshSet.bat"
IF EXIST "%MouseChshZRL_Root%\C\SYS\MouseChshSysCheck.bat" CALL "%MouseChshZRL_Root%\C\SYS\MouseChshSysCheck.bat"
REM ================================================================================================================================MouseChshBoot.bat
IF "%MouseChshZRL_Sandbox%"=="1" GOTO BootInUAC
>NUL 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
:: 如果 Error 标志被设置，则表示没有 admin 权限
IF "%ERRORLEVEL%" NEQ "0" (
	GOTO BootOutUAC
) ELSE (
	GOTO BootInUAC
)
:BootOutUAC
	SET MouseChshZRL_UAC=0
	PROMPT MouseChshCLI[$P]$G
	GOTO AfterUAC
:BootInUAC
	SET MouseChshZRL_UAC=1
	PROMPT MouseChshCLI[$P]#
	GOTO AfterUAC
:AfterUAC
REM --------------------------------------------------------------------------------------------------------------------------------MouseChshBoot.bat
FOR /R "%MouseChshZRL_Root%\C\etc" %%i IN (*.bat) DO (
	CALL %%i
)
REM --------------------------------------------------------------------------------------------------------------------------------MouseChshBoot.bat
IF EXIST "%MouseChshZRL_Root%\C\SYS\MouseChshPath.bat" CALL "%MouseChshZRL_Root%\C\SYS\MouseChshPath.bat"
REM --------------------------------------------------------------------------------------------------------------------------------MouseChshBoot.bat
SET MouseChshZRL_CD=%MouseChshZRL_Root%\C
SET MouseChshZRL_RUN=0
REM ================================================================================================================================MouseChshBoot.bat
IF EXIST "%MouseChshZRL_Root%\C\SYS\MouseChshRun.bat" CALL "%MouseChshZRL_Root%\C\SYS\MouseChshRun.bat" %*
IF "%MouseChshZRL_RUN%"=="-1" (
	IF EXIST "%MouseChshZRL_Root%\C\SYS\MouseChshAdmin.bat" CALL "%MouseChshZRL_Root%\C\SYS\MouseChshAdmin.bat" %*
)
IF "%MouseChshZRL_RUN%"=="2" (
	IF EXIST "%MouseChshZRL_Root%\C\SYS\MouseChshHelp.bat" CALL "%MouseChshZRL_Root%\C\SYS\MouseChshHelp.bat"
)
IF "%MouseChshZRL_RUN%"=="1" (
	ECHO Running command...
)
IF "%MouseChshZRL_RUN%"=="0" (
	IF EXIST "%MouseChshZRL_Root%\C\SYS\MouseChshShell.bat" CALL "%MouseChshZRL_Root%\C\SYS\MouseChshShell.bat"
)
REM ================================================================================================================================MouseChshBoot.bat
ECHO End of Starting...
COLOR 07
REM ********************************************************************************************************************************MouseChshBoot.bat****
