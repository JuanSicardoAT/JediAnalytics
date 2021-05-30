#!/usr/bin/env bash

HELPER_HQLS_HOME="./HQLs/HelperHQLs/"

DROPPING_ALL_INT_TABLES_MESSAGE="--Se están borrando todas las tablas internas de jedianalytics"

echo "$DROPPING_ALL_INT_TABLES_MESSAGE"
hive -f "${HELPER_HQLS_HOME}DropAllInternalTables.hql"