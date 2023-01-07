@REM !!!!!!!!telnet.bat
@REM ********************************************************************************************************************************telnet.bat
@ECHO OFF
REM ================================================================================================================================telnet.bat
IF EXIST %SYSTEMROOT%\System32\telnet.exe GOTO RunNow
IF EXIST %SYSTEMROOT%\System32\OptionalFeatures.exe CALL %SYSTEMROOT%\System32\OptionalFeatures.exe
REM --------------------------------------------------------------------------------------------------------------------------------telnet.bat
:RunNow
IF EXIST %SYSTEMROOT%\System32\telnet.exe CALL %SYSTEMROOT%\System32\telnet.exe %*
:End
REM ********************************************************************************************************************************telnet.bat****
