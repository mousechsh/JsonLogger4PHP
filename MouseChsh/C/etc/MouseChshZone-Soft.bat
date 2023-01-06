REM [This file is create by zone.bat]
ECHO Run ZONE [Soft] config...
ECHO SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Soft\C\bin>"%MouseChshZRL_Root%\C\dev\path-Soft.bat"
ECHO IF "%%MouseChshZRL_UAC%%"=="1" SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Soft\C\sbin>>"%MouseChshZRL_Root%\C\dev\path-Soft.bat"
FOR /R "%MouseChshZRL_Root%.Soft\C\etc" %%i IN (*.bat) DO (
	CALL %%i
)
