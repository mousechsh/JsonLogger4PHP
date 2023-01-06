REM [This file is create by zone.bat]
ECHO Run ZONE [AppDB] config...
ECHO SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.AppDB\C\bin>"%MouseChshZRL_Root%\C\dev\path-AppDB.bat"
ECHO IF "%%MouseChshZRL_UAC%%"=="1" SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.AppDB\C\sbin>>"%MouseChshZRL_Root%\C\dev\path-AppDB.bat"
FOR /R "%MouseChshZRL_Root%.AppDB\C\etc" %%i IN (*.bat) DO (
	CALL %%i
)
