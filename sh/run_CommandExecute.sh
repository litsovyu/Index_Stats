#!/bin/sh

sh -c  /opt/mssql-tools/bin/sqlcmd  -S $DB_HOST -U $DB_USER -P $DB_PASS   -i "./sql/CommandExecute.sql" -o "./result/CommandExecute.txt"