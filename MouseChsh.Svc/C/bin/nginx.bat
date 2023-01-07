@REM !!!!!!!!nginx.bat
@REM ********************************************************************************************************************************nginx.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================nginx.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------nginx.bat
SETLOCAL ENABLEDELAYEDEXPANSION
DEL /Q %MouseChshZRL_Zone_Root%\C\PROG\org.nginx\conf\nginx.conf
SET MouseChshZRL_IF_Path=%MouseChshZRL_Root%\C\Project\src\mousechsh_web
SET MouseChshZRL_IF_Path=%MouseChshZRL_IF_Path:\=/%
SET MouseChshZRL_IF_Path2=%MouseChshZRL_Root%\C\Project\doc
SET MouseChshZRL_IF_Path2=%MouseChshZRL_IF_Path2:\=/%
SET MouseChshZRL_IF_Path3=%MouseChshZRL_Root%
SET MouseChshZRL_IF_Path3=%MouseChshZRL_IF_Path3:\=/%
FOR /F "eol=* tokens=*" %%i IN (%MouseChshZRL_Zone_Root%\C\PROG\org.nginx\conf\nginx.conf-origin) DO (
	SET "MouseChshZRL_IF_String=%%i"
	IF /I NOT "!MouseChshZRL_IF_String:~0,1!"=="#" (
		SET "MouseChshZRL_IF_String=!MouseChshZRL_IF_String:set $mousechshroot "{MouseChsh}";=set $mousechshroot "%MouseChshZRL_IF_Path%";!"
		SET "MouseChshZRL_IF_String=!MouseChshZRL_IF_String:set $mousechshdoc "{MouseChsh}";=set $mousechshdoc "%MouseChshZRL_IF_Path2%";!"
		SET "MouseChshZRL_IF_String=!MouseChshZRL_IF_String:set $mousechshbase "{MouseChsh}";=set $mousechshbase "%MouseChshZRL_IF_Path3%";!"
		ECHO !MouseChshZRL_IF_String!>>%MouseChshZRL_Zone_Root%\C\PROG\org.nginx\conf\nginx.conf
	)
)
ENDLOCAL
REM --------------------------------------------------------------------------------------------------------------------------------nginx.bat
SET MouseChshZRL_ProgName=NGINX
SET MouseChshZRL_ProgDir=%MouseChshZRL_Zone_Root%\C\PROG\org.nginx
SET MouseChshZRL_ProgFile=%MouseChshZRL_ProgDir%\nginx.exe
REM --------------------------------------------------------------------------------------------------------------------------------nginx.bat
ECHO Running [%MouseChshZRL_ProgName%]
IF "%MouseChshZRL_DEBUG%"=="DEBUG" (
	%~d0
	CD "%MouseChshZRL_ProgDir%"
	IF EXIST "%MouseChshZRL_ProgFile%" CALL "%MouseChshZRL_ProgFile%" %*
) ELSE (
	IF EXIST "%MouseChshZRL_ProgFile%" START "%MouseChshZRL_ProgName%" /D "%MouseChshZRL_ProgDir%" "%MouseChshZRL_ProgFile%" %*
)
REM ================================================================================================================================nginx.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************nginx.bat****
