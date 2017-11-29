rem
rem ============================
rem

set JAVA_HOME=

set DB_TYPE=POSTGRESQL
set HOST=
set PORT=
set DBNAME=

set USERNAME=
set USERPSWD=
set USERSHEMA=

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


