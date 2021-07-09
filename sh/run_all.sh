#!/bin/sh

sh -c  /opt/mssql-tools/bin/sqlcmd  -S ${DB_HOST} -U ${DB_USER} -P ${DB_PASS}   -i "./sql/CommandExecute.sql"

sh -c  /opt/mssql-tools/bin/sqlcmd  -S ${DB_HOST} -U ${DB_USER} -P ${DB_PASS}   -i "./sql/IndexOptimize.sql"

sh -c  /opt/mssql-tools/bin/sqlcmd  -S ${DB_HOST} -U ${DB_USER} -P ${DB_PASS} -Q "EXECUTE dbo.IndexOptimize @Databases = ${DB_NAME},  @FragmentationLow = NULL, @FragmentationMedium = 'INDEX_REORGANIZE,INDEX_REBUILD_ONLINE,INDEX_REBUILD_OFFLINE', @FragmentationHigh = 'INDEX_REBUILD_ONLINE,INDEX_REBUILD_OFFLINE', @FragmentationLevel1 = 5, @FragmentationLevel2 = 30, @UpdateStatistics = 'ALL', @OnlyModifiedStatistics = 'Y'"
