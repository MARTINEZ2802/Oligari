create database Oliari;
use  Oliari;

create table Indumentaria
(
codigo		int not null primary key,
nombre 		varchar(30) not null,
material	varchar(30) not null,
color		varchar(50) not null,
talla		varchar(3) not null,
cantidad	int(4) not null,
precio      float(8,2),
imagen		varchar(100) not null,
descripcion	varchar(250) not null
);
drop table Indumentaria;

insert into Indumentaria(codigo, nombre, material, color, talla, cantidad, precio, imagen, descripcion) values('01','Blusa Summer','Tela RIB','azul marino con estampado','M',20,'8.50','-','Blusa para damas con escote en la parte de atràs');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('02','Leggins Julieta','Tela Suplex','rosado con plomo','S',22,'16.50','-','Còmodo para hacer ejercicios y salir a pasear, levanta pompis');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('03','Leggins Bianca','Tela Suplex','negro con estampado de mickey y minnie','S',15,'16.50','-','Levanta pompis y còmodo para salir a pasear');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('04','Leggins Bianca','Tela Suplex','negro con estampado de mickey y minnie','M',10,'16.50','-','Levanta pompis y còmodo para salir a pasear');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('05','Leggins Bianca','Tela Suplex','negro con estampado de mickey y minnie','L',12,'16.50','-','Levanta pompis y còmodo para salir a pasear');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('06','Short Print','Tela Chaliz Crepe','amarillo con negro animal print ','L',18,'7.50','-','Short fresco para utilzarlo en el verano');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('07','Casaca Caperucita','Tela Peluche','rojo con botones de animal print','L',9,'11.00','-','Perfecto para ponerse en el otoño e invierno');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('08','Chompa Angelica','Tela Angora','mostaza chispeado','M',14,'10.00','-','Se acomoda a tu cuerpo y cuenta con un bolsillo grande en la parte inferior');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('09','Short Sheyla','Tela Yakar','verde','L',6,'7.00','-','Cuenta con un lazo en la parte de adelante, puedes armar tu outfit formal con esta prenda');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('10','Blazer Brasilia','Tela Lino','rosa pastel','M',19,'12.00','-','Puedes armar un outfit casual o formal con està prenda, ademàs se acomoda a tu cuerpo');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('11','Polera Bears','Tela Franela','rosa bebe con estampado','M',22,'17.00','-','No tendràs frìo con esta prenda y puedes utilizarlo para dormir');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('12','Sueter Smile','Tela Franela','fucsia','M',15,'17.00','-','Perfecto para combianarlo con un jean de color negro');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('13','Casaca Zipp','Tela Bomber','rosa viejo con estampado','M',12,'12.00','-','Còmodo para salir a pasear con tus amigas o enamorado/a');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('14','Sueter Adicats','Tela Franela','lila con estampado de gatos','M',11,'17.00','-','Se amolda al cuerpo y perfecto para el invierno');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('15','Polo Manga Larga Hawai','Tela Rib','negro','M',20,'8.00','-','Presente una abertura en el lado izquierdo superior, ademàs es pegado al cuerpo y resalta tu figura ');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('16','Pantalon de vestir Brando','Tela Casimir','marròn','28',13,'36.00','-','Pantalon perfecto para un outfit elegante y es de corte ancho');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('17','Pantalon de vestir Brando','Tela Casimir','azul','30',13,'36.00','-','Pantalon perfecto para un outfit elegante y es de corte ancho');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('18','Pantalon de vestir Brando','Tela Casimir','verde','32',13,'36.00','-','Pantalon perfecto para un outfit elegante y es de corte ancho');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('19','Pantalon de vestir Brando','Tela Casimir','beige','34',5,'36.00','-','Pantalon perfecto para un outfit elegante y es de corte ancho');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('20','Polo Holanda','Tela Rib','Verde esmeralda','M',25,'7.00','-','Polo basico con abertura en ambos brazos');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('21','Blusa Franchesca','Tela Durazno','Azulino','M',22,'8.00','-','Blusa presenta un diseño de flores en el medio ademàs se puede utilizar a la altura de los hombros');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('22','Polo Marcela','Tela Durazno','Negro con rayas blancas','L',6,'7.50','-','Presenta un estampado de minnie y la pata daisy, es còmodo y ancho');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('23','Polo Grecia','Tela Rib','Negro','M',10,'7.00','-','Tiene una abertura en la parte inferior que te hace ver mas sexy y se amolda a tu cuerpo');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('24','Polo Gianella','Tela Rib','Acero','M',12,'7.00','-','Presenta un diseño espeal en las mangas que resalta y su corte es mas ancho');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('25','Polo Rosmery','Tela Rib','Rojo','M',8,'7.00','-','Se amolda a tu cuerpo tiene un pequeño escote y en el lado izquiero presenta una abertura');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('26','Polo Oversize Bugs','Tela Jersey','Verde enebro con estampado','M',16,'7.00','-','Presenta un estampado de Jerry, es muy comodo para aquellas que les gusta los polos largos');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('27','Vestido Yung','Tela Angora y Americana','Plomo rata','M',4,'11.50','-','Vestido con cuello alto y manga larga, perfecto para salir con tus amigas o familia');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('28','Vestido Estefani','Tela Angora y Koreana','Rojo','M',5,'11.50','-','Vestido de cuello normal, manga larga y con un cinturon de color blanco que le da un toque sexi');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('29','Camisa Pierina','Tela Rib','Mostaza','M',9,'9.50','-','Camisa con un bolsillo en la parte superior izquierda, perfecto para armar un outfit sport elegante');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('30','Polo Elena','Tela Angora','Marròn','L',11,'10.00','-','Polo manga larga con abertura en los brazos y perlas para resaltar');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('31','Polo Gloria','Tela Rib','Verde Lima','L',15,'7.50','-','Polo corto con una abertura v, se amolda a tu cuerpo y su corte es largo');


select * from Indumentaria;
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad, precio, imagen, descripcion) values('1','Blusa Summer','Tela RIB','azul marino con estampado','M',20,'8.50','-','Blusa para damas con escote en la parte de atràs');
insert into Indumentaria(codigo, nombre, material, color, talla, cantidad,precio, imagen, descripcion) values('2','Leggins Julieta','Tela Suplex','rosado con plomo','S',22,'16.50','-','Còmodo para hacer ejercicios y salir a pasear, levanta pompis');
DELETE FROM Indumentaria
WHERE codigo ='IND010';

drop table indumentaria;

create table Materia
(
codigo		varchar(10) not null primary key,
material	varchar(50) not null,
proveedor	varchar(50) not null,
monto		decimal(8,2),
medidas		varchar(50) not null,
color		varchar(50),
cantidad	int(4) not null,
imagen		varchar(100) not null,
descripcion	varchar(300) not null
);

DROP TABLE Materia;

insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT001', 'Tela Rib', 'Olinda Textiles', '800.00', '300 x 200 metros', 'azul marino', '30', '-', 'Tela para elaborar polos y blusas');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT002', 'Tela Rib', 'Olinda Textiles', '400.00', '300 x 200 metros', 'rojo', '15', '-', 'Tela para elaborar polos y blusas');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT003', 'Tela Rib', 'Olinda Textiles', '400.00', '300 x 200 metros', 'acero', '15', '-', 'Tela para elaborar polos y blusas');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT004', 'Tela Rib', 'Olinda Textiles', '400.00', '300 x 200 metros', 'negro', '15', '-', 'Tela para elaborar polos y blusas');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT005', 'Tela Suplex', 'J y R Textiles', '900.00', '400 x 500 metros', 'rosado', '50', '-', 'Tela para elaborar leggins, es grueso');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT006', 'Tela Suplex', 'J y R Textiles', '900.00', '400 x 500 metros', 'negro', '40', '-', 'Tela para elaborar leggins, es grueso');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT007', 'Tela Chaliz Crepe', 'Olinda Textiles', '500.00', '350 x 400 metros', 'animal print', '30', '-', 'Tela para elaborar short frescos y delgados');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT008', 'Tela Peluche', 'Olinda Textiles', '1000.00', '500 x 650 metros', 'rojo', '70', '-', 'Tela para elaborar casacas abrigadoras');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT009', 'Tela Angora', 'Gamarra Telas', '950.00', '400 x 550 metros', 'mostaza', '50', '-', 'Tela para elaborar chompas, polos y vestidos');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT010', 'Tela Angora', 'Gamarra Telas', '950.00', '400 x 550 metros', 'plomo', '50', '-', 'Tela para elaborar chompas, polos y vestidos');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT011', 'Tela Angora', 'Gamarra Telas', '950.00', '400 x 550 metros', 'rojo', '50', '-', 'Tela para elaborar chompas, polos y vestidos');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT012', 'Tela Yakar', 'J y R Textiles', '750.00', '400 x 600 metros', 'verde', '45', '-', 'Tela para elaborar shorts de estilo formal');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT013', 'Tela Lino', 'Gamarra Telas', '650.00', '400 x 550 metros', 'rosa pastel', '30', '-', 'Tela para elaborar blazers');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT014', 'Tela Franela', 'Franela, French Terry', '750.00', '400 x 600 metros', 'rosa pastel', '25', '-', 'Tela para elaborar blazers y suerters');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT015', 'Tela Franela', 'Franela, French Terry', '900.00', '400 x 600 metros', 'fucsia', '28', '-', 'Tela para elaborar blazers y suerters');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT016', 'Tela Franela', 'Franela, French Terry', '500.00', '400 x 600 metros', 'lila', '30', '-', 'Tela para elaborar blazers y suerters');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT017', 'Tela Bomber', 'Franela, French Terry', '250.00', '400 x 600 metros', 'rosa viejo', '15', '-', 'Tela para elaborar casacas');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT018', 'Tela Casimir', 'Olinda Textiles', '250.00', '400 x 600 metros', 'marron', '15', '-', 'Tela para elaborar pantalones de vestir');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT019', 'Tela Casimir', 'Olinda Textiles', '250.00', '400 x 600 metros', 'azul', '15', '-', 'Tela para elaborar pantalones de vestir');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT020', 'Tela Casimir', 'Olinda Textiles', '250.00', '400 x 600 metros', 'verde', '15', '-', 'Tela para elaborar pantalones de vestir');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT021', 'Tela Casimir', 'Olinda Textiles', '250.00', '400 x 600 metros', 'beige', '15', '-', 'Tela para elaborar pantalones de vestir');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT022', 'Tela Durazno', 'Olinda Textiles', '350.00', '400 x 600 metros', 'azulino', '18', '-', 'Tela para elaborar blusas y polos');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT023', 'Tela Durazno', 'Olinda Textiles', '350.00', '400 x 600 metros', 'negro', '18', '-', 'Tela para elaborar blusas y polos');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT024', 'Tela Jersey', 'Gamarra Telas', '150.00', '400 x 500 metros', 'verde enebro', '9', '-', 'Tela para elaborar polos oversize');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT025', 'Hilos', 'Hilos Yovi', '98.00', '500 metros', 'azul marino', '10', '-', 'Hilos que se utilizaran para la confeccion de indumentarias');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT026', 'Hilos', 'Hilos Yovi', '197.00', '500 metros', 'rojo', '20', '-', 'Hilos que se utilizaran para la confeccion de indumentarias');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT027', 'Hilos', 'Hilos Yovi', '98.00', '500 metros', 'verde', '10', '-', 'Hilos que se utilizaran para la confeccion de indumentarias');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT028', 'Hilos', 'Hilos Yovi', '167.00', '500 metros', 'rosado', '18', '-', 'Hilos que se utilizaran para la confeccion de indumentarias');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT029', 'Hilos', 'Hilos Yovi', '118.00', '500 metros', 'plomo', '12', '-', 'Hilos que se utilizaran para la confeccion de indumentarias');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT030', 'Hilos', 'Hilos Yovi', '98.00', '500 metros', 'lila', '10', '-', 'Hilos que se utilizaran para la confeccion de indumentarias');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT031', 'Agujas', 'Accesorios Textiles e Industriales', '78.00', '10 x 1.6 pulgadas', '-', '50', '-', 'Agujas que se necesitaran para la confeccion de indumentarias');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT032', 'Agujas', 'Accesorios Textiles e Industriales', '78.00', '10 x 1.8 pulgadas', '-', '50', '-', 'Agujas que se necesitaran para la confeccion de indumentarias');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT033', 'Agujas', 'Accesorios Textiles e Industriales', '78.00', '10 x 2 pulgadas', '-', '50', '-', 'Agujas que se necesitaran para la confeccion de indumentarias');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT034', 'Agujas', 'Accesorios Textiles e Industriales', '78.00', '10 x 2.2 pulgadas', '-', '50', '-', 'Agujas que se necesitaran para la confeccion de indumentarias');
insert into Materia(codigo, material, proveedor, monto, medidas, color, cantidad, imagen, descripcion) values ('MAT035', 'Agujas', 'Accesorios Textiles e Industriales', '78.00', '10 x 2.35 pulgadas', '-', '50', '-', 'Agujas que se necesitaran para la confeccion de indumentarias');

select* from Materia;

create table Personal
(
dni			varchar(8) not null primary key,
nombre  	varchar(30) not null,
apellido	varchar(30) not null,
telefono	varchar(9) not null,
correo		varchar(50),
cargo		varchar(50),
sueldo		decimal(8,2),
descripcion varchar(250)
);

insert into Personal(dni, nombre, apellido, telefono, correo, cargo, sueldo, descripcion) values('72382699', 'Araceli', 'Perez', '945615937','areceli2023@gmail.com','Vendedor', '1000.00', 'Encargo de recepcionar los pedidos ya sea presencial o virtual');
insert into Personal(dni, nombre, apellido, telefono, correo, cargo, sueldo, descripcion) values('75263594', 'Jorge', 'Gonzales', '954695125','Jorge2000@gmail.com','Vendedor', '1000.00', 'Encargo de recepcionar los pedidos ya sea presencial o virtual');
insert into Personal(dni, nombre, apellido, telefono, correo, cargo, sueldo, descripcion) values('72546120', 'Delia', 'Hurtado', '951753260','Delia19973@gmail.com','Costurero', '1025.00', 'Encargo de fabricar las indumentarias');
insert into Personal(dni, nombre, apellido, telefono, correo, cargo, sueldo, descripcion) values('75684230', 'Josue', 'Meza', '946753020','Josuem@gmail.com','Costurero', '1025.00', 'Encargo de fabricar las indumentarias');
insert into Personal(dni, nombre, apellido, telefono, correo, cargo, sueldo, descripcion) values('72894621', 'Manuel', 'Cardenas', '946512341','Manuel@gmail.com','Costurero', '1025.00', 'Encargo de fabricar las indumentarias');
insert into Personal(dni, nombre, apellido, telefono, correo, cargo, sueldo, descripcion) values('76457820', 'Miguel', 'Salinas', '945786123','MiguelSalinas@gmail.com','Costurero', '1025.00', 'Encargo de fabricar las indumentarias');
insert into Personal(dni, nombre, apellido, telefono, correo, cargo, sueldo, descripcion) values('71549780', 'Yuliana', 'Olivera', '900054617','YuliO@gmail.com','Costurero', '1025.00', 'Encargo de fabricar las indumentarias');
insert into Personal(dni, nombre, apellido, telefono, correo, cargo, sueldo, descripcion) values('70364578', 'Esmeralda', 'Portocarrero', '922755945','Esme123@gmail.com','Costurero', '1025.00', 'Encargo de fabricar las indumentarias');
insert into Personal(dni, nombre, apellido, telefono, correo, cargo, sueldo, descripcion) values('75369120', 'Alejandra', 'Mendoza', '933365751','Alejandra001@gmail.com','Gerente', '2000.00', 'Encargada de realizar las compras necesarias para la confeccion de indumentarias, ademàs de ser la dueña');


DROP TABLE Personal;
Select * FROM Personal;

create table Usuario
(
id varchar(20) not null primary key,
contra varchar(20)
);
 insert into Usuario(id,contra) values ('admin','admin');
  insert into Usuario(id,contra) values ('progra','123456');
  
  create table Cliente 
  (
  nombre varchar (50),
  apellido varchar(50),
  dni varchar(8),
  celular varchar(9),
  correo varchar(50)
  );
 insert into Cliente (nombre,apellido,dni,celular,correo) values('Daniel','Ramos','70390098','952739426','danielramosleon1@gmail.com');



