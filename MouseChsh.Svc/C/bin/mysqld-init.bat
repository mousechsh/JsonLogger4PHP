@REM !!!!!!!!mysqld-init.bat
@REM ********************************************************************************************************************************mysqld-init.bat
@ECHO OFF
SETLOCAL
REM ================================================================================================================================mysqld-init.bat
IF EXIST "%~dp0..\..\MouseChsh.bat" CALL "%~dp0..\..\MouseChsh.bat"
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-init.bat
SET MouseChshZRL_IF_Path=%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL
SET MouseChshZRL_IF_Path=%MouseChshZRL_IF_Path:\=/%
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-init.bat
SET MouseChshZRL_Just_Cluster=0
SET MouseChshZRL_Use_Cluster=0
SET MouseChshZRL_Use_MasterSlave=0
SET MouseChshZRL_MySQL_Waiting=10
IF /I "%1"=="just-cluster" SET MouseChshZRL_Just_Cluster=1
IF /I "%1"=="just-cluster" SET MouseChshZRL_Use_Cluster=1
IF /I "%1"=="ms"           SET MouseChshZRL_Use_MasterSlave=1
IF /I "%1"==""             SET MouseChshZRL_Use_Cluster=1
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-init.bat
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO. > "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my00.ini"
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-init.bat
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO [mysql_cluster] > "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my0.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO config-dir = %MouseChshZRL_IF_Path% >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my0.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO config-file = %MouseChshZRL_IF_Path%/config.ini >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my0.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO [ndbd default] > "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO noofreplicas = 4 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO datamemory = 80M >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO indexmemory = 18M >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO [ndb_mgmd] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO nodeid = 1 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO hostname = 127.0.0.1 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO PortNumber = 1186 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO datadir = %MouseChshZRL_IF_Path%/data-cluster-1 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO [ndb_mgmd] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO nodeid = 2 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO hostname = 127.0.0.1 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO PortNumber = 1187 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO datadir = %MouseChshZRL_IF_Path%/data-cluster-2 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO [ndbd] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO nodeid = 11 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO hostname = 127.0.0.1 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO datadir = %MouseChshZRL_IF_Path%/data-node-1 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini" >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO [ndbd] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO nodeid = 12 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO hostname = 127.0.0.1 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO datadir = %MouseChshZRL_IF_Path%/data-node-2 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini" >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO [ndbd] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO nodeid = 13 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO hostname = 127.0.0.1 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO datadir = %MouseChshZRL_IF_Path%/data-node-3 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini" >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO [ndbd] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO nodeid = 14 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO hostname = 127.0.0.1 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO datadir = %MouseChshZRL_IF_Path%/data-node-4 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini" >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO [mysqld] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO nodeid = 101 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO hostname = 127.0.0.1 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO [mysqld] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO nodeid = 102 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO hostname = 127.0.0.1 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO [mysqld] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO nodeid = 103 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO hostname = 127.0.0.1 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO [mysqld] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO nodeid = 104 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO hostname = 127.0.0.1 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\config.ini"
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-init.bat
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO [mysqld] > "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my1d.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO ndbcluster >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my1d.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my1d.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO [mysql_cluster] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my1d.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO ndb-connectstring = 127.0.0.1:1186,127.0.0.1:1187 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my1d.ini"
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-init.bat
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO [mysqld] > "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2d.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO ndbcluster >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2d.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2d.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO [mysql_cluster] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2d.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO ndb-connectstring = 127.0.0.1:1186,127.0.0.1:1187 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2d.ini"
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-init.bat
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO [mysqld] > "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3d.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO ndbcluster >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3d.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3d.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO [mysql_cluster] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3d.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO ndb-connectstring = 127.0.0.1:1186,127.0.0.1:1187 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3d.ini"
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-init.bat
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO [mysqld] > "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4d.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO ndbcluster >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4d.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4d.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO [mysql_cluster] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4d.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO ndb-connectstring = 127.0.0.1:1186,127.0.0.1:1187 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4d.ini"
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-init.bat
ECHO [client] > "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"
ECHO port = 3306 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"
ECHO default-character-set = UTF8MB4 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"

ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"
ECHO [mysql] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"
ECHO port = 3306 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"
ECHO default-character-set = UTF8MB4 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"

ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"
ECHO [mysqld] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO ndbcluster >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO ndb-nodeid = 101 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO ndb-connectstring = 127.0.0.1:1186,127.0.0.1:1187 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"

ECHO server-id = 1 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"
ECHO port = 3306 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"
ECHO basedir = %MouseChshZRL_IF_Path% >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"
ECHO datadir = %MouseChshZRL_IF_Path%/data >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"

IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO log-bin = mousechsh-mysql-bin-1 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO binlog_cache_size = 1M >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO binlog-format = mixed >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO binlog-ignore-db = mysql >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"

IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO auto_increment_offset = 1 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO auto_increment_increment = 2 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"

IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO relay-log = mousechsh-mysql-relay-bin-1 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO log-slave-updates = 1 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"

ECHO character-set-server = UTF8MB4 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"
ECHO default_authentication_plugin = mysql_native_password >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO default-storage-engine = ndbcluster >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"
ECHO expire_logs_days = 30 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"
ECHO key_buffer_size = 16M >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"
ECHO lower_case_table_names = 2 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"
ECHO slave_skip_errors = 1062 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"

ECHO # disable_ssl >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"
ECHO skip_ssl >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my.ini"
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-init.bat
IF "%MouseChshZRL_Use_Cluster%"=="1"     ECHO [client] > "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO [client] > "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1"     ECHO port = 3307 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO port = 3307 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1"     ECHO default-character-set = UTF8MB4 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO default-character-set = UTF8MB4 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1"     ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1"     ECHO [mysql] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO [mysql] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1"     ECHO port = 3307 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO port = 3307 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1"     ECHO default-character-set = UTF8MB4 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO default-character-set = UTF8MB4 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1"     ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1"     ECHO [mysqld] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO [mysqld] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO ndbcluster >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO ndb-nodeid = 102 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO ndb-connectstring = 127.0.0.1:1186,127.0.0.1:1187 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1"     ECHO server-id = 2 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO server-id = 2 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1"     ECHO port = 3307 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO port = 3307 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1"     ECHO basedir = %MouseChshZRL_IF_Path% >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO basedir = %MouseChshZRL_IF_Path% >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1"     ECHO datadir = %MouseChshZRL_IF_Path%/data2 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO datadir = %MouseChshZRL_IF_Path%/data2 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"

IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO log-bin = mousechsh-mysql-bin-2 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO binlog_cache_size = 1M >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO binlog-format = mixed >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO binlog-ignore-db = mysql >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"

IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO auto_increment_offset = 2 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO auto_increment_increment = 2 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"

IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO relay-log = mousechsh-mysql-relay-bin-2 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO log-slave-updates = 1 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1"     ECHO character-set-server = UTF8MB4 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO character-set-server = UTF8MB4 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1"     ECHO default_authentication_plugin = mysql_native_password >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO default_authentication_plugin = mysql_native_password >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1"     ECHO default-storage-engine = ndbcluster >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1"     ECHO expire_logs_days = 30 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO expire_logs_days = 30 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1"     ECHO key_buffer_size = 16M >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO key_buffer_size = 16M >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1"     ECHO lower_case_table_names = 2 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO lower_case_table_names = 2 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1"     ECHO slave_skip_errors = 1062 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO slave_skip_errors = 1062 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1"     ECHO # disable_ssl >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO # disable_ssl >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1"     ECHO skip_ssl >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO skip_ssl >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my2.ini"
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-init.bat
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO [client] > "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO port = 3308 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO default-character-set = UTF8MB4 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO [mysql] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO port = 3308 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO default-character-set = UTF8MB4 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO [mysqld] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO ndbcluster >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO ndb-nodeid = 103 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO ndb-connectstring = 127.0.0.1:1186,127.0.0.1:1187 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO server-id = 3 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO port = 3308 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO basedir = %MouseChshZRL_IF_Path% >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO datadir = %MouseChshZRL_IF_Path%/data3 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO character-set-server = UTF8MB4 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO default_authentication_plugin = mysql_native_password >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO default-storage-engine = ndbcluster >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO expire_logs_days = 30 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO key_buffer_size = 16M >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO lower_case_table_names = 2 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO slave_skip_errors = 1062 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO # disable_ssl >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO skip_ssl >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my3.ini"
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-init.bat
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO [client] > "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO port = 3309 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO default-character-set = UTF8MB4 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO [mysql] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO port = 3309 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO default-character-set = UTF8MB4 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO [mysqld] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO ndbcluster >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO ndb-nodeid = 104 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO ndb-connectstring = 127.0.0.1:1186,127.0.0.1:1187 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO server-id = 4 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO port = 3309 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO basedir = %MouseChshZRL_IF_Path% >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO datadir = %MouseChshZRL_IF_Path%/data4 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO character-set-server = UTF8MB4 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO default_authentication_plugin = mysql_native_password >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO default-storage-engine = ndbcluster >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO expire_logs_days = 30 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO key_buffer_size = 16M >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO lower_case_table_names = 2 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO slave_skip_errors = 1062 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4.ini"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO # disable_ssl >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4.ini"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO skip_ssl >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my4.ini"
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-init.bat
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO [client] > "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my5.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO port = 3310 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my5.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO default-character-set = UTF8MB4 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my5.ini"

IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my5.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO [mysql] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my5.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO port = 3310 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my5.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO default-character-set = UTF8MB4 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my5.ini"

IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my5.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO [mysqld] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my5.ini"

IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO server-id = 5 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my5.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO port = 3310 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my5.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO basedir = %MouseChshZRL_IF_Path% >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my5.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO datadir = %MouseChshZRL_IF_Path%/data5 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my5.ini"

IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO relay-log = mousechsh-mysql-relay-bin-5 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my5.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO log-slave-updates = 1 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my5.ini"

IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO character-set-server = UTF8MB4 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my5.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO default_authentication_plugin = mysql_native_password >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my5.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO key_buffer_size = 16M >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my5.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO lower_case_table_names = 2 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my5.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO read_only = 1 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my5.ini"

IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO # disable_ssl >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my5.ini"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO skip_ssl >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\my5.ini"
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-init.bat
ECHO [logger] > "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\router.conf"
ECHO level = INFO >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\router.conf"

IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\router.conf"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO [routing:mycluster] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\router.conf"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO bind_address = 127.0.0.1 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\router.conf"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO bind_port = 7000 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\router.conf"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO destinations = 127.0.0.1:3306,127.0.0.1:3307,127.0.0.1:3308,127.0.0.1:3309 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\router.conf"
IF "%MouseChshZRL_Use_Cluster%"=="1" ECHO routing_strategy = round-robin >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\router.conf"

IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\router.conf"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO [routing:myserver] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\router.conf"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO bind_address = 127.0.0.1 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\router.conf"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO bind_port = 7000 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\router.conf"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO destinations = 127.0.0.1:3306,127.0.0.1:3307 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\router.conf"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO routing_strategy = round-robin >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\router.conf"

IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\router.conf"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO [routing:myserver_readonly] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\router.conf"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO bind_address = 127.0.0.1 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\router.conf"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO bind_port = 7001 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\router.conf"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO destinations = 127.0.0.1:3310 >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\router.conf"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" ECHO routing_strategy = round-robin >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\router.conf"

ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\router.conf"
ECHO [http_server] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\router.conf"

ECHO. >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\router.conf"
ECHO [rest_api] >> "%MouseChshZRL_Zone_Root%\C\PROG\com.MySQL\router.conf"
REM ================================================================================================================================mysqld-init.bat
IF "%MouseChshZRL_Use_Cluster%"=="1" (
	IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-cluster-mgr.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-cluster-mgr.bat" 1
	IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-cluster-mgr.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-cluster-mgr.bat" 2
	IF EXIST "%MouseChshZRL_Root%\C\bin\wait.bat" CALL "%MouseChshZRL_Root%\C\bin\wait.bat" time %MouseChshZRL_MySQL_Waiting%
REM --------------------------------------------------------------------------------------------------------------------------------mysqld-init.bat
	IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-cluster-data.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-cluster-data.bat" 1
	IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-cluster-data.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-cluster-data.bat" 2
	IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-cluster-data.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-cluster-data.bat" 3
	IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-cluster-data.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysql-start-cluster-data.bat" 4
	IF EXIST "%MouseChshZRL_Root%\C\bin\wait.bat" CALL "%MouseChshZRL_Root%\C\bin\wait.bat" time %MouseChshZRL_MySQL_Waiting%
)
IF "%MouseChshZRL_Just_Cluster%" == "1" GOTO END
REM ================================================================================================================================mysqld-init.bat
IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysqld-init-db.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysqld-init-db.bat"
IF "%MouseChshZRL_Use_MasterSlave%"=="1" (
	IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysqld-init-db.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysqld-init-db.bat" 2
)
IF "%MouseChshZRL_Use_Cluster%"=="1" (
	IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysqld-init-db.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysqld-init-db.bat" 2
)
IF "%MouseChshZRL_Use_Cluster%"=="1" (
	IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysqld-init-db.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysqld-init-db.bat" 3
	IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysqld-init-db.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysqld-init-db.bat" 4
)
IF "%MouseChshZRL_Use_MasterSlave%"=="1" (
	IF EXIST "%MouseChshZRL_Zone_Root%\C\bin\mysqld-init-db.bat" CALL "%MouseChshZRL_Zone_Root%\C\bin\mysqld-init-db.bat" 5
)
REM ================================================================================================================================mysqld-init.bat
:END
ENDLOCAL
REM ********************************************************************************************************************************mysqld-init.bat****
