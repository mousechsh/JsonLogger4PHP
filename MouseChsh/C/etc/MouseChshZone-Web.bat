REM [This file is create by zone.bat]
ECHO Run ZONE [Web] config...
ECHO SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Web\C\bin>"%MouseChshZRL_Root%\C\dev\path-Web.bat"
ECHO IF "%%MouseChshZRL_UAC%%"=="1" SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Web\C\sbin>>"%MouseChshZRL_Root%\C\dev\path-Web.bat"
FOR /R "%MouseChshZRL_Root%.Web\C\etc" %%i IN (*.bat) DO (
	CALL %%i
)
