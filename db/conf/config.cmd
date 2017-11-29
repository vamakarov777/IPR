rem
rem ============================
rem

set JAVA_HOME=

set DB_TYPE=POSTGRESQL
rem set HOST=localhost
set HOST=cartman
set PORT=5432
set DBNAME=ipr

set USERNAME=ipr
set USERPSWD=ipr
set USERSHEMA=ipr

rem set USERNAME=postgres
rem set USERPSWD=postgres
rem set USERSHEMA=public

rem
rem ============================
rem

set CHANGELOG_START=./create_user/changelog.xml
set LOG_DIR=logs
if (%DB_TYPE%) == (POSTGRESQL) goto posgresql_url

:orcl_ulr
set JDBCDRIVER=ojbdc7.jar
set URL_CONNECT=jdbc:oracle:thin
goto next_step

:posgresql_url
set JDBCDRIVER=postgresql-42.1.4.jar
set URL_CONNECT=jdbc:postgresql://%HOST%:%PORT%/%DBNAME%
goto next_step

:next_step

rem
rem
rem ============================
rem
rem


