USE jedianalytics;
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

FROM equipo5.clt_datos datos
join cat_tipo_clt cliente
on datos.clt_tipo = cliente.clt_tipo

join clt_documentacion doc
on datos.cod_cliente = doc.cod_cliente

join cat_tipo_docum tipo_doc
on doc.clt_tipo_doc = tipo_doc.clt_tipo_doc

join clt_contactabilidad contac
on datos.cod_cliente = contac.cod_cliente

join cat_tipo_contac tipo_contac
on contac.clt_tipo_contac = tipo_contac.clt_tipo_contact

join clt_relacion_cta_clte relacion
on datos.cod_cliente = relacion.cod_cliente

where tipo_doc.descripcion = "pasaporte" and tipo_contac.descripcion = "email";