#!/usr/bin/env bash

ASK_DB_NAME="--Ingrese el nombre de la base de datos: "

DROPPING_DB_MESSAGE="--Se está borrando la base de datos "

#Shows a confirmation message for safety reasons
function askConfirmation() {
  echo "$PROMPT_CONFIRMATION"
  select conf in "${CONFIRMATION_OPTIONS[@]}"; do
    case $conf in

    "${CONFIRMATION_OPTIONS[0]}")
      echo "$YES_CONFIRMATION_MESSAGE"
      ;;

    "${CONFIRMATION_OPTIONS[1]}")
      echo "$NO_CONFIRMATION_MESSAGE"
      echo "$GOODBYE_MESSAGE"
      exit
      ;;

    esac
    break
  done
}

echo "$ASK_DB_NAME"
read -r dbName
askConfirmation

echo "$DROPPING_DB_MESSAGE"

hive -e "DROP DATABASE IF EXISTS $dbName"