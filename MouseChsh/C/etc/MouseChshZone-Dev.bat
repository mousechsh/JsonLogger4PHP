REM [This file is create by zone.bat]
ECHO Run ZONE [Dev] config...
ECHO SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Dev\C\bin>"%MouseChshZRL_Root%\C\dev\path-Dev.bat"
ECHO IF "%%MouseChshZRL_UAC%%"=="1" SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Dev\C\sbin>>"%MouseChshZRL_Root%\C\dev\path-Dev.bat"
FOR /R "%MouseChshZRL_Root%.Dev\C\etc" %%i IN (*.bat) DO (
	CALL %%i
)
