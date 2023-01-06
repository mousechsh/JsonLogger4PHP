REM [This file is create by zone.bat]
ECHO Run ZONE [Repo] config...
ECHO SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Repo\C\bin>"%MouseChshZRL_Root%\C\dev\path-Repo.bat"
ECHO IF "%%MouseChshZRL_UAC%%"=="1" SET PATH=%%PATH%%;%%MouseChshZRL_Root%%.Repo\C\sbin>>"%MouseChshZRL_Root%\C\dev\path-Repo.bat"
FOR /R "%MouseChshZRL_Root%.Repo\C\etc" %%i IN (*.bat) DO (
	CALL %%i
)
