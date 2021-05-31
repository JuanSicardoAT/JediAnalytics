USE jedianalytics;

select clt_tipo, count(*) * 100.0 / sum(count(*)) over()
from clt_datos_int
group by clt_tipo;