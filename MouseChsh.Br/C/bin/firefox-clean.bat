@REM !!!!!!!!firefox-clean.bat
@REM ********************************************************************************************************************************firefox-clean.bat
@ECHO OFF
REM ================================================================================================================================firefox-clean.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------firefox-clean.bat
IF EXIST "%MouseChshZRL_Root%\C\bin\wait.bat" CALL "%MouseChshZRL_Root%\C\bin\wait.bat" proc firefox.exe
RMDIR /S /Q %USERPROFILE%\AppData\Local\Mozilla
RMDIR /S /Q %USERPROFILE%\AppData\Roaming\Mozilla
REM --------------------------------------------------------------------------------------------------------------------------------firefox-clean.bat
SET MouseChshZRL_ProgName=Firefox
SET MouseChshZRL_ProgDir=Firefox
SET MouseChshZRL_ProgFile=firefox.exe
REM --------------------------------------------------------------------------------------------------------------------------------firefox-clean.bat
CALL "PACK"
REM ================================================================================================================================firefox-clean.bat
IF NOT EXIST %MouseChshZRL_Temp%\FirefoxProfile GOTO END
CALL "firefox-zip.bat"
REM ================================================================================================================================firefox-clean.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************firefox-clean.bat****
