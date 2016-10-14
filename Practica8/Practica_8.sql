create database sams;
use sams;
delimiter #
show tables#
create procedure uno()
begin
	select count(idGerente) as TOTAL_EN_GERENTE from gerente;
	select club.nombre,socio.nombre,estado.nombre from socio,estado,club,socioClub 
			where club.idClub=socioclub.idclub and
				  socio.idSocio=socioClub.idSocio and
				  club.idEdo=estado.idEdo and
				  estado.nombre like 'M%XICO';
	select club.nombre,servicio.nombre from club,servicioclub,servicio
			where club.idClub=servicioClub.idClub and
				servicio.idServicio=servicioclub.idServicio and
				servicio.nombre='APPLE SHOP';
end #

call uno()#

create procedure dos(IN nombreSer varchar(30))
begin
	select count(idGerente) as TOTAL_EN_GERENTE from gerente;
	select club.nombre,socio.nombre,estado.nombre from socio,estado,club,socioClub 
			where club.idClub=socioclub.idclub and
				  socio.idSocio=socioClub.idSocio and
				  club.idEdo=estado.idEdo and
				  estado.nombre like 'M%XICO';
	select club.nombre,servicio.nombre from club,servicioclub,servicio
			where club.idClub=servicioClub.idClub and
				servicio.idServicio=servicioclub.idServicio and
				servicio.nombre like nombreSer;
end #

call dos('APPLE SHOP')#

create procedure prueba_tres()
begin
select gerente.nombre from gerente,club where gerente.idClub=club.idClub and club.nombre='TOLUCA';

select servicio.nombre from servicio,servicioclub,club where 
servicioclub.idServicio=servicio.idServicio and club.idclub=servicioclub.idClub and club.nombre='TOLUCA';

select proveedor.nombre from proveedor,proveedorsams,club where proveedor.idproveedor=proveedorsams.idProveedor and
club.idClub=proveedorSams.idClub and club.nombre='TOLUCA';

end #

call prueba_tres()#

create procedure prueba_cuatro()
begin
select nombre from socio where nombre like '%GONZALEZ%';
select count(idSocio) from socio;
select producto.nombre, producto.precioUnitario from producto,proveedor where producto.idproveedor=proveedor.idProveedor and 
proveedor.nombre='SABRITAS';
select club.nombre,gerente.nombre,proveedor.nombre from club,proveedorsams,proveedor,gerente,estado where
club.idClub=gerente.idClub and proveedorsams.idClub=club.idclub and proveedorsams.idProveedor=proveedor.idProveedor and
club.idEdo=estado.idEdo and estado.nombre='CHIAPAS'; 
end #

call prueba_cuatro()#

create procedure prueba_cinc()
begin
select club.nombre as club, count(socio.idSocio) as NumSocios from club,socio,socioclub where
club.idClub=socioclub.idclub and socio.idSocio=socioclub.idSocio group by club.nombre;
end #

call prueba_cinc()#

select club.nombre as club, count(socio.idSocio) as NumSocios from club,socio,socioclub where
club.idClub=socioclub.idclub and socio.idSocio=socioclub.idSocio group by club.nombre having count(socio.idsocio)=2#

delimiter ;