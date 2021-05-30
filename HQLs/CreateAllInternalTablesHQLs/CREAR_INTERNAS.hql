USE jedianalytics;

CREATE TABLE IF NOT EXISTS CAT_TIPO_CLT_INT(
clt_tipo string,
descripcion string) 
STORED AS orc;

insert overwrite table CAT_TIPO_CLT_INT
select * from CAT_TIPO_CLT;


CREATE TABLE IF NOT EXISTS CAT_TIPO_CONTAC_INT(
clt_tipo_contact string,
descripcion string) 
STORED AS parquet;

insert overwrite table CAT_TIPO_CONTAC_INT
select * from CAT_TIPO_CONTAC;


create table if not exists CAT_TIPO_DOCUM_INT (
clt_tipo_doc string,
descripcion string)
STORED AS parquet;

insert overwrite table CAT_TIPO_DOCUM_INT
select * from CAT_TIPO_DOCUM;


CREATE TABLE IF NOT EXISTS CLT_CONTACTABILIDAD_INT(
cod_cliente string,
clt_tipo_contac string,
clt_contac string)
STORED AS orc;

insert overwrite table CLT_CONTACTABILIDAD_INT
select * from CLT_CONTACTABILIDAD;


CREATE TABLE IF NOT EXISTS CLT_DATOS_INT(
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
clt_fec_constitucion string)
STORED AS parquet;

insert overwrite table CLT_DATOS_INT
select * from CLT_DATOS;


CREATE TABLE IF NOT EXISTS CLT_DOCUMENTACION_INT(
cod_cliente string,
clt_tipo_doc string,
clt_numdoc string)
STORED AS avro;

insert overwrite table CLT_DOCUMENTACION_INT
select * from CLT_DOCUMENTACION;


create table if not exists CLT_RELACION_CTA_CLTE_INT(
cod_cliente string,
numCuenta string)
STORED AS avro;

insert overwrite table CLT_RELACION_CTA_CLTE_INT
select * from CLT_RELACION_CTA_CLTE;


CREATE TABLE IF NOT EXISTS CLT_SUCURSAL_INT(
cod_cliente string, id_sucursal string)
STORED AS avro;

insert overwrite table CLT_SUCURSAL_INT
select * from CLT_SUCURSAL;

