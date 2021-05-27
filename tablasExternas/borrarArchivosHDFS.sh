#!/bin/sh

CLOUDERAHOME="/home/cloudera/Documents/Materiales/equipo5/tablasExternas"
HDFSHOME="/dev/equipo5/clients"

hdfs dfs -rm -r ${HDFSHOME}/CAT_TIPO_CLT
hdfs dfs -rm -r ${HDFSHOME}/CAT_TIPO_CONTAC
hdfs dfs -rm -r ${HDFSHOME}/CAT_TIPO_DOCUM
hdfs dfs -rm -r ${HDFSHOME}/CLT_CONTACTABILIDAD
hdfs dfs -rm -r ${HDFSHOME}/CLT_DATOS
hdfs dfs -rm -r ${HDFSHOME}/CLT_DOCUMENTACION
hdfs dfs -rm -r ${HDFSHOME}/CLT_RELACION_CTA_CLTE
hdfs dfs -rm -r ${HDFSHOME}/CLT_SUCURSAL
