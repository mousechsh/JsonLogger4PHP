@REM !!!!!!!!php-cgi.bat
@REM ********************************************************************************************************************************php-cgi.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================php-cgi.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------php-cgi.bat
SET PHP_HOME=%MouseChshZRL_PHP_HOME%
REM --------------------------------------------------------------------------------------------------------------------------------php-cgi.bat
IF "%MouseChshZRL_DEBUG%"=="DEBUG" (
	%~d0
	CD %~dp0
	IF EXIST "%MouseChshZRL_PHP_HOME%\php-cgi.exe" CALL "%MouseChshZRL_PHP_HOME%\php-cgi.exe" -b 127.0.0.1:9000 -c "%MouseChshZRL_PHP_HOME%\php.ini"
) ELSE (
	IF EXIST "%MouseChshZRL_PHP_HOME%\php-cgi.exe" START "PHP" /D "%MouseChshZRL_PHP_HOME%" "%MouseChshZRL_PHP_HOME%\php-cgi.exe" -b 127.0.0.1:9000 -c "%MouseChshZRL_PHP_HOME%\php.ini"
)
REM ================================================================================================================================php-cgi.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************php-cgi.bat****
