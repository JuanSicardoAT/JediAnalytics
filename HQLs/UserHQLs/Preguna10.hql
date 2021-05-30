USE jedianalytics;

SELECT datos.cod_cliente,
contacto.clt_contac,
(year(current_date()) - year(clt_fec_nac) 
+
if(date_format(current_date(), "%M %d") > date_format(clt_fec_nac, "%M %d"), 0, -1 )) as edad

from clt_datos_int datos
join 
(
SELECT conta.cod_cliente, conta.clt_contac
from clt_contactabilidad_int conta
JOIN cat_tipo_contac_int tipo
on conta.clt_tipo_contac = tipo.clt_tipo_contact
where tipo.descripcion = "email" ) as contacto
on datos.cod_cliente = contacto.cod_cliente
where datos.clt_tipo = "1" ; 