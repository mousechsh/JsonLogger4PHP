@REM !!!!!!!!MouseChsh.bat
@REM ********************************************************************************************************************************MouseChsh.bat
@REM [///C/Project/doc/MouseChsh/0000]
@ECHO off
IF EXIST %SYSTEMROOT%\system32\CHCP.COM CALL %SYSTEMROOT%\system32\CHCP.COM 65001
TITLE MouseChsh Environment Starter
ECHO Starting...
REM ================================================================================================================================MouseChsh.bat
REM [///C/Project/doc/MouseChsh/0000#pre]
IF NOT "%~n0" == "MouseChsh" (
	ECHO NOT MouseChsh Environment Starter!
	ECHO Press any key to continue...
	PAUSE > NUL
	EXIT
)
REM --------------------------------------------------------------------------------------------------------------------------------MouseChsh.bat
REM [///C/Project/doc/MouseChsh/0000#base]
ECHO Loading Profile...
SET MouseChshZRL_Boot=%~dp0
IF EXIST %MouseChshZRL_Boot%MouseChshProfile.bat CALL %MouseChshZRL_Boot%MouseChshProfile.bat
IF NOT "%MouseChshZRL_Boot%" == "%MouseChshZRL_Root%" (
	IF NOT "%MouseChshZRL_Boot%" == "%MouseChshZRL_Root%\" (
		ECHO MouseChsh Environment Starter config ERROR!
		ECHO Boot from "%MouseChshZRL_Boot%",
		ECHO But root is "%MouseChshZRL_Root%"!
		ECHO Press any key to continue...
		PAUSE > NUL
		EXIT
	)
)
REM --------------------------------------------------------------------------------------------------------------------------------MouseChsh.bat
IF EXIST "%MouseChshZRL_Root%\C\SYS\MouseChshBoot.bat" CALL "%MouseChshZRL_Root%\C\SYS\MouseChshBoot.bat" %*
TITLE MouseChsh Environment CLI - Windows
REM ********************************************************************************************************************************MouseChsh.bat****
