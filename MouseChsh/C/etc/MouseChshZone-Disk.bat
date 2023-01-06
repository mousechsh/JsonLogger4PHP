REM [This file is create by zone.bat]
ECHO Run ZONE [Disk] config...
ECHO SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Disk\C\bin>"%MouseChshZRL_Root%\C\dev\path-Disk.bat"
ECHO IF "%%MouseChshZRL_UAC%%"=="1" SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Disk\C\sbin>>"%MouseChshZRL_Root%\C\dev\path-Disk.bat"
FOR /R "%MouseChshZRL_Root%.Disk\C\etc" %%i IN (*.bat) DO (
	CALL %%i
)
