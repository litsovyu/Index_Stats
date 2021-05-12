#!/bin/sh

sh -c  /opt/mssql-tools/bin/sqlcmd  -S $DB_HOST -U $DB_USER -P $DB_PASS   -i "/tmp/test/sql-server-maintenance-solution/IndexOptimize.sql" -o "/tmp/test/result/IndexOptimize.txt"