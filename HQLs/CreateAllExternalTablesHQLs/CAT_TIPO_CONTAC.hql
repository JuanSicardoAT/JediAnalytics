USE jedianalytics;

CREATE EXTERNAL TABLE IF NOT EXISTS CAT_TIPO_CONTAC(
clt_tipo_contact string,
descripcion string
)
ROW FORMAT delimited fields terminated by '|' lines terminated by '\n'
STORED AS textfile
LOCATION '/dev/equipo5/JediAnalytics/CAT_TIPO_CONTAC/';

