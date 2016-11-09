create database hd;
use hd;
delimiter $

#uno
create procedure Pruebauno(determinado varchar (40))
begin
	select asociado.nombre,asociado.tel from asociado inner join HomeDepot on HomeDepot.idHD=asociado.HomeDepot_idHD and HomeDepot.estado=determinado;
end$

select asociado.nombre,asociado.tel,estado from asociado inner join HomeDepot on HomeDepot.idHD=asociado.HomeDepot_idHD$

select estado from HomeDepot$
call Pruebauno ('DF')$

#Dos
create procedure Pruebados1(determinado varchar (40))
begin
	select socio.nombre,socio.credito,tarjeta.nombre from tarjeta inner join socio on socio.idsocio=tarjeta.socio_idsocio inner join hdsocio on
		socio.idsocio=hdsocio.socio_idsocio inner join HomeDepot on idHD=homedepot_idHD and HomeDepot.estado=determinado;
end $

call Pruebados1('DF')$

#Tres
create procedure pruebatres(determinado varchar (50))
begin
delete from socio where nombre like CONCAT(determinado,'%');
end $

call pruebatres('ANGELES')$
select nombre from socio$

#Cuatro
create procedure pruebaCuatro()
begin
select socio.nombre, count(socio.idsocio) from socio inner join HdSocio on socio.idsocio=HdSocio.socio_idSocio inner join homeDepot on 
homeDepot.idHd=hdSocio.HomeDepot_idHd and homeDepot.nombre='Los Mochis';
end $

call pruebaCuatro()$

#Cinco
create procedure cinco1(determinado varchar(60))
begin
select depto.nombre from depto inner join hddepto on hddepto.depto_iddepto=depto.iddepto inner join homedepot on homedepot.idhd=hddepto.homedepot_idhd
and homedepot.nombre=determinado;
end $

call cinco1('Aguascalientes')$

#seis
create procedure seis1()
begin
select tarjeta.nombre, count(socio.idsocio) from tarjeta inner join socio on socio.idsocio=tarjeta.socio_idsocio group by tarjeta.nombre;
end$

call seis1()$


