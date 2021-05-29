select clt_tipo, count(*) * 100.0 / sum(count(*)) over()
from clt_datos
group by clt_tipo;