#!/usr/bin/env bash

CREATE_INT_TABLES_HQLS_HOME="./HQLs/CreateAllInternalTablesHQLs/"

CREATING_INT_TABLES_MESSAGE="--Se están creando todas las tablas internas definidas en:
  $CREATE_INT_TABLES_HQLS_HOME"

echo "$CREATE_INT_TABLES_HQLS_HOME"

shopt -s nullglob

hqlFiles=("${CREATE_INT_TABLES_HQLS_HOME}"*)

for hqlFile in "${hqlFiles[@]}"; do
  echo "$hqlFiles"
  hive -f "$hqlFile"
done