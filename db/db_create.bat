@echo off

set CONF_DIR=conf
set LIB_DIR=lib

@echo on
call %CONF_DIR%/config.cmd

@echo off
rem =============================
mkdir %LOG_DIR% 2>nul 1>&2
set timestr=%date:~-4%%date:~-7,2%%date:~0,2%_%time:~0,2%%time:~3,2%
set logfile=%LOG_DIR%/%~n0.%timestr%
rem =============================

@echo on

java -jar %LIB_DIR%/liquibase.jar --changeLogFile=%CHANGELOG_START% ^
 --username=%USERNAME% --password=%USERPSWD% --defaultSchemaName=%USERDB% ^
 --classpath="%LIB_DIR%\\%JDBCDRIVER%" --url="%URL_CONNECT%" ^
 --logLevel=INFO --logFile=%logfile%.LOG ^
   update ^
  -Dusername=%USERNAME% -Duserpswd=%USERPSWD%


