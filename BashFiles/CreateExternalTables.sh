#!/usr/bin/env bash

CREATE_EXT_TABLES_HQLS_HOME="HQLs/ExternalTableCreationHQLs/"

shopt -s nullglob

hqlFiles=("${CREATE_EXT_TABLES_HQLS_HOME}"*)

for hqlFile in "${hqlFiles[@]}"; do
  hive -f "$hqlFile"
done
