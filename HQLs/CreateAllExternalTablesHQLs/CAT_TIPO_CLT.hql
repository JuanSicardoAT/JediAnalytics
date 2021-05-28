USE jedianalytics;

CREATE EXTERNAL TABLE IF NOT EXISTS CAT_TIPO_CLT
(
clt_tipo string,
descripcion string
)
ROW FORMAT delimited fields terminated by '\u0059' lines terminated by '\n'
STORED AS textfile
LOCATION '/dev/equipo5/JediAnalytics/CAT_TIPO_CLT/'
tblproperties("skip.header.line.count" = "1");