#!/bin/sh

hive -f CAT_TIPO_CLT.hql
hive -f CAT_TIPO_CONTAC.hql
hive -f CAT_TIPO_DOCUM.hql
hive -f CLT_CONTACTABILIDAD.hql
hive -f CLT_DATOS.hql
hive -f CLT_DOCUMENTACION.hql
hive -f CLT_RELACION_CTA_CLTE.hql
hive -f CLT_SUCURSAL.hql

