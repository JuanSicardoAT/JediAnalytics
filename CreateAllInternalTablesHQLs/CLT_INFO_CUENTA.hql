USE jedianalytics;
CREATE TABLE IF NOT EXISTS CLT_INFO_CUENTA (
cod_cliente string,
numCuenta string,
id_sucursal int
)
STORED AS avro;

insert overwrite table clt_info_cuenta
select relacion.cod_cliente, relacion.numCuenta, sucursal.id_sucursal
FROM clt_relacion_cta_clte relacion
JOIN clt_sucursal sucursal
ON relacion.cod_cliente = sucursal.cod_cliente;