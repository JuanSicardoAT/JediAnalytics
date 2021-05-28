#!/usr/bin/env bash

LOCAL_TEXT_FILES_HOME="./TextFiles/"
HDFS_TEXT_FILES_HOME="/dev/equipo5/JediAnalytics/"

UPLOADING_MESSAGE="--Se están subiendo los archivos a HDFS en la carpeta:
  $HDFS_TEXT_FILES_HOME"

echo "$UPLOADING_MESSAGE"

hdfs dfs -mkdir -p ${HDFS_TEXT_FILES_HOME}CAT_TIPO_CLT
hdfs dfs -put ${LOCAL_TEXT_FILES_HOME}CAT_TIPO_CLT.dat \
  ${HDFS_TEXT_FILES_HOME}CAT_TIPO_CLT

hdfs dfs -mkdir -p ${HDFS_TEXT_FILES_HOME}CAT_TIPO_CONTAC
hdfs dfs -put ${LOCAL_TEXT_FILES_HOME}CAT_TIPO_CONTAC \
  ${HDFS_TEXT_FILES_HOME}CAT_TIPO_CONTAC

hdfs dfs -mkdir -p ${HDFS_TEXT_FILES_HOME}CAT_TIPO_DOCUM
hdfs dfs -put ${LOCAL_TEXT_FILES_HOME}CAT_TIPO_DOCUM.dat \
  ${HDFS_TEXT_FILES_HOME}CAT_TIPO_DOCUM

hdfs dfs -mkdir -p ${HDFS_TEXT_FILES_HOME}CLT_CONTACTABILIDAD
hdfs dfs -put ${LOCAL_TEXT_FILES_HOME}CLT_CONTACTABILIDAD.csv \
  ${HDFS_TEXT_FILES_HOME}CLT_CONTACTABILIDAD

hdfs dfs -mkdir -p ${HDFS_TEXT_FILES_HOME}CLT_DATOS
hdfs dfs -put ${LOCAL_TEXT_FILES_HOME}CLT_DATOS.csv \
  ${HDFS_TEXT_FILES_HOME}CLT_DATOS

hdfs dfs -mkdir -p ${HDFS_TEXT_FILES_HOME}CLT_DOCUMENTACION
hdfs dfs -put ${LOCAL_TEXT_FILES_HOME}CLT_DOCUMENTACION.csv \
  ${HDFS_TEXT_FILES_HOME}CLT_DOCUMENTACION

hdfs dfs -mkdir -p ${HDFS_TEXT_FILES_HOME}CLT_RELACION_CTA_CLTE
hdfs dfs -put ${LOCAL_TEXT_FILES_HOME}CLT_RELACION_CTA_CLTE.csv \
  ${HDFS_TEXT_FILES_HOME}CLT_RELACION_CTA_CLTE

hdfs dfs -mkdir -p ${HDFS_TEXT_FILES_HOME}CLT_SUCURSAL
hdfs dfs -put ${LOCAL_TEXT_FILES_HOME}CLT_SUCURSAL \
  ${HDFS_TEXT_FILES_HOME}CLT_SUCURSAL
