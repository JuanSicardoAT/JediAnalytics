SELECT count(clt_documentacion.clt_tipo_doc) FROM clt_documentación
FULL OUTER JOIN clt_datos
on clt_documentacion.cod_cliente =  clt_datos.cod_cliente
GROUP BY clt_tipo_doc;