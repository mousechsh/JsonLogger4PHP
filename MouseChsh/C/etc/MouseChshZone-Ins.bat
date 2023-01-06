REM [This file is create by zone.bat]
ECHO Run ZONE [Ins] config...
ECHO SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Ins\C\bin>"%MouseChshZRL_Root%\C\dev\path-Ins.bat"
ECHO IF "%%MouseChshZRL_UAC%%"=="1" SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Ins\C\sbin>>"%MouseChshZRL_Root%\C\dev\path-Ins.bat"
FOR /R "%MouseChshZRL_Root%.Ins\C\etc" %%i IN (*.bat) DO (
	CALL %%i
)
