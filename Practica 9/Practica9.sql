
USE sams;
#	Punto 4
select servicio.nombre from servicio, servicioclub, club 
where servicio.idServicio = servicioclub.idServicio and 
servicioclub.idClub = club.idClub and (club.nombre like 
"Hospital General" or club.nombre like "Puerto Vallarta");
#	Punto 5
select club.nombre, estado.nombre from estado, club, gerente 
where estado.idEdo = club.idEdo and gerente.idClub = club.idClub 
and gerente.nombre like "Rivera Guillen Diego";

#	Punto 6
select producto.nombre, precioUnitario from producto, club, proveedorsams, proveedor
	where club.idClub = proveedorsams.idClub and proveedorsams.idProveedor = proveedor.idProveedor 
    and producto.idProveedor = proveedor.idproveedor and club.nombre like "Guaymas";

#	Punto 7
select club.nombre, gerente.nombre from club, gerente, servicio, servicioclub where
club.idClub = gerente.idClub and club.idClub = servicioclub.idClub and 
servicio.idServicio = servicioclub.idServicio and servicio.nombre like "Service Deli";

#	Punto 8
SELECT club.nombre, club.direccion FROM club, socioclub, socio WHERE 
club.idClub= socioclub.idClub AND socioclub.idSocio = socio.idSocio 
AND (socio.idSocio= 10 OR socio.idSocio=33 OR socio.idSocio=78);

#	Punto 9
SELECT club.nombre, COUNT(proveedorsams.idProveedor) FROM club, proveedorsams, proveedor 
WHERE club.idClub= proveedorsams.idClub AND proveedorsams.idProveedor = proveedor.idProveedor 
GROUP BY club.nombre;

#	Punto 10
select socio.nombre, club.nombre from socio inner join socioclub on socio.idsocio=socioclub.idsocio 
inner join club on socioclub.idclub=club.idclub
and socio.direccion like 'Av. Ju%';

#	Punto 11
select gerente.nombre, club.nombre from gerente inner join club on gerente.idclub=club.idclub 
and (club.tel='Tel.: (624) 144 71 24' or club.tel='Tel.: (81) 83-18-04-06' 
or club.tel='Tel.: (747) 116-00-07');

#	Punto 12
select producto.* from producto inner join proveedor on proveedor.idproveedor=producto.idproveedor 
inner join proveedorsams on proveedorsams.idproveedor=proveedor.idproveedor
inner join club on club.idclub=proveedorsams.idclub and club.nombre='Acapulco Diamante';

#	Punto 13
select socio.nombre,club.nombre from socio inner join socioclub on socio.idsocio=socioclub.idsocio 
inner join club on club.idclub=socioclub.idclub and socio.direccion = 'conocida';

#	Punto 14
select club.nombre, count(socio.idsocio) from socio inner join socioclub on 
socio.idsocio=socioclub.idsocio inner join club on club.idclub=socioclub.idclub 
group by club.nombre;

#	Punto 15
select socio.tel,socio.nombre,club.direccion from socio inner join socioclub on 
socio.idsocio=socioclub.idsocio inner join club on club.idclub=socioclub.idclub
and socio.nombre like '%LINARES%'; 

#	Punto 16
select proveedor.nombre from proveedor inner join producto on producto.idproveedor=proveedor.idproveedor 
and ( producto.precioUnitario Between 5.00 AND 10.00);

#	Punto 17
SELECT nombre, tel FROM socio WHERE socio.idSocio IN (50,52,110);

#	Punto 18
SELECT estado.nombre, COUNT(club.idClub) FROM club, estado WHERE estado.idEdo = club.idEdo GROUP BY estado.nombre;

#	Punto 19
SELECT socio.nombre, club.nombre, estado.nombre FROM socio, socioclub, club, estado WHERE 
socio.idSocio= socioclub.idSocio AND socioclub.idClub=club.idClub AND club.idEdo = estado.idEdo
AND socio.nombre LIKE '%DAVID%';

#	Punto 20
select gerente.nombre from gerente inner join club on club.idclub=gerente.idclub inner join estado 
on estado.idedo=club.idedo and estado.nombre like 'Nuevo Le%n';