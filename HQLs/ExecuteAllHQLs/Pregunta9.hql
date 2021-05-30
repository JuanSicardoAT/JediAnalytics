use jedianalytics;

create table if not exists clt_personal as 
select 
dat.cod_cliente codigo_cliente,
concat (dat.clt_nombre, ' ' , dat.clt_apellido_paterno, ' ' , dat.clt_apellido_materno) 
as nombre_completo, 
dat.clt_direcc direccion,
em.clt_contac email, 
conta.clt_contac numero
from clt_datos dat
join 
(
select cat.cod_cliente ,  
min(con.clt_tipo_contac) as prio
from clt_datos cat
join clt_contactabilidad con
on cat.cod_cliente = con.cod_cliente and con.clt_tipo_contac != '1'
group by cat.cod_cliente
) as prioridad 
on prioridad.cod_cliente = dat.cod_cliente
join clt_contactabilidad conta
on prioridad.cod_cliente = conta.cod_cliente and prioridad.prio = conta.clt_tipo_contac
join(
select con.cod_cliente ,  
con.clt_contac
from clt_contactabilidad con
where con.clt_tipo_contac = '1'
) as em
on em.cod_cliente = conta.cod_cliente;

select * from clt_personal;