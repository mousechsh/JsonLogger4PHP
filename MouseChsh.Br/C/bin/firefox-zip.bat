@REM !!!!!!!!firefox-zip.bat
@REM ********************************************************************************************************************************firefox-zip.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================firefox-zip.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------firefox-zip.bat
::IF EXIST "%MouseChshZRL_Zone_Root%\C\PROG\Firefox\firefox.exe" GOTO Clean
::GOTO END
::REM --------------------------------------------------------------------------------------------------------------------------------firefox-zip.bat
:::Clean
IF EXIST "%MouseChshZRL_Root%\C\bin\wait.bat" CALL "%MouseChshZRL_Root%\C\bin\wait.bat" proc firefox.exe
RMDIR /S /Q %USERPROFILE%\AppData\Local\Mozilla
RMDIR /S /Q %USERPROFILE%\AppData\Roaming\Mozilla
REM --------------------------------------------------------------------------------------------------------------------------------firefox-zip.bat
IF NOT EXIST "%MouseChshZRL_Zone_Root%\C\bin\mozlz4.bat" GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------firefox-zip.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\FirefoxProfile" GOTO NextStep
IF NOT EXIST "%MouseChshZRL_Temp%\FirefoxProfile" GOTO END
CALL XCOPY /E /V /Y %MouseChshZRL_Temp%\FirefoxProfile\ %MouseChshZRL_Zone_Root%\C\USER\MouseChsh\FirefoxProfile\
REM --------------------------------------------------------------------------------------------------------------------------------firefox-zip.bat
:NextStep
SET MouseChshZRL_IF_Path=%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\FirefoxProfile
SET MouseChshZRL_IF_Path=%MouseChshZRL_IF_Path:\=/%
SET MouseChshZRL_IF_Path2=%MouseChshZRL_Temp%\FirefoxProfile
SET MouseChshZRL_IF_Path2=%MouseChshZRL_IF_Path2:\=/%
CALL "%MouseChshZRL_Zone_Root%\C\bin\mozlz4.bat" -x "%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\FirefoxProfile\addonStartup.json.lz4" "%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\FirefoxProfile\addonStartup.json"
ECHO Check the addons' path must be [%MouseChshZRL_IF_Path%]!!! If has [%MouseChshZRL_IF_Path2%] must be change to [%MouseChshZRL_IF_Path%], then save and close the file...
CALL notepad "%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\FirefoxProfile\addonStartup.json"
CALL "%MouseChshZRL_Zone_Root%\C\bin\mozlz4.bat" -z "%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\FirefoxProfile\addonStartup.json" "%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\FirefoxProfile\addonStartup.json.lz4"
REM --------------------------------------------------------------------------------------------------------------------------------firefox-zip.bat
IF EXIST "%MouseChshZRL_Root%\C\bin\7z.bat" GOTO Zip
GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------firefox-zip.bat
:Zip
IF NOT EXIST "%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\FirefoxProfile.count" ECHO 0 >"%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\FirefoxProfile.count"
SET /P MouseChshZRL_IF_String=<"%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\FirefoxProfile.count"
SET /A MouseChshZRL_IF_Count=%MouseChshZRL_IF_String% * 1
ECHO Current Profile Zip number is %MouseChshZRL_IF_Count%
CALL "%MouseChshZRL_Root%\C\bin\7z.bat" a "%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\FirefoxProfile_%MouseChshZRL_IF_Count%.7z" "%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\FirefoxProfile\" -snl
SET /A MouseChshZRL_IF_Count=%MouseChshZRL_IF_Count% + 1
ECHO The next Profile Zip number is %MouseChshZRL_IF_Count%
ECHO %MouseChshZRL_IF_Count% >"%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\FirefoxProfile.count"
ECHO %MouseChshZRL_IF_String% >"%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\FirefoxProfile.current"
REM --------------------------------------------------------------------------------------------------------------------------------firefox-zip.bat
RMDIR /S /Q "%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\FirefoxProfile\"
REM ================================================================================================================================firefox-zip.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************firefox-zip.bat****
