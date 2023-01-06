REM [This file is create by zone.bat]
ECHO Run ZONE [Output] config...
ECHO SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Output\C\bin>"%MouseChshZRL_Root%\C\dev\path-Output.bat"
ECHO IF "%%MouseChshZRL_UAC%%"=="1" SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Output\C\sbin>>"%MouseChshZRL_Root%\C\dev\path-Output.bat"
FOR /R "%MouseChshZRL_Root%.Output\C\etc" %%i IN (*.bat) DO (
	CALL %%i
)
