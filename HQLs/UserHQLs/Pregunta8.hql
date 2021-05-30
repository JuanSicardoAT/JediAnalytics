use jedianalytics;

create table clt_documentos_general as
select 
datos.cod_cliente codigo_cliente,
concat (datos.clt_nombre, ' ' , datos.clt_apellido_paterno, ' ' , datos.clt_apellido_materno) 
as nombre_completo,
if(documentos.descripcion = "curp" ,documentos.clt_numdoc , "No disponible") as CURP,
if(documentos.descripcion = "rfc", documentos.clt_numdoc , "No disponible") as rfc,
if(documentos.descripcion = "pasaporte", documentos.clt_numdoc , "No disponible") as pasaporte
from clt_datos_int datos
join(
SELECT cd.cod_cliente, ctd.descripcion, cd.clt_numdoc
FROM CLT_DOCUMENTACION_INT cd 
JOIN CAT_TIPO_DOCUM_INT ctd
ON cd.clt_tipo_doc = ctd.clt_tipo_doc) as documentos
on datos.cod_cliente = documentos.cod_cliente;