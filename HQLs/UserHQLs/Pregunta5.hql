USE jedianalytics;

Select distinct clt_nacionalidad from clt_datos_int where clt_nacionalidad != 'NULL';

Select count(Distinct clt_nacionalidad) from clt_datos_int;