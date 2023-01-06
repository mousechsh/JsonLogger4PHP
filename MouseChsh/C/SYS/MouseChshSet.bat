@REM !!!!!!!!MouseChshSet.bat
@REM ********************************************************************************************************************************MouseChshSet.bat
@ECHO OFF
REM ================================================================================================================================MouseChshSet.bat
GOTO StartSetCmd
:Loopbat
IF /I "%1"=="ALLUSERSPROFILE" GOTO :EOF
IF /I "%1"=="APPDATA" GOTO :EOF
IF /I "%1"=="CommonProgramFiles" GOTO :EOF
IF /I "%1"=="CommonProgramFiles(x86)" GOTO :EOF
IF /I "%1"=="CommonProgramW6432" GOTO :EOF
IF /I "%1"=="COMPUTERNAME" GOTO :EOF
IF /I "%1"=="ComSpec" GOTO :EOF
IF /I "%1"=="LOCALAPPDATA" GOTO :EOF
IF /I "%1"=="LOGONSERVER" GOTO :EOF
IF /I "%1"=="MouseChshZRL_SandBox" GOTO :EOF
IF /I "%1"=="MouseChshZRL_OS_Path" GOTO :EOF
IF /I "%1"=="MouseChshZRL_OS_PathExt" GOTO :EOF
IF /I "%1"=="MouseChshZRL_Root" GOTO :EOF
IF /I "%1"=="MouseChshZRL_Temp" GOTO :EOF
IF /I "%1"=="NUMBER_OF_PROCESSORS" GOTO :EOF
IF /I "%1"=="OS" GOTO :EOF
IF /I "%1"=="PROCESSOR_ARCHITECTURE" GOTO :EOF
IF /I "%1"=="PROCESSOR_LEVEL" GOTO :EOF
IF /I "%1"=="PROCESSOR_REVISION" GOTO :EOF
IF /I "%1"=="ProgramData" GOTO :EOF
IF /I "%1"=="ProgramFiles" GOTO :EOF
IF /I "%1"=="ProgramFiles(x86)" GOTO :EOF
IF /I "%1"=="ProgramW6432" GOTO :EOF
IF /I "%1"=="PUBLIC" GOTO :EOF
IF /I "%1"=="SystemDrive" GOTO :EOF
IF /I "%1"=="SystemRoot" GOTO :EOF
IF /I "%1"=="Temp" GOTO :EOF
IF /I "%1"=="USERDOMAIN" GOTO :EOF
IF /I "%1"=="USERNAME" GOTO :EOF
IF /I "%1"=="USERPROFILE" GOTO :EOF
IF /I "%1"=="windir" GOTO :EOF
SET "%1="
GOTO :EOF
:StartSetCmd
REM --------------------------------------------------------------------------------------------------------------------------------MouseChshSet.bat
ECHO Check the system's origin path
IF /I "%MouseChshZRL_OS_Path%"=="" GOTO SaveSystemPath
ECHO It seems re-run MouseChsh now, the system's origin path will not be changed
GOTO CleaningExtraSet
:SaveSystemPath
ECHO Save the system's origin path
SET MouseChshZRL_OS_Path=%PATH%
SET MouseChshZRL_OS_PathExt=%PATHEXT%
:CleaningExtraSet
ECHO Cleanning extra set
FOR /F "delims==" %%i IN ('SET') DO (
	CALL :Loopbat "%%i"
)
SET PATHEXT=.EXE;.BAT
REM ********************************************************************************************************************************MouseChshSet.bat****
