@REM !!!!!!!!clean.bat
@REM ********************************************************************************************************************************clean.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================clean.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------clean.bat
ECHO ^>^>^> Cleaning [MySQL Workbench]...
RMDIR "%USERPROFILE%\AppData\Roaming\MySQL"
RMDIR /S /Q "%USERPROFILE%\AppData\Roaming\MySQL"
REM --------------------------------------------------------------------------------------------------------------------------------clean.bat
ECHO ^>^>^> Cleaning [pgAdmin]...
RMDIR "%USERPROFILE%\AppData\Local\pgadmin"
RMDIR "%USERPROFILE%\AppData\Local\pgadmin"
RMDIR "%USERPROFILE%\AppData\Local\pgadmin4"
RMDIR "%USERPROFILE%\AppData\Roaming\pgadmin"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\pgadmin"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\pgadmin"
RMDIR /S /Q "%USERPROFILE%\AppData\Local\pgadmin4"
RMDIR /S /Q "%USERPROFILE%\AppData\Roaming\pgadmin"
REM --------------------------------------------------------------------------------------------------------------------------------clean.bat
ECHO ^>^>^> Cleaning [SQuirreL SQL Client]...
RMDIR "%USERPROFILE%\.squirrel-sql"
RMDIR /S /Q "%USERPROFILE%\.squirrel-sql"
REM ================================================================================================================================clean.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************clean.bat****
