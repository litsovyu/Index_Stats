#!/bin/sh

# Проверить такой вариант:
#sh -c  /opt/mssql-tools/bin/sqlcmd  -S $DB_HOST -U $DB_USER -P $DB_PASS -d $DB_NAME  -Q "EXECUTE @FragmentationLow = NULL, @FragmentationMedium = 'INDEX_REORGANIZE,INDEX_REBUILD_ONLINE,INDEX_REBUILD_OFFLINE', @FragmentationHigh = 'INDEX_REBUILD_ONLINE,INDEX_REBUILD_OFFLINE', @FragmentationLevel1 = 5, @FragmentationLevel2 = 30, @UpdateStatistics = 'ALL', @OnlyModifiedStatistics = 'Y'" -o "/tmp/test/result/Shrink.txt"

sh -c  /opt/mssql-tools/bin/sqlcmd  -S $DB_HOST -U $DB_USER -P $DB_PASS   -i "/tmp/test/sql/Index_Stats.sql" -o "/tmp/test/result/Index_Stats.txt"