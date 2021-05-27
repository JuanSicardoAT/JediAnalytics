use equipo5;

create external table if not exists CAT_TIPO_DOCUM
(
clt_tipo_doc string,
descripcion string
)
ROW FORMAT delimited fields terminated by '|' lines terminated by '\n'
STORED AS textfile
LOCATION '/dev/equipo5/clients/CAT_TIPO_DOCUM'
tblproperties("skip.header.line.count" = "1");
