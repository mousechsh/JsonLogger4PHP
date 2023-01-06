REM [This file is create by zone.bat]
ECHO Run ZONE [OScmd] config...
ECHO SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.OScmd\C\bin>"%MouseChshZRL_Root%\C\dev\path-OScmd.bat"
ECHO IF "%%MouseChshZRL_UAC%%"=="1" SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.OScmd\C\sbin>>"%MouseChshZRL_Root%\C\dev\path-OScmd.bat"
FOR /R "%MouseChshZRL_Root%.OScmd\C\etc" %%i IN (*.bat) DO (
	CALL %%i
)
