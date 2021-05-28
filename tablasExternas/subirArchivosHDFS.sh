#!/bin/sh

CLOUDERAHOME="/home/cloudera/Documents/Materiales/equipo5/tablasExternas"
HDFSHOME="/dev/equipo5/clients"

hdfs dfs -mkdir -p ${HDFSHOME}/CAT_TIPO_CLT
hdfs dfs -put ${CLOUDERAHOME}/datset/CAT_TIPO_CLT.dat ${HDFSHOME}/CAT_TIPO_CLT
hdfs dfs -mkdir -p ${HDFSHOME}/CAT_TIPO_CONTAC
hdfs dfs -put ${CLOUDERAHOME}/datset/CAT_TIPO_CONTAC ${HDFSHOME}/CAT_TIPO_CONTAC
hdfs dfs -mkdir -p ${HDFSHOME}/CAT_TIPO_DOCUM
hdfs dfs -put ${CLOUDERAHOME}/datset/CAT_TIPO_DOCUM.dat ${HDFSHOME}/CAT_TIPO_DOCUM
hdfs dfs -mkdir -p ${HDFSHOME}/CLT_CONTACTABILIDAD
hdfs dfs -put ${CLOUDERAHOME}/datset/CLT_CONTACTABILIDAD.csv ${HDFSHOME}/CLT_CONTACTABILIDAD
hdfs dfs -mkdir -p ${HDFSHOME}/CLT_DATOS
hdfs dfs -put ${CLOUDERAHOME}/datset/CLT_DATOS.csv ${HDFSHOME}/CLT_DATOS
hdfs dfs -mkdir -p ${HDFSHOME}/CLT_DOCUMENTACION
hdfs dfs -put ${CLOUDERAHOME}/datset/CLT_DOCUMENTACION.csv ${HDFSHOME}/CLT_DOCUMENTACION
hdfs dfs -mkdir -p ${HDFSHOME}/CLT_RELACION_CTA_CLTE
hdfs dfs -put ${CLOUDERAHOME}/datset/CLT_RELACION_CTA_CLTE.csv ${HDFSHOME}/CLT_RELACION_CTA_CLTE
hdfs dfs -mkdir -p ${HDFSHOME}/CLT_SUCURSAL
hdfs dfs -put ${CLOUDERAHOME}/datset/CLT_SUCURSAL ${HDFSHOME}/CLT_SUCURSAL
