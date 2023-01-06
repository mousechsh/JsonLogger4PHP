@REM !!!!!!!!MouseChshPath.bat
@REM ********************************************************************************************************************************MouseChshPath.bat
@ECHO OFF
REM ================================================================================================================================MouseChshPath.bat
REM PATH=%SYSTEMROOT%\system32;%SYSTEMROOT%;%SYSTEMROOT%\System32\Wbem;%SYSTEMROOT%\System32\WindowsPowerShell\v1.0\
PATH=%MouseChshZRL_Root%\C\bin
IF "%MouseChshZRL_UAC%"=="1" SET PATH=%MouseChshZRL_Root%\C\sbin;%PATH%
REM --------------------------------------------------------------------------------------------------------------------------------MouseChshPath.bat
FOR /R "%MouseChshZRL_Root%\C\dev" %%i IN (path-*.bat) DO (
	CALL %%i
)
REM ********************************************************************************************************************************MouseChshPath.bat****
