USE jedianalytics;

Select distinct clt_nacionalidad from clt_datos_int where clt_datos_int.clt_tipo = "1";

Select count(Distinct clt_nacionalidad) from clt_datos_int;