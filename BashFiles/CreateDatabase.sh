#!/usr/bin/env bash

ASK_DB_NAME="--Ingrese el nombre de la base de datos: "

CREATING_DB_MESSAGE="--Se está creando la base de datos "

echo "$ASK_DB_NAME"
read -r dbName

echo "$CREATING_DB_MESSAGE $dbName"
hive -e "CREATE DATABASE IF NOT EXISTS $dbName"
