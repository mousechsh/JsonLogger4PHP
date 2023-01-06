@REM !!!!!!!!7z.bat
@REM ********************************************************************************************************************************7z.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================7z.bat
:: IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
:: ECHO %MouseChshZRL_Zone_Root%
REM --------------------------------------------------------------------------------------------------------------------------------7z.bat
IF "%1"=="" (
	IF "%MouseChshZRL_DEBUG%"=="DEBUG" (
		%~d0
		CD "%MouseChshZRL_Root%\C\PROG\org.7-zip"
		IF EXIST "%MouseChshZRL_Root%\C\PROG\org.7-zip\7zFM.exe" CALL "%MouseChshZRL_Root%\C\PROG\org.7-zip\7zFM.exe"
	) ELSE (
		IF EXIST "%MouseChshZRL_Root%\C\PROG\org.7-zip\7zFM.exe" START "7-Zip" /D "%MouseChshZRL_Root%\C\PROG\org.7-zip" "%MouseChshZRL_Root%\C\PROG\org.7-zip\7zFM.exe"
	)
) ELSE (
	IF EXIST "%MouseChshZRL_Root%\C\PROG\org.7-zip\7z.exe" CALL "%MouseChshZRL_Root%\C\PROG\org.7-zip\7z.exe" %*
)
REM ================================================================================================================================7z.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************7z.bat****
