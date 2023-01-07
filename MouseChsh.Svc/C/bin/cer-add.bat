@REM !!!!!!!!cer-add.bat
@REM ********************************************************************************************************************************cer-add.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================cer-add.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------cer-add.bat
SET MouseChsh_Temp=%1
SET MouseChsh_Temp_8=%MouseChsh_Temp:~-8%
IF "%MouseChsh_Temp_8%"==".cer.pem" (
	IF EXIST "%SystemRoot%\System32\rundll32.exe" CALL "%SystemRoot%\System32\rundll32.exe" cryptext.dll,CryptExtAddCER %1
)
IF "%MouseChsh_Temp_8%"==".crt.pem" (
	IF EXIST "%SystemRoot%\System32\rundll32.exe" CALL "%SystemRoot%\System32\rundll32.exe" cryptext.dll,CryptExtAddCER %1
)
IF "%MouseChsh_Temp_8%"==".crl.pem" (
	IF EXIST "%SystemRoot%\System32\rundll32.exe" CALL "%SystemRoot%\System32\rundll32.exe" cryptext.dll,CryptExtAddCRL %1
)
IF "%MouseChsh_Temp_8%"==".pfx.der" (
	IF EXIST "%SystemRoot%\System32\rundll32.exe" CALL "%SystemRoot%\System32\rundll32.exe" cryptext.dll,CryptExtAddPFX %1
)
REM ================================================================================================================================cer-add.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************cer-add.bat****
