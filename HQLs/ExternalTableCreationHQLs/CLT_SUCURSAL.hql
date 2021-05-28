use jedianalytics;

CREATE EXTERNAL TABLE IF NOT EXISTS CLT_SUCURSAL(
cod_cliente string, id_sucursal string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.contrib.serde2.RegexSerDe'
WITH SERDEPROPERTIES ("input.regex" = "(.{8})(.{4})")
STORED AS textfile
location '/dev/equipo5/JediAnalytics/CLT_SUCURSAL/';