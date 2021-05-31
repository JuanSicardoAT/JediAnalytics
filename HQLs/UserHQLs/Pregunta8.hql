use jedianalytics;

create table if not exists clt_documentos_general as
select
datos.cod_cliente as codigo_cliente,
MIN(concat (datos.clt_nombre, ' ' , datos.clt_apellido_paterno, ' ' , datos.clt_apellido_materno))
as nombre_completo,
MIN(if(documentos.descripcion = "curp" ,documentos.clt_numdoc , "No disponible") )as CURP,
MIN(if(documentos.descripcion = "rfc", documentos.clt_numdoc , "No disponible")) as rfc,
MIN(if(documentos.descripcion = "pasaporte", documentos.clt_numdoc , "No disponible") )as pasaporte
from clt_datos datos
join(
SELECT  cd.cod_cliente, ctd.descripcion, cd.clt_numdoc
FROM CLT_DOCUMENTACION cd
JOIN CAT_TIPO_DOCUM ctd
ON cd.clt_tipo_doc = ctd.clt_tipo_doc
) as documentos
on datos.cod_cliente = documentos.cod_cliente
group by datos.cod_cliente;

select * from clt_documentos_general;