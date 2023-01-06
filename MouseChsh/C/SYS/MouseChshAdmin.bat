@REM !!!!!!!!MouseChshAdmin.bat
@REM ********************************************************************************************************************************MouseChshAdmin.bat
@ECHO OFF
REM ================================================================================================================================MouseChshAdmin.bat
COLOR 0C
REM --------------------------------------------------------------------------------------------------------------------------------MouseChshAdmin.bat
SETLOCAL
SET MouseChshZRL_TmpFileName=%MouseChshZRL_Temp%\MouseChshZRL%RANDOM%%RANDOM%%RANDOM%.bat
ECHO @DEL /Q %MouseChshZRL_TmpFileName% ^&^& %MouseChshZRL_Root%\MouseChsh.bat %* > %MouseChshZRL_TmpFileName%
%SYSTEMROOT%\System32\wscript.exe %MouseChshZRL_Root%\C\SYS\MouseChshUAC.vbs %MouseChshZRL_TmpFileName%
ENDLOCAL
REM ********************************************************************************************************************************MouseChshAdmin.bat****
