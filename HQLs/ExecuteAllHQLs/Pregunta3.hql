USE jedianalytics;

select DocumentosPorcliente.TotalDocumentosCliente,
count(distinct DocumentosPorcliente.cod_cliente)
from (
SELECT  cod_cliente,
count(cod_cliente) as TotalDocumentosCliente
FROM clt_documentacion
GROUP BY cod_cliente
) DocumentosPorcliente
join clt_documentacion
on clt_documentacion.cod_cliente = DocumentosPorcliente.cod_cliente
group by totalDocumentosCliente;