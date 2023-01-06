REM [This file is create by zone.bat]
ECHO Run ZONE [VM] config...
ECHO SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.VM\C\bin>"%MouseChshZRL_Root%\C\dev\path-VM.bat"
ECHO IF "%%MouseChshZRL_UAC%%"=="1" SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.VM\C\sbin>>"%MouseChshZRL_Root%\C\dev\path-VM.bat"
FOR /R "%MouseChshZRL_Root%.VM\C\etc" %%i IN (*.bat) DO (
	CALL %%i
)
