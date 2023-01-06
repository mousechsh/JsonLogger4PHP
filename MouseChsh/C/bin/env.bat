@REM !!!!!!!!env.bat
@REM ********************************************************************************************************************************env.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================env.bat
SET MouseChshZRL_Target=%1
SET MouseChshZRL_TargetTemp=%2
SET MouseChshZRL_Zone1=%3
SET MouseChshZRL_Zone2=%4
SET MouseChshZRL_Zone3=%5
SET MouseChshZRL_Zone4=%6
SET MouseChshZRL_Zone5=%7
IF "%MouseChshZRL_Target%"=="" (
	ECHO Need Target!
	GOTO END
)
IF EXIST %MouseChshZRL_Target% (
	IF NOT EXIST %MouseChshZRL_Target%\MouseChsh.bat (
		ECHO Target is not empty or not an env target!
		GOTO END
	)
)
IF "%MouseChshZRL_TargetTemp%"=="" (
	ECHO Need Temp path!
	GOTO END
)
REM --------------------------------------------------------------------------------------------------------------------------------env.bat
ECHO Making Basic MouseChshCLI
MKDIR %MouseChshZRL_Target%
MKDIR %MouseChshZRL_Target%\C
MKDIR %MouseChshZRL_Target%\C\bin
MKDIR %MouseChshZRL_Target%\C\dev
MKDIR %MouseChshZRL_Target%\C\etc
MKDIR %MouseChshZRL_Target%\C\lib
MKDIR %MouseChshZRL_Target%\C\PROG
MKDIR %MouseChshZRL_Target%\C\sbin
MKDIR %MouseChshZRL_Target%\C\SYS
MKDIR %MouseChshZRL_Target%\C\USER\MouseChsh
MKDIR "%MouseChshZRL_Target%\C\USER\MouseChsh\3D Objects"
MKDIR "%MouseChshZRL_Target%\C\USER\MouseChsh\Contacts"
MKDIR "%MouseChshZRL_Target%\C\USER\MouseChsh\Desktop"
MKDIR "%MouseChshZRL_Target%\C\USER\MouseChsh\Documents"
MKDIR "%MouseChshZRL_Target%\C\USER\MouseChsh\Downloads"
MKDIR "%MouseChshZRL_Target%\C\USER\MouseChsh\Favorites"
MKDIR "%MouseChshZRL_Target%\C\USER\MouseChsh\Links"
MKDIR "%MouseChshZRL_Target%\C\USER\MouseChsh\Mail"
MKDIR "%MouseChshZRL_Target%\C\USER\MouseChsh\Music"
MKDIR "%MouseChshZRL_Target%\C\USER\MouseChsh\OneDrive"
MKDIR "%MouseChshZRL_Target%\C\USER\MouseChsh\Pictures"
MKDIR "%MouseChshZRL_Target%\C\USER\MouseChsh\Saved Games"
MKDIR "%MouseChshZRL_Target%\C\USER\MouseChsh\Searches"
MKDIR "%MouseChshZRL_Target%\C\USER\MouseChsh\Videos"
MKDIR "%MouseChshZRL_Target%\C\USER\MouseChsh\Work"
MKDIR %MouseChshZRL_Target%\C\var
COPY /Y /V %MouseChshZRL_Root%\MouseChsh.bat %MouseChshZRL_Target%\MouseChsh.bat
CALL XCOPY /E /V /Y %MouseChshZRL_Root%\C\bin\ %MouseChshZRL_Target%\C\bin\
CALL XCOPY /E /V /Y %MouseChshZRL_Root%\C\PROG\ %MouseChshZRL_Target%\C\PROG\
CALL XCOPY /E /V /Y %MouseChshZRL_Root%\C\SYS\ %MouseChshZRL_Target%\C\SYS\
CALL XCOPY /E /V /Y %MouseChshZRL_Root%\C\sbin\ %MouseChshZRL_Target%\C\sbin\
REM --------------------------------------------------------------------------------------------------------------------------------env.bat
ECHO @REM !!!!!!!!MouseChshProfile.bat>%MouseChshZRL_Target%\MouseChshProfile.bat
ECHO @REM ********************************************************************************************************************************MouseChshProfile.bat>>%MouseChshZRL_Target%\MouseChshProfile.bat
ECHO @REM This file is auto make by MouseChsh>>%MouseChshZRL_Target%\MouseChshProfile.bat
ECHO @REM ********************************************************************************************************************************MouseChshProfile.bat>>%MouseChshZRL_Target%\MouseChshProfile.bat
ECHO @ECHO OFF>>%MouseChshZRL_Target%\MouseChshProfile.bat
ECHO REM ================================================================================================================================MouseChshProfile.bat>>%MouseChshZRL_Target%\MouseChshProfile.bat
ECHO SET MouseChshZRL_Root=%MouseChshZRL_Target%>>%MouseChshZRL_Target%\MouseChshProfile.bat
ECHO SET MouseChshZRL_Temp=%MouseChshZRL_TargetTemp%>>%MouseChshZRL_Target%\MouseChshProfile.bat
ECHO SET MouseChshZRL_Sandbox=R:\Sandbox\MouseChsh\DefaultBox>>%MouseChshZRL_Target%\MouseChshProfile.bat
ECHO REM ********************************************************************************************************************************MouseChshProfile.bat****>>%MouseChshZRL_Target%\MouseChshProfile.bat
REM ================================================================================================================================env.bat
GOTO MakeZoneNext
:MakeZone
ECHO Making Zone "%1" of MouseChshCLI
IF "%1"=="" GOTO :EOF
IF NOT EXIST %MouseChshZRL_Root%.%1 (
	ECHO Zone "%1" is not exist!
	GOTO :EOF
)
MKDIR %MouseChshZRL_Target%.%1\C
MKDIR %MouseChshZRL_Target%.%1\C\bin
MKDIR %MouseChshZRL_Target%.%1\C\etc
MKDIR %MouseChshZRL_Target%.%1\C\lib
MKDIR %MouseChshZRL_Target%.%1\C\PROG
MKDIR %MouseChshZRL_Target%.%1\C\sbin
MKDIR %MouseChshZRL_Target%.%1\C\USER\MouseChsh
MKDIR %MouseChshZRL_Target%.%1\C\var
COPY /Y /V %MouseChshZRL_Root%\C\dev\path-%1.bat %MouseChshZRL_Target%\C\dev\path-%1.bat
COPY /Y /V %MouseChshZRL_Root%\C\etc\MouseChshZone-%1.bat %MouseChshZRL_Target%\C\etc\MouseChshZone-%1.bat
COPY /Y /V %MouseChshZRL_Root%.%1\MouseChsh.bat %MouseChshZRL_Target%.%1\MouseChsh.bat
CALL XCOPY /E /V /Y %MouseChshZRL_Root%.%1\C\bin\ %MouseChshZRL_Target%.%1\C\bin\
CALL XCOPY /E /V /Y %MouseChshZRL_Root%.%1\C\etc\ %MouseChshZRL_Target%.%1\C\etc\
CALL XCOPY /E /V /Y %MouseChshZRL_Root%.%1\C\lib\ %MouseChshZRL_Target%.%1\C\lib\
CALL XCOPY /E /V /Y %MouseChshZRL_Root%.%1\C\sbin\ %MouseChshZRL_Target%.%1\C\sbin\
GOTO :EOF
:MakeZoneNext
REM --------------------------------------------------------------------------------------------------------------------------------env.bat
IF /I "%MouseChshZRL_Zone1%"=="all" GOTO MakeAll
IF NOT "%MouseChshZRL_Zone1%"=="" (
	CALL :MakeZone %MouseChshZRL_Zone1%
)
IF NOT "%MouseChshZRL_Zone2%"=="" (
	CALL :MakeZone %MouseChshZRL_Zone2%
)
IF NOT "%MouseChshZRL_Zone3%"=="" (
	CALL :MakeZone %MouseChshZRL_Zone3%
)
IF NOT "%MouseChshZRL_Zone4%"=="" (
	CALL :MakeZone %MouseChshZRL_Zone4%
)
IF NOT "%MouseChshZRL_Zone5%"=="" (
	CALL :MakeZone %MouseChshZRL_Zone5%
)
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------env.bat
:MakeAll
SETLOCAL ENABLEDELAYEDEXPANSION
FOR /R "%MouseChshZRL_Root%\C\dev" %%i IN (path-*.bat) DO (
	SET MouseChshZRL_IF_String=%%~ni
	SET MouseChshZRL_IF_String=!MouseChshZRL_IF_String:~5!
	CALL :MakeZone !MouseChshZRL_IF_String!
)
ENDLOCAL
REM ================================================================================================================================env.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************env.bat****
