@REM !!!!!!!!cer.bat
@REM ********************************************************************************************************************************cer.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================cer.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------cer.bat
SET MouseChsh_Temp=%1
SET MouseChsh_Temp_8=%MouseChsh_Temp:~-8%
REM --------------------------------------------------------------------------------------------------------------------------------cer.bat
IF "%1"=="" (
	IF EXIST "%SYSTEMROOT%\System32\mmc.exe" CALL "%SYSTEMROOT%\System32\mmc.exe" certmgr.msc
)
IF "%MouseChsh_Temp_8%"==".cer.pem" (
	IF EXIST "%SystemRoot%\System32\rundll32.exe" CALL "%SystemRoot%\System32\rundll32.exe" cryptext.dll,CryptExtOpenCER %1
)
IF "%MouseChsh_Temp_8%"==".crt.pem" (
	IF EXIST "%SystemRoot%\System32\rundll32.exe" CALL "%SystemRoot%\System32\rundll32.exe" cryptext.dll,CryptExtOpenCER %1
)
IF "%MouseChsh_Temp_8%"==".csr.pem" (
	IF EXIST "%SystemRoot%\notepad.exe" CALL "%SystemRoot%\notepad.exe" %1
)
IF "%MouseChsh_Temp_8%"==".crl.pem" (
	IF EXIST "%SystemRoot%\System32\rundll32.exe" CALL "%SystemRoot%\System32\rundll32.exe" cryptext.dll,CryptExtOpenCRL %1
)
IF "%MouseChsh_Temp_8%"==".key.pem" (
	IF EXIST "%SystemRoot%\notepad.exe" CALL "%SystemRoot%\notepad.exe" %1
)
IF "%MouseChsh_Temp_8%"==".pfx.der" (
	IF EXIST "%SystemRoot%\System32\rundll32.exe" CALL "%SystemRoot%\System32\rundll32.exe" cryptext.dll,CryptExtOpenPFX %1
)
REM ================================================================================================================================cer.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************cer.bat****
