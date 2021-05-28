#!/usr/bin/env bash

CREATE_EXTERN_TABLES_HQLS_HOME="HQLs/CreateAllExternalTablesHQLs/"

shopt -s nullglob

hqlFiles=("${CREATE_EXTERN_TABLES_HQLS_HOME}"*)

for hqlFile in "${hqlFiles[@]}"; do
  echo "$hqlFiles"
  hive -f "$hqlFile"
done