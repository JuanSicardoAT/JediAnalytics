#!/usr/bin/env bash

LOCAL_HOME="/home/cloudera/Documents/Materiales/JediAnalytics"
HDFS_HOME="/dev/JediAnalytics"

hdfs dfs -mkdir -p ${HDFS_HOME}/CAT_TIPO_CLT
hdfs dfs -put ${LOCAL_HOME}/datset/CAT_TIPO_CLT.dat ${HDFS_HOME}/CAT_TIPO_CLT
hdfs dfs -mkdir -p ${HDFS_HOME}/CAT_TIPO_CONTAC
hdfs dfs -put ${LOCAL_HOME}/datset/CAT_TIPO_CONTAC ${HDFS_HOME}/CAT_TIPO_CONTAC
hdfs dfs -mkdir -p ${HDFS_HOME}/CAT_TIPO_DOCUM
hdfs dfs -put ${LOCAL_HOME}/datset/CAT_TIPO_DOCUM.dat ${HDFS_HOME}/CAT_TIPO_DOCUM
hdfs dfs -mkdir -p ${HDFS_HOME}/CLT_CONTACTABILIDAD
hdfs dfs -put ${LOCAL_HOME}/datset/CLT_CONTACTABILIDAD.csv ${HDFS_HOME}/CLT_CONTACTABILIDAD
hdfs dfs -mkdir -p ${HDFS_HOME}/CLT_DATOS
hdfs dfs -put ${LOCAL_HOME}/datset/CLT_DATOS.csv ${HDFS_HOME}/CLT_DATOS
hdfs dfs -mkdir -p ${HDFS_HOME}/CLT_DOCUMENTACION
hdfs dfs -put ${LOCAL_HOME}/datset/CLT_DOCUMENTACION.csv ${HDFS_HOME}/CLT_DOCUMENTACION
hdfs dfs -mkdir -p ${HDFS_HOME}/CLT_RELACION_CTA_CLTE
hdfs dfs -put ${LOCAL_HOME}/datset/CLT_RELACION_CTA_CLTE.csv ${HDFS_HOME}/CLT_RELACION_CTA_CLTE
hdfs dfs -mkdir -p ${HDFS_HOME}/CLT_SUCURSAL
hdfs dfs -put ${LOCAL_HOME}/datset/CLT_SUCURSAL ${HDFS_HOME}/CLT_SUCURSAL
