USE jedianalytics;
CREATE TABLE IF NOT EXISTS CLT_INFO_CUENTA (
cod_cliente string,
numCuenta string,
id_sucursal int
)
STORED AS avro;