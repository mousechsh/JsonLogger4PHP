@REM !!!!!!!!debug.bat
@REM ********************************************************************************************************************************debug.bat
@ECHO OFF
REM ================================================================================================================================debug.bat
IF /I "%1"=="on" GOTO DebugOn
IF /I "%1"=="off" GOTO DebugOff
IF "%MouseChshZRL_DEBUG%"=="DEBUG" GOTO DebugOff
REM --------------------------------------------------------------------------------------------------------------------------------debug.bat
:DebugOn
SET MouseChshZRL_DEBUG=DEBUG
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------debug.bat
:DebugOff
SET MouseChshZRL_DEBUG=
REM --------------------------------------------------------------------------------------------------------------------------------debug.bat
:END
IF "%MouseChshZRL_UAC%"=="0" (
	IF "%MouseChshZRL_DEBUG%"=="DEBUG" (
		PROMPT MouseChshCLI[$P]!$G
	) ELSE (
		PROMPT MouseChshCLI[$P]$G
	)
) ELSE (
	IF "%MouseChshZRL_UAC%"=="1" (
		IF "%MouseChshZRL_DEBUG%"=="DEBUG" (
			PROMPT MouseChshCLI[$P]!#
		) ELSE (
			PROMPT MouseChshCLI[$P]#
		)
	)
)
REM ********************************************************************************************************************************debug.bat****
