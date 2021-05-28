#!/usr/bin/env bash

CREATE_EXTERN_TABLES_HQLS_HOME="HQLs/CreateAllExternalTablesHQLs/"

shopt -s nullglob

hqlFiles=("${CREATE_EXTERN_TABLES_HQLS_HOME}"*)

for hqlFile in "${hqlFiles[@]}"; do
  hive -f "$hqlFile"
done
