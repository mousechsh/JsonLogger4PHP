REM [This file is create by zone.bat]
ECHO Run ZONE [File] config...
ECHO SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.File\C\bin>"%MouseChshZRL_Root%\C\dev\path-File.bat"
ECHO IF "%%MouseChshZRL_UAC%%"=="1" SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.File\C\sbin>>"%MouseChshZRL_Root%\C\dev\path-File.bat"
FOR /R "%MouseChshZRL_Root%.File\C\etc" %%i IN (*.bat) DO (
	CALL %%i
)
