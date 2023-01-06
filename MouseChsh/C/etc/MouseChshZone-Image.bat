REM [This file is create by zone.bat]
ECHO Run ZONE [Image] config...
ECHO SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Image\C\bin>"%MouseChshZRL_Root%\C\dev\path-Image.bat"
ECHO IF "%%MouseChshZRL_UAC%%"=="1" SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Image\C\sbin>>"%MouseChshZRL_Root%\C\dev\path-Image.bat"
FOR /R "%MouseChshZRL_Root%.Image\C\etc" %%i IN (*.bat) DO (
	CALL %%i
)
