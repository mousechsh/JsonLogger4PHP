REM [This file is create by zone.bat]
ECHO Run ZONE [Br] config...
ECHO SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Br\C\bin>"%MouseChshZRL_Root%\C\dev\path-Br.bat"
ECHO IF "%%MouseChshZRL_UAC%%"=="1" SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Br\C\sbin>>"%MouseChshZRL_Root%\C\dev\path-Br.bat"
FOR /R "%MouseChshZRL_Root%.Br\C\etc" %%i IN (*.bat) DO (
	CALL %%i
)
