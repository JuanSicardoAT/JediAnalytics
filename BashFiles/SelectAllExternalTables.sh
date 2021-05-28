#!/usr/bin/env bash

HELPER_HQLS_HOME="./HQLs/HelperHQLs/"

SELECT_ALL_TABLES_MESSAGE="--Se están consultando todas las tablas de jedianalytics"

echo "$SELECT_ALL_TABLES_MESSAGE"
hive -f "${HELPER_HQLS_HOME}SelectAllExternalTables.hql"