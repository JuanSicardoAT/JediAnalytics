use jedianalytics;

SELECT
SUBSTRING(
con.clt_contac, LOCATE('@', con.clt_contac)+1,
 LENGTH(con.clt_contac)-LOCATE('@',con.clt_contac)
)AS dominio,
COUNT(con.clt_contac) as Cantidad_Dominio
FROM
clt_contactabilidad con
where clt_tipo_contac = 1
GROUP BY SUBSTRING(
con.clt_contac, LOCATE('@', con.clt_contac)+1,
LENGTH(con.clt_contac)-LOCATE('@', con.clt_contac));