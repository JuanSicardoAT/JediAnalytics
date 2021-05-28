#!/usr/bin/env bash

ASK_DB_NAME="--Ingrese el nombre de la base de datos: "

echo "$ASK_DB_NAME"
read -r dbName

hive -e "CREATE DATABASE IF NOT EXISTS $dbName"