use jedianalytics;

CREATE EXTERNAL TABLE IF NOT EXISTS CLT_CONTACTABILIDAD(
cod_cliente string,
clt_tipo_contac string,
clt_contac string
)
ROW FORMAT delimited fields terminated by ',' lines terminated by '\n'
STORED AS textfile
LOCATION '/dev/equipo5/JediAnalytics/CLT_CONTACTABILIDAD/'
tblproperties("skip.header.line.count" = "1");
