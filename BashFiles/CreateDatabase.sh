#!/usr/bin/env bash

ASK_DB_NAME="--Ingrese el nombre de la base de datos: "

CREATING_DB_MESSAGE="--Se está creando la base de datos "

#Shows a confirmation message for safety reasons
function askConfirmationAgain() {
  echo "$PROMPT_CONFIRMATION"
  select confAgain in "${CONFIRMATION_OPTIONS[@]}"; do
    case $confAgain in

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
askConfirmationAgain

echo "$CREATING_DB_MESSAGE $dbName"
hive -e "CREATE DATABASE IF NOT EXISTS $dbName"
