#!/bin/bash
# This script should be run as the hdfs user.

if [ "${USER}" != "hdfs" ]; then
    echo "Needs to be run as the hdfs user"
    exit -1
fi

hdfs dfs -test -d /apps/hive/shared/validation/lib && echo "Shared Lib directory exists" || hdfs dfs -mkdir -p /apps/hive/shared/validation/lib
hdfs dfs -chown -R hive /apps/hive/shared
