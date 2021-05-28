#!/usr/bin/env bash

CREATE_EXTERN_TABLES_HQLS_HOME="./HQLs/CreateAllExternalTablesHQLs/"

CREATING_ALL_EXT_TABLES_MESSAGE="--Se están creando todas las tablas definidas en:
  $CREATE_EXTERN_TABLES_HQLS_HOME"

shopt -s nullglob

hqlFiles=("${CREATE_EXTERN_TABLES_HQLS_HOME}"*)

for hqlFile in "${hqlFiles[@]}"; do
  echo "$hqlFiles"
  hive -f "$hqlFile"
done