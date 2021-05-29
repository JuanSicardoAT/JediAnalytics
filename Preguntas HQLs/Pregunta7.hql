alter table clt_datos
add columns (anio_nac string, iniciales string);

insert overwrite table clt_datos
select  cod_cliente,
clt_nombre,
clt_apellido_paterno,
clt_apellido_materno,
clt_fec_nac,
clt_direcc,
clt_sexo,
clt_pais_nac,
clt_nacionalidad,
clt_tipo,
clt_razon_social,
clt_fec_constitucion,
year(clt_datos.clt_fec_nac),
concat(regexp_extract(clt_nombre, '[A-Z]*',0),
regexp_extract(clt_apellido_paterno, '[A-Z]*',0),
regexp_extract(clt_apellido_materno, '[A-Z]*',0))
from clt_datos;
