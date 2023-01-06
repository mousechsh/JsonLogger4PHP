@REM !!!!!!!!MouseChshRun.bat
@REM ********************************************************************************************************************************MouseChshRun.bat
@ECHO OFF
ECHO Running...
REM ================================================================================================================================MouseChshRun.bat
ECHO ^<^<^< MouseChsh %*
IF /I "%1"=="-h" GOTO S2
IF /I "%1"=="--help" GOTO S2
IF /I "%1"=="-u" GOTO Sp1
IF /I "%1"=="--uac" GOTO Sp1
IF /I "%1"=="-r" GOTO S1
IF /I "%1"=="--run" GOTO S1
IF /I "%1"=="-c" GOTO S1s
IF /I "%1"=="--run-with-uac" GOTO S1s
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------MouseChshRun.bat
:S2
SET MouseChshZRL_RUN=2
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------MouseChshRun.bat
:Sp1
IF "%MouseChshZRL_UAC%"=="0" SET MouseChshZRL_RUN=-1
IF "%MouseChshZRL_UAC%"=="1" SET MouseChshZRL_RUN=0
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------MouseChshRun.bat
:S1
SET MouseChshZRL_RUN=1
SETLOCAL
SET MouseChshZRL_TmpFileName=%MouseChshZRL_Temp%\MouseChshZRL%RANDOM%%RANDOM%%RANDOM%.bat
SET MouseChshZRL_TmpParams=%*
IF /I "%1"=="-r" SET MouseChshZRL_TmpParams=%MouseChshZRL_TmpParams:~2%
IF /I "%1"=="--run" SET MouseChshZRL_TmpParams=%MouseChshZRL_TmpParams:~5%
IF /I "%1"=="-c" SET MouseChshZRL_TmpParams=%MouseChshZRL_TmpParams:~2%
IF /I "%1"=="--run-with-uac" SET MouseChshZRL_TmpParams=%MouseChshZRL_TmpParams:~14%
ECHO %MouseChshZRL_TmpParams% > %MouseChshZRL_TmpFileName%
CALL %MouseChshZRL_TmpFileName%
DEL /Q %MouseChshZRL_TmpFileName%
ENDLOCAL
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------MouseChshRun.bat
:S1s
IF "%MouseChshZRL_UAC%"=="1" GOTO S1
SET MouseChshZRL_RUN=-1
REM --------------------------------------------------------------------------------------------------------------------------------MouseChshRun.bat
:END
REM ********************************************************************************************************************************MouseChshRun.bat****
