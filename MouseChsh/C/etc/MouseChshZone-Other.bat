REM [This file is create by zone.bat]
ECHO Run ZONE [Other] config...
ECHO SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Other\C\bin>"%MouseChshZRL_Root%\C\dev\path-Other.bat"
ECHO IF "%%MouseChshZRL_UAC%%"=="1" SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Other\C\sbin>>"%MouseChshZRL_Root%\C\dev\path-Other.bat"
FOR /R "%MouseChshZRL_Root%.Other\C\etc" %%i IN (*.bat) DO (
	CALL %%i
)
