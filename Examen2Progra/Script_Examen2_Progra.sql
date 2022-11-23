create database Examen2Progra

use Examen2Progra

CREATE TABLE TbCajeros(
	CodigoCajero int IDENTITY(1,1) NOT NULL primary key,
	Nombre nvarchar(100) NOT NULL,
	Apellido nvarchar(100) NOT NULL,
)

CREATE TABLE TbMaquinas_Registradas(
	CodigoMaquina int IDENTITY(1,1) NOT NULL primary key,
	Piso int NOT NULL,
 ) 

CREATE TABLE TbProductos(
	CodigoProductos int IDENTITY(1,1) NOT NULL primary key,
	NombreProducto nvarchar(100) NOT NULL,
	Precio float NOT NULL DEFAULT 0,
 )

CREATE TABLE TbVenta(
	CodigoVenta int IDENTITY(1,1) NOT NULL,
	Cajero int NOT NULL FOREIGN KEY REFERENCES TbCajeros(CodigoCajero),
	Maquina int NOT NULL FOREIGN KEY REFERENCES TbMaquinas_Registradas(CodigoMaquina),
	Producto int NOT NULL FOREIGN KEY REFERENCES TbProductos(CodigoProductos),
	Fecha datetime NOT NULL default getdate()

)
insert into TbCajeros values ('Jose David','Millon')
insert into TbCajeros values ('Alexander Benjamin','Curling')
insert into TbProductos values ('Coca Cola',2000)
insert into TbProductos values ('Mentas Clorests',600)
insert into TbProductos values ('Pepsi',1900)
insert into TbMaquinas_Registradas values (1)
insert into TbMaquinas_Registradas values (2)
update TbProductos set NombreProducto='Coca Cola 1L',Precio=2500 where CodigoProductos=1
update TbProductos set NombreProducto='Pepsi 1L',Precio=2300 where CodigoProductos=3

SELECT TbCajeros.Nombre, TbCajeros.Apellido, TbProductos.NombreProducto, TbProductos.Precio, TbMaquinas_Registradas.Piso
FROM            TbCajeros INNER JOIN
                        TbVenta ON TbCajeros.CodigoCajero =TbVenta.Cajero INNER JOIN
                        TbMaquinas_Registradas ON TbVenta.Maquina = TbMaquinas_Registradas.CodigoMaquina INNER JOIN
                         TbProductos ON dbo.TbVenta.Producto = TbProductos.CodigoProductos


