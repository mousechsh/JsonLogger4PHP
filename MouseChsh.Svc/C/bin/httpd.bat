@REM !!!!!!!!httpd.bat
@REM ********************************************************************************************************************************httpd.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================httpd.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------httpd.bat
SETLOCAL ENABLEDELAYEDEXPANSION
DEL /Q %MouseChshZRL_Zone_Root%\C\PROG\org.Apache.httpd\conf\httpd.conf
SET MouseChshZRL_IF_Path=%MouseChshZRL_Zone_Root%\C\PROG\org.Apache.httpd
SET MouseChshZRL_IF_Path=%MouseChshZRL_IF_Path:\=/%
SET MouseChshZRL_IF_Path2=%MouseChshZRL_PHP_HOME:\=/%
SET MouseChshZRL_IF_Path3=%MouseChshZRL_Root%\C\Project\src\com\mousechsh\web\www
SET MouseChshZRL_IF_Path3=%MouseChshZRL_IF_Path3:\=/%
SET MouseChshZRL_IF_Path4=%MouseChshZRL_Zone_Root%\C\etc\certificate
SET MouseChshZRL_IF_Path4=%MouseChshZRL_IF_Path4:\=/%
FOR /F "eol=* tokens=*" %%i IN (%MouseChshZRL_Zone_Root%\C\PROG\org.Apache.httpd\conf\httpd.conf-origin) DO (
	SET "MouseChshZRL_IF_String=%%i"
	IF /I NOT "!MouseChshZRL_IF_String:~0,1!"=="#" (
		SET "MouseChshZRL_IF_String=!MouseChshZRL_IF_String:Define SRVROOT "{MouseChsh}"=Define SRVROOT "%MouseChshZRL_IF_Path%"!"
		SET "MouseChshZRL_IF_String=!MouseChshZRL_IF_String:Define PHPROOT "{MouseChsh}"=Define PHPROOT "%MouseChshZRL_IF_Path2%"!"
		SET "MouseChshZRL_IF_String=!MouseChshZRL_IF_String:Define WWWROOT "{MouseChsh}"=Define WWWROOT "%MouseChshZRL_IF_Path3%"!"
		SET "MouseChshZRL_IF_String=!MouseChshZRL_IF_String:Define SSLROOT "{MouseChsh}"=Define SSLROOT "%MouseChshZRL_IF_Path4%"!"
		ECHO !MouseChshZRL_IF_String!>>%MouseChshZRL_Zone_Root%\C\PROG\org.Apache.httpd\conf\httpd.conf
	)
)
ENDLOCAL
REM --------------------------------------------------------------------------------------------------------------------------------httpd.bat
SET MouseChshZRL_ProgName=Apache HTTP Server
SET MouseChshZRL_ProgDir=%MouseChshZRL_Zone_Root%\C\PROG\org.Apache.httpd
SET MouseChshZRL_ProgFile=%MouseChshZRL_ProgDir%\bin\httpd.exe
REM --------------------------------------------------------------------------------------------------------------------------------httpd.bat
ECHO Running [%MouseChshZRL_ProgName%]
IF "%MouseChshZRL_DEBUG%"=="DEBUG" (
	%~d0
	CD "%MouseChshZRL_ProgDir%"
	IF EXIST "%MouseChshZRL_ProgFile%" CALL "%MouseChshZRL_ProgFile%" %*
) ELSE (
	IF EXIST "%MouseChshZRL_ProgFile%" START "%MouseChshZRL_ProgName%" /D "%MouseChshZRL_ProgDir%" "%MouseChshZRL_ProgFile%" %*
)
REM ================================================================================================================================httpd.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************httpd.bat****
