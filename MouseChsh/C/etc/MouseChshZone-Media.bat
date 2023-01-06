REM [This file is create by zone.bat]
ECHO Run ZONE [Media] config...
ECHO SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Media\C\bin>"%MouseChshZRL_Root%\C\dev\path-Media.bat"
ECHO IF "%%MouseChshZRL_UAC%%"=="1" SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Media\C\sbin>>"%MouseChshZRL_Root%\C\dev\path-Media.bat"
FOR /R "%MouseChshZRL_Root%.Media\C\etc" %%i IN (*.bat) DO (
	CALL %%i
)
