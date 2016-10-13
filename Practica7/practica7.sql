create database mixup1;
use mixup1;
select * from mixup;
#Punto 1 (15 Registros)
select empleado.nombre, empleado.tel from empleado,MixUp where idMixUp=MixUp_idMixUp and edo="DF";
#Punto 2 (3 registros)
select produccion.titulo from produccion,mixprod,mixup where produccion.idProduccion=mixprod.produccion_idproduccion 
and mixup.idmixup=mixprod.mixup_idmixup and mixup.nombre="Santa Fe";
#Punto 3 (31 registros)
select nombre,email from socio;
#Punto 4 (3 registros)
select empleado.nombre from empleado,mixup where empleado.mixup_idmixup=mixup.idmixup and mixup.nombre="Mixup Santa Fe";
#Punto 5 (3 registros)
select socio.nombre,socio.direccion from mixup,socio,mixsoc where socio.idsocio=mixsoc.socio_idsocio and mixup.idmixup=mixsoc.mixup_idmixup 
and mixup.edo="Guerrero";
#Punto 6 (6 registros)
select titulo from produccion,genero where idproduccion=produccion_idproduccion;
#Punto 7 (6 registros)
select nombre from genero;
#Punto 8 (3 registros)
select autor from mixup,mixprod,produccion where idproduccion=produccion_idproduccion and
mixup_idmixup=idmixup and edo="guerrero";
#Punto 9 (6 registros)
select empleado.nombre,empleado.tel from empleado,mixup,mixsoc,socio where empleado.mixup_idmixup=mixup.idmixup and mixup.idmixup=mixsoc.mixup_idmixup and
mixsoc.socio_idsocio=socio.idsocio and socio.nombre like "%ALEJANDRO";
#Punto 10 (3 registros)
select genero.nombre from genero,socio,mixprod,produccion where socio.idsocio=mixsoc.socio_idsocio and mixsoc.mixup_idmixup=mixup.idmixup and mixup.idmixup=mixprod.mixup_idmixup and produccion.idproduccion=mixprod.produccion_idprodccion and genero.produccion_idproduccion=produccion.idproduccion 
and socio.nombre like "Perez Morales Marcela";
#Punto 11 (10 registros)
select nombre,tel from mixup; 
#Punto 12 (6 registros)
select empleado.nombre from empleado INNER JOIN mixup ON mixup.idmixup=empleado.mixup_idmixup where mixup.nombre="MixUp perisur" or mixup.nombre="Mixup santa fe";
#Punto 13 (32 registros)
select empleado.tel from empleado INNER JOIN mixup On empleado.mixup_idmixup=mixup.idmixup INNER JOIN mixprod ON mixup.idmixup=mixprod.mixup_idmixup INNER JOIN produccion
on mixprod.produccion_idproduccion=produccion.idproduccion inner join genero on produccion.idproduccion=genero.produccion_idproduccion and genero.nombre="POP & rock";
#Punto 14 (10 registros)
select nombre,dir from mixup; 
#Punto 15 (32 registros)
select socio.nombre, mixup.nombre from socio, mixup,mixsoc where idsocio=socio_idsocio and idmixup=mixup_idmixup;
#Punto 16/3 (2 registros)
select mixup.nombre, socio.nombre, socio.tel from mixup, socio, mixsoc where mixup.idmixup = mixsoc.mixup_idmixup and misxsoc.socio_idsocio = socio.idsocio
and socio.nombre like "% Hernandez%";
#Punto 17/4 (3 registros)
select socio.nombre, mixup.nombre from socio, mixsoc, mixup where mixup_idmixup=idmixup and socio_idsocio=idsocio and mixup.nombre = "mixup perisur";
#Punto 18/6 (3 registros)
select nombre from mixup where dir like "%64050%" or dir like "%06000%" or dir like "%05109%"; 
#Punto 19/9 (registros)
select * from socio where socio.nombre like "%GARCIA%" and socio.nombre like "% % %e%";
#Punto 20
select Count(nombre) as mixups from mixup;