USE jedianalytics;

SELECT count(clt_documentacion_int.clt_tipo_doc) FROM clt_documentacion_int
FULL OUTER JOIN clt_datos_int
on clt_documentacion_int.cod_cliente =  clt_datos_int.cod_cliente
GROUP BY clt_tipo_doc;