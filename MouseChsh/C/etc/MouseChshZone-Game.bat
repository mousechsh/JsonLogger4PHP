REM [This file is create by zone.bat]
ECHO Run ZONE [Game] config...
ECHO SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Game\C\bin>"%MouseChshZRL_Root%\C\dev\path-Game.bat"
ECHO IF "%%MouseChshZRL_UAC%%"=="1" SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Game\C\sbin>>"%MouseChshZRL_Root%\C\dev\path-Game.bat"
FOR /R "%MouseChshZRL_Root%.Game\C\etc" %%i IN (*.bat) DO (
	CALL %%i
)
