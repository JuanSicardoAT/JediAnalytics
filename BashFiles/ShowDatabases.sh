#!/usr/bin/env bash

SHOWING_DBS_MESSAGE="--Se están mostrando las bases de datos"

echo "$SHOWING_DBS_MESSAGE"
hive -e "SHOW DATABASES"