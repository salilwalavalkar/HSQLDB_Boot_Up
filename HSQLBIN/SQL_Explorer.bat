@ECHO OFF
set "HSQLPATH=%~1"
cd %HSQLPATH%\hsqldb
java -cp ./lib/hsqldb.jar org.hsqldb.util.DatabaseManager


