#!/usr/bin/env bash

HELPER_HQLS_HOME="./HQLs/HelperHQLs/"

DROPPING_ALL_EXT_TABLES_MESSAGE="--Se están borrando todas las tablas de jedianalytics"

echo "$DROPPING_ALL_EXT_TABLES_MESSAGE"
hive -f "${HELPER_HQLS_HOME}DropAllExternalTables.hql"