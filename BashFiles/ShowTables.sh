#!/usr/bin/env bash

SHOWING_TABLES_MESSAGE="--Se están mostrando todas las tablas de jedianalytics"

echo "$SHOWING_TABLES_MESSAGE"
hive -e "USE jedianalytics; SHOW TABLES;"