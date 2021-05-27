USE equipo5;
CREATE TABLE IF NOT EXISTS CLT_INFO_DATS (
cod_cliente string,
clt_tipo_desc string,
clt_nombre string,
clt_apellido_paterno string,
clt_apellido_materno string,
clt_fec_nac string,
clt_sexo int,
clt_pais_nac string,
pasaporte string,
email string,
numCuenta string
)
STORED AS orc;
