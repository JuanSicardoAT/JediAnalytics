use jedianalytics;

SELECT SUBSTRING(
clt_contac, LOCATE('@', clt_contac)+1, 
 LENGTH(clt_contac)-LOCATE('@',clt_contac)
)AS dominio, 
COUNT(clt_contac) as Cantidad_Dominio 
FROM 
email 
GROUP BY SUBSTRING(
clt_contac, LOCATE('@', clt_contac)+1,
LENGTH(clt_contac)-LOCATE('@', clt_contac));