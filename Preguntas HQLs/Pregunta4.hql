CREATE TABLE edad
SELECT cod_cliente, year(current_date()) - year(clt_fec_nac) 
+
if(date_format(current_date(), "%M %d") > date_format(clt_fec_nac, "%M %d"), 0, -1 )
as Edad
FROM clt_datos
where clt_tipo = 1;

SELECT avg(edad)
from edad;