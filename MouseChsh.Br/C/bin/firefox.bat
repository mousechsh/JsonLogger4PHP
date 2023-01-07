@REM !!!!!!!!firefox.bat
@REM ********************************************************************************************************************************firefox.bat
@ECHO OFF
REM ================================================================================================================================firefox.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------firefox.bat
IF NOT EXIST "%MouseChshZRL_Zone_Root%\C\bin\mozlz4.bat" GOTO END
REM --------------------------------------------------------------------------------------------------------------------------------firefox.bat
SET MouseChshZRL_ProgName=Firefox
SET MouseChshZRL_ProgDir=Firefox
SET MouseChshZRL_ProgFile=firefox.exe
REM --------------------------------------------------------------------------------------------------------------------------------firefox.bat
CALL "PRE"
REM ================================================================================================================================firefox.bat
IF EXIST %MouseChshZRL_Temp%\FirefoxProfile GOTO RunNow
IF EXIST %MouseChshZRL_Zone_Root%\C\USER\MouseChsh\FirefoxProfile GOTO CopyProfile
REM --------------------------------------------------------------------------------------------------------------------------------firefox.bat
SET /p MouseChshZRL_FirefoxProfile_current=<%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\FirefoxProfile.current
SET /A MouseChshZRL_FirefoxProfile_Count=%MouseChshZRL_FirefoxProfile_current% * 1
CALL "7z.bat" x "%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\FirefoxProfile_%MouseChshZRL_FirefoxProfile_Count%.7z" -o"%MouseChshZRL_Temp%\" -aoa
GOTO EditConfig
REM --------------------------------------------------------------------------------------------------------------------------------firefox.bat
:CopyProfile
CALL XCOPY /E /V /Y %MouseChshZRL_Zone_Root%\C\USER\MouseChsh\FirefoxProfile\ %MouseChshZRL_Temp%\FirefoxProfile\
RMDIR /S /Q %MouseChshZRL_Zone_Root%\C\USER\MouseChsh\FirefoxProfile
GOTO EditConfig
REM ================================================================================================================================firefox.bat
:EditConfig
SET MouseChshZRL_IF_Path=%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\FirefoxProfile
SET MouseChshZRL_IF_Path=%MouseChshZRL_IF_Path:\=/%
SET MouseChshZRL_IF_Path2=%MouseChshZRL_Temp%\FirefoxProfile
SET MouseChshZRL_IF_Path2=%MouseChshZRL_IF_Path2:\=/%
CALL "%MouseChshZRL_Zone_Root%\C\bin\mozlz4.bat" -x "%MouseChshZRL_Temp%\FirefoxProfile\addonStartup.json.lz4" "%MouseChshZRL_Temp%\FirefoxProfile\addonStartup.json"
ECHO Replace the path from [%MouseChshZRL_IF_Path%] to [%MouseChshZRL_IF_Path2%], then save and close the file...
CALL notepad "%MouseChshZRL_Temp%\FirefoxProfile\addonStartup.json"
CALL "%MouseChshZRL_Zone_Root%\C\bin\mozlz4.bat" -z "%MouseChshZRL_Temp%\FirefoxProfile\addonStartup.json" "%MouseChshZRL_Temp%\FirefoxProfile\addonStartup.json.lz4"
REM --------------------------------------------------------------------------------------------------------------------------------firefox.bat
:RunNow
::CALL "RUN" -profile "%MouseChshZRL_Zone_Root%\C\USER\MouseChsh\FirefoxProfile"
CALL "RUN" -profile "%MouseChshZRL_Temp%\FirefoxProfile"
REM ================================================================================================================================firefox.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************firefox.bat****
