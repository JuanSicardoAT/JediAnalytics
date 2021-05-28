use equipo5;

CREATE EXTERNAL TABLE IF NOT EXISTS CLT_DATOS(
cod_cliente string,
clt_nombre string,
clt_apellido_paterno string,
clt_apellido_materno string,
clt_fec_nac string,
clt_direcc string,
clt_sexo string,
clt_pais_nac string,
clt_nacionalidad string,
clt_tipo string,
clt_razon_social string,
clt_fec_constitucion string
)
ROW FORMAT delimited fields terminated by ',' lines terminated by '\n'
STORED AS textfile
LOCATION '/dev/equipo5/JediAnalytics/CLT_DATOS/'
tblproperties("skip.header.line.count" = "1");
