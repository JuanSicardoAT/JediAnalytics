#!/usr/bin/env bash

EXECUTE_ALL_HQLS_FILES_HOME="./HQLs/ExecuteAllHQLs/"

EXECUTING_ALL_MESSAGE="--Se están ejecutando todos los archivos HQL guardados en:
  $EXECUTE_ALL_HQLS_FILES_HOME"

echo "$EXECUTING_ALL_MESSAGE"

shopt -s nullglob

hqlFiles=("${EXECUTE_ALL_HQLS_FILES_HOME}"*)

for hqlFile in "${hqlFiles[@]}"; do
  echo "$hqlFiles"
  hive -f "$hqlFile"
done