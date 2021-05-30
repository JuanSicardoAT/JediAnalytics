#!/usr/bin/env bash

USER_HQLS_HOME="./HQLs/UserHQLs/"

SHOWING_FILES_MESSAGE="--Se están mostrando todos los archivos HQL del usuario"
PICK_FILE_PROMPT="--Por favor, escriba el nombre del archivo que desa ejecutar"

echo "$SHOWING_FILES_MESSAGE"

shopt -s nullglob

userHqlFiles=("${USER_HQLS_HOME}"*)

for userHqlFile in "${userHqlFiles[@]}"; do
  echo "$userHqlFile"
done

echo "$PICK_FILE_PROMPT"
read -r fileForExecution

hive -f "${USER_HQLS_HOME}$fileForExecution"