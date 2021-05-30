use jedianalytics;

CREATE table if NOT EXISTS iniciales_anio as
SELECT cod_cliente,concat(regexp_extract(clt_nombre, '[A-Z]*',0),
regexp_extract(clt_apellido_paterno, '[A-Z]*',0),
regexp_extract(clt_apellido_materno, '[A-Z]*',0))
as iniciales,
year(clt_datos_int.clt_fec_nac)
    AS anio_nac
from clt_datos_int;


alter table clt_datos_int
add columns (anio_nac string, iniciales string);

insert overwrite table clt_datos_int
select  d.cod_cliente,
d.clt_nombre,
d.clt_apellido_paterno,
d.clt_apellido_materno,
d.clt_fec_nac,
d.clt_direcc,
d.clt_sexo,
d.clt_pais_nac,
d.clt_nacionalidad,
d.clt_tipo,
d.clt_razon_social,
d.clt_fec_constitucion
inicialAnio.anio_nac,
inicialAnio.iniciales
from clt_datos_int d 
left join iniciales_anio as inicialAnio
on d.cod_cliente=inicialAnio.cod_cliente;