@REM !!!!!!!!firefox-ramdisk.bat
@REM ********************************************************************************************************************************firefox-ramdisk.bat
@ECHO OFF
REM ================================================================================================================================firefox-ramdisk.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------firefox-ramdisk.bat
IF NOT EXIST "%MouseChshZRL_Zone_Root%\C\bin\mozlz4.bat" GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------firefox-ramdisk.bat
SET MouseChshZRL_ProgName=Firefox with Profile in RamDisk
SET MouseChshZRL_ProgDir=%MouseChshZRL_Zone_Root%\C\PROG\Firefox
SET MouseChshZRL_ProgFile=%MouseChshZRL_ProgDir%\firefox.exe
REM --------------------------------------------------------------------------------------------------------------------------------firefox-ramdisk.bat
IF EXIST %MouseChshZRL_Zone_Root%\C\USER\MouseChsh\FirefoxProfile CALL XCOPY /E /V /Y %MouseChshZRL_Zone_Root%\C\USER\MouseChsh\FirefoxProfile\ %MouseChshZRL_Temp%\FirefoxProfile\
RMDIR /S /Q %MouseChshZRL_Zone_Root%\C\USER\MouseChsh\FirefoxProfile
REM --------------------------------------------------------------------------------------------------------------------------------firefox-ramdisk.bat
SET MouseChshZRL_IF_Path=%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\FirefoxProfile
SET MouseChshZRL_IF_Path=%MouseChshZRL_IF_Path:\=/%
SET MouseChshZRL_IF_Path2=%MouseChshZRL_Temp%\FirefoxProfile
SET MouseChshZRL_IF_Path2=%MouseChshZRL_IF_Path2:\=/%
CALL "%MouseChshZRL_Zone_Root%\C\bin\mozlz4.bat" -x "%MouseChshZRL_Temp%\FirefoxProfile\addonStartup.json.lz4" "%MouseChshZRL_Temp%\FirefoxProfile\addonStartup.json"
ECHO Replace the path from [%MouseChshZRL_IF_Path%] to [%MouseChshZRL_IF_Path2%], then save and close the file...
CALL notepad "%MouseChshZRL_Temp%\FirefoxProfile\addonStartup.json"
CALL "%MouseChshZRL_Zone_Root%\C\bin\mozlz4.bat" -z "%MouseChshZRL_Temp%\FirefoxProfile\addonStartup.json" "%MouseChshZRL_Temp%\FirefoxProfile\addonStartup.json.lz4"
REM --------------------------------------------------------------------------------------------------------------------------------firefox-ramdisk.bat
ECHO Running [%MouseChshZRL_ProgName%]
IF "%MouseChshZRL_DEBUG%"=="DEBUG" (
	%~d0
	CD "%MouseChshZRL_ProgDir%"
	IF EXIST "%MouseChshZRL_ProgFile%" CALL "%MouseChshZRL_ProgFile%" -profile "%MouseChshZRL_Temp%\FirefoxProfile"
) ELSE (
	IF EXIST "%MouseChshZRL_ProgFile%" START "%MouseChshZRL_ProgName%" /D "%MouseChshZRL_ProgDir%" "%MouseChshZRL_ProgFile%" -profile "%MouseChshZRL_Temp%\FirefoxProfile"
)
REM ================================================================================================================================firefox-ramdisk.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************firefox-ramdisk.bat****
