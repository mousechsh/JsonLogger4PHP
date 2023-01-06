REM [This file is create by zone.bat]
ECHO Run ZONE [Svc] config...
ECHO SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Svc\C\bin>"%MouseChshZRL_Root%\C\dev\path-Svc.bat"
ECHO IF "%%MouseChshZRL_UAC%%"=="1" SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Svc\C\sbin>>"%MouseChshZRL_Root%\C\dev\path-Svc.bat"
FOR /R "%MouseChshZRL_Root%.Svc\C\etc" %%i IN (*.bat) DO (
	CALL %%i
)
