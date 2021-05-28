use equipo5;

create external table if not exists CLT_RELACION_CTA_CLTE
(
cod_cliente string,
numCuenta string
)
ROW FORMAT delimited fields terminated by '\u0059' lines terminated by '\n'
STORED AS textfile
LOCATION '/dev/equipo5/JediAnalytics/CLT_RELACION_CTA_CLTE/'
tblproperties("skip.header.line.count" = "1");
