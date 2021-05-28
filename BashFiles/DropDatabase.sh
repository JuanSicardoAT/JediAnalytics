#!/usr/bin/env bash

ASK_DB_NAME="--Ingrese el nombre de la base de datos: "

DROPPING_DB_MESSAGE="--Se está borrando la base de datos "

echo "$ASK_DB_NAME"
read -r dbName

echo "$DROPPING_DB_MESSAGE"
hive -e "DROP DATABASE IF EXISTS $dbName"
