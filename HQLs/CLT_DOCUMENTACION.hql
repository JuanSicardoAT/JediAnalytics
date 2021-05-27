use equipo5;

create external table if not exists CLT_DOCUMENTACION
(
cod_cliente string,
clt_tipo_doc string,
clt_numdoc string
)
ROW FORMAT delimited fields terminated by '|' lines terminated by '\n'
STORED AS textfile
LOCATION '/dev/equipo5/clients/CLT_DOCUMENTACION'
tblproperties("skip.header.line.count" = "1");
