REM [This file is create by zone.bat]
ECHO Run ZONE [Run] config...
ECHO SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Run\C\bin>"%MouseChshZRL_Root%\C\dev\path-Run.bat"
ECHO IF "%%MouseChshZRL_UAC%%"=="1" SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Run\C\sbin>>"%MouseChshZRL_Root%\C\dev\path-Run.bat"
FOR /R "%MouseChshZRL_Root%.Run\C\etc" %%i IN (*.bat) DO (
	CALL %%i
)
