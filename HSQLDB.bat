@ECHO OFF

:: Fetch HSQLPATH
set "HSQLPATH=%~1"

goto :paramCheck

:: Show parameter prompt
:paramPrompt
set /p "HSQLPATH=Enter home dir of HSQLDB (e.g G:\Tools\DB\hsqldb-2.2.9): "

:: Check if parameter is sent
:paramCheck
if "%HSQLPATH%"=="" goto :paramPrompt

CD HSQLBIN

:: Start database
START "Database Start" DB_Start.bat %HSQLPATH%

:: Start SQL Explorer
START "SQL Explorer" SQL_Explorer.bat %HSQLPATH%
