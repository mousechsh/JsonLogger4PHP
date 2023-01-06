REM [This file is create by zone.bat]
ECHO Run ZONE [Office] config...
ECHO SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Office\C\bin>"%MouseChshZRL_Root%\C\dev\path-Office.bat"
ECHO IF "%%MouseChshZRL_UAC%%"=="1" SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Office\C\sbin>>"%MouseChshZRL_Root%\C\dev\path-Office.bat"
FOR /R "%MouseChshZRL_Root%.Office\C\etc" %%i IN (*.bat) DO (
	CALL %%i
)
