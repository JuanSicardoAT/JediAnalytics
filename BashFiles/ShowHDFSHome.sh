#!/usr/bin/env bash

HDFS_TEXT_FILES_HOME="/dev/equipo5/JediAnalytics/"

SHOWING_HDFS_MESSAGE="--Se está mostrando la carpeta de HDFS con ruta:
  $HDFS_TEXT_FILES_HOME"

echo "$SHOWING_HDFS_MESSAGE"
hdfs dfs -ls ${HDFS_TEXT_FILES_HOME}
