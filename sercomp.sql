CREATE DATABASE IF NOT EXISTS sercomp;
USE sercomp;


CREATE TABLE IF NOT EXISTS  `ciudad` (
  `id_ciudad` int(11) AUTO_INCREMENT NOT NULL,
  `nombre_ciudad` varchar(100) NOT NULL,
  `estado_ciudad` char(20) NOT NULL,
  CONSTRAINT pk PRIMARY KEY (id_ciudad)
) ENGINE=InnoDB;


INSERT INTO `ciudad` (`id_ciudad`, `nombre_ciudad`, `estado_ciudad`) VALUES
(1, 'Bonao', 'Activo'),
(2, 'Cotui', 'Activo'),
(3, 'Santiago', 'Activo'),
(4, 'La vega', 'Activo');



CREATE TABLE IF NOT EXISTS  `sector` (
  `id_sector` int(11) AUTO_INCREMENT NOT NULL,
  `nombre_sector` varchar(100) NOT NULL,
  `estado_sector` char(20) DEFAULT NULL,
  `id_ciudad` int(11) NOT NULL,
CONSTRAINT pk PRIMARY KEY (id_sector),
CONSTRAINT fk_sec_ciudad FOREIGN KEY (id_ciudad) REFERENCES ciudad (id_ciudad)
) ENGINE=InnoDB;



INSERT INTO `sector` (`id_sector`, `nombre_sector`, `estado_sector`, `id_ciudad`) VALUES
(1, 'Prosperidad', 'Activo', 1),
(2, 'Caballero', 'Activo', 2),
(3, 'La Dominicana', 'Activo', 1),
(4, 'La españa', 'Activo', 1),
(5, 'Quita SueÃ±o', 'Activo', 2),
(6, 'Licey ', 'Activo', 3);



CREATE TABLE IF NOT EXISTS  calle (
  `id_calle` int(11) AUTO_INCREMENT NOT NULL,
  `nombre_calle` varchar(100) NOT NULL,
  `estado_calle` char(20) DEFAULT NULL,
  `id_sector` int(11) NOT NULL,
  CONSTRAINT pk PRIMARY KEY (id_calle),
  CONSTRAINT fk_call_sec FOREIGN KEY (id_sector) REFERENCES sector (id_sector)
) ENGINE=InnoDB;

INSERT INTO calle (`id_calle`, `nombre_calle`, `estado_calle`, `id_sector`) VALUES
(1, 'C/ Mexico eq luperon', 'Activo', 1),
(2, 'C/ principal ', 'Activo', 2),
(3, 'Av libertad', 'Activo', 1),
(4, 'Autopista Duarte', 'Activo', 1),
(5, 'C/ Autopista vieja', 'Activo', 3);



CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cliente` int(11) AUTO_INCREMENT NOT NULL,
  `nombre_cliente` varchar(100) DEFAULT NULL,
  `apellido_cliente` varchar(100) DEFAULT NULL,
  `cedula_cliente` varchar(20) DEFAULT NULL,
  `fechanacimiento_cliente` date DEFAULT NULL,
  `ciudad_cliente` varchar(200) DEFAULT NULL,
  `sector_cliente` varchar(100) DEFAULT NULL,
  `calle_cliente` varchar(100) DEFAULT NULL,
  `numcasa_cliente` int(11) DEFAULT NULL,
  `telefono_cliente` char(20) DEFAULT NULL,
  `correo_cliente` varchar(100) DEFAULT NULL,
  `clave_cliente` varchar(20) DEFAULT NULL,
  `olvido_pass_iden` varchar(130) DEFAULT NULL,
  `deuda_cliente` int(50) NOT NULL,
  `estado_cliente` char(20) DEFAULT NULL,
  `id_ciudad` int(11)  NOT NULL,
  `id_sector` int(11)  NOT NULL,
  `id_calle` int(11)  NOT NULL,
  CONSTRAINT pk PRIMARY KEY (id_cliente),
  CONSTRAINT fk_client_ciudad FOREIGN KEY (id_ciudad) REFERENCES ciudad (id_ciudad),
  CONSTRAINT fk_client_sector FOREIGN KEY (id_sector) REFERENCES sector (id_sector),
  CONSTRAINT fk_client_calle FOREIGN KEY (id_calle) REFERENCES calle (id_calle)
) ENGINE=InnoDB;


INSERT INTO `cliente` (`id_cliente`, `nombre_cliente`, `apellido_cliente`, `cedula_cliente`, `fechanacimiento_cliente`, `ciudad_cliente`, `sector_cliente`, `calle_cliente`, `numcasa_cliente`, `telefono_cliente`, `correo_cliente`, `clave_cliente`, `olvido_pass_iden`, `deuda_cliente`, `estado_cliente`
, `id_ciudad`, `id_sector`, `id_calle`) VALUES
(1, 'Carlos J', 'Gomez', '04801133465', '1996-11-18', '1', '1', '1', 15, '8092966337', 'carlosjose1234@hotmail.es', 'wayne', 'bd7e3967a403ccf78b7d2889aa825ee0', 0, 'Activo', 1, 1, 1),
(2, 'Carlos J', 'Gomez T', '1', '2021-06-02', '2', '1', '1', 1, '1', 'cwayne084@gmail.com', 'admin', '', 0, 'Desactivado', 2, 1, 1),
(3, 'Carlos', 'Gomez', '2', '2021-06-02', '3', '1', '1', 2, '2', 'carlosjose12@hotmail.es', 'admin', '', 0, 'Desactivado', 1, 1, 1),
(4, 'Carlos J', 'Gomez T', '5', '2021-06-01', '3', '1', '1', 1, '2', 'cwayne01@gmail.com', 'admin', '', 0, 'Activo', 1, 1, 1),
(11, 'Pedro', 'Olivero', '63737474747', '2021-07-15', '1', '1', '1', 55, '8496525636', 'prueba@hotmail.com', 'holahola', '', 0, 'Activo', 1, 1, 1),
(5, 'Carlos', 'Gomez', '444', '2021-06-01', '1', '1', '1', 1, '2', 'cwayne084112@gmail.com', 'admin', '', 0, 'Activo', 1, 1, 1),
(6, 'Carlos', 'Gomez', '123341', '2021-06-03', '2', '1', '1', 1, '1', 'cwayne08224@gmail.com', 'admin', '', 0, 'Activo', 1, 1, 1),
(7, 'Carlos', 'Gomez', '12144411', '2021-06-11', '1', '1', '1', 123, '1', 'cwaynedd084@gmail.com', 'admin', '', 0, 'Activo', 1, 1, 1),
(8, 'Carlos', 'Gomez', '00000000', '2021-06-03', '1', '1', '1', 1, '12', 'carlosjose221234@hotmail.es', 'admin', '', 0, 'Activo', 1, 1, 1),
(9, 'Carlos', 'Gomez', '3131', '2021-06-01', '1', '1', '1', 23, '12', 'carlosjose111234@hotmail.es', 'admin', '', 0, 'Activo', 1, 1, 1),
(10, 'Carlos', 'Gomez', '121314', '1999-02-12', '1', '1', '1', 12, '12', 'cwayne222084@gmail.com', 'admin', '', 0, 'Activo', 1, 1, 1),
(12, 'Carlos', 'Gomez', '033332', '2021-07-02', '1', '1', '1', 1, '8099664550', 'pj@hotmail.es', 'admin', '', 0, 'Activo', 1, 1, 1),
(13, 'Bjkkj', 'Bjkkvv', '68666', '2021-07-15', '1', '1', '3', 66, '67866', 'hhhhhhh@hoymail.com', 'ghijb', '', 0, 'Activo', 1, 1, 1),
(14, 'Carlos Jose', 'Gomez x', '04801133', '2021-10-21', '1', '1', '3', 34, '8092966337', 'carlosjose123@hotmail.es', '1234', NULL, 0, 'Activo', 1, 1, 1),
(15, 'Carlos Jose', 'Gomez Tejada', '34555555552', '2000-01-01', '1', '1', '1', 15, '8092966337', 'cwayne@gmail.com', 'admin', NULL, 0, 'Activo', 1, 1, 1),
(16, 'Carlos Jose', 'Gomez x', '231414', '0000-00-00', '1', '1', '1', 23, '8092966337', 'cwayne23@gmail.com', 'admin', NULL, 0, 'Activo', 1, 1, 1),
(17, 'Carlos Jose', 'Gomez Tejada', '048011334651', '1996-01-01', '1', '1', '1', 15, '8092966337', 'cj@hotmail.com', 'admin', NULL, 0, 'Activo', 1, 1, 1);



CREATE TABLE IF NOT EXISTS  `nomina` (
  `id_nomina` int(11) NOT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `pago` int(11) NOT NULL,
CONSTRAINT pk PRIMARY KEY (id_nomina)
) ENGINE=InnoDB;




INSERT INTO `nomina` (`id_nomina`, `cargo`, `pago`) VALUES
(1, 'Cajero/a', 5000),
(2, 'Conserje', 4300),
(3, 'Electricista', 5300),
(4, 'Plomero', 5300),
(5, 'Carpintero', 5300),
(6, 'Basurero', 5300);



CREATE TABLE IF NOT EXISTS  `empleado` (
  `id_empleado` int(11) AUTO_INCREMENT NOT NULL,
  `nombre_empleado` varchar(100) DEFAULT NULL,
  `apellido_empleado` varchar(100) DEFAULT NULL,
  `cedula_empleado` varchar(20) DEFAULT NULL,
  `fechanacimiento_empleado` date DEFAULT NULL,
  `ciudad_empleado` int(10) DEFAULT NULL,
  `sector_empleado` int(10) DEFAULT NULL,
  `calle_empleado` int(10) DEFAULT NULL,
  `numcasa_empleado` int(11) DEFAULT NULL,
  `telefono_empleado` char(20) DEFAULT NULL,
  `correo_empleado` varchar(100) DEFAULT NULL,
  `usuario` varchar(50) NOT NULL,
  `clave_empleado` varchar(100) DEFAULT NULL,
  `olvido_pass_iden` varchar(130) DEFAULT NULL,
  `cargo_empleado` int(12) DEFAULT NULL,
  `ocupacion_empleado` varchar(20) NOT NULL,
  `estado_empleado` char(20) DEFAULT NULL,
  `id_nomina` int(11) NOT NULL,
  `id_ciudad` int(11)  NOT NULL,
  `id_sector` int(11)  NOT NULL,
  `id_calle` int(11)  NOT NULL,
CONSTRAINT pk PRIMARY KEY (id_empleado),
CONSTRAINT fk_emple_nom FOREIGN KEY (id_nomina) REFERENCES nomina (id_nomina),
CONSTRAINT fk_emple_ciudad FOREIGN KEY (id_ciudad) REFERENCES ciudad (id_ciudad),
CONSTRAINT fk_emple_sector FOREIGN KEY (id_sector) REFERENCES sector (id_sector),
CONSTRAINT fk_emple_calle FOREIGN KEY (id_calle) REFERENCES calle (id_calle)
) ENGINE=InnoDB;


INSERT INTO `empleado` (`id_empleado`, `nombre_empleado`, `apellido_empleado`, `cedula_empleado`, `fechanacimiento_empleado`, `ciudad_empleado`, `sector_empleado`, `calle_empleado`, `numcasa_empleado`, `telefono_empleado`, `correo_empleado`, `usuario`, 
`clave_empleado`, `olvido_pass_iden`, `cargo_empleado`, `ocupacion_empleado`, `estado_empleado`, `id_nomina`, `id_ciudad`, `id_sector`, `id_calle`) VALUES
(1, 'Carlos Jose', 'Gomez', '05548556', '1996-11-18', 2, 2, 2, 53, '8099664550', 'carlosjose1234@hotmail.es', 'cgomez1', 'wayne', 'cb8257b330cd35c58f1df6d7e5ac1b36', 1, 'Oficina', 'Activo', 1, 2, 2, 2),
(2, 'Jose', 'Tejada', '048-0113346-6', '1992-07-01', 2, 2, 2, 34, '809-966-4550', 'cj@hotmail.com', 'jtejada1', 'admin', '', 3, 'Tecnico', 'Activo', 3, 2, 2, 2),
(3, 'Pedro', 'Olivero', '04801123', '1996-02-05', 1, 1, 1, 5, '8092966337', 'carlosjose123@hotmail.es', 'p.olivero', 'admin', NULL, 1, 'Oficina', 'Activo', 1, 2, 2, 2),
(4, 'Carlos J.', 'Tejada', '048011334', '1966-09-18', 2, 2, 2, 15, '8092966337', 'cwayne2334@gmail.com', 'ctejada', 'admin', NULL, 1, 'Oficina', 'Activo', 1, 2, 2, 2);


CREATE TABLE IF NOT EXISTS  `servicios` (
  `id_servicio` int(11) AUTO_INCREMENT NOT NULL,
  `nombre_servicio` varchar(100) DEFAULT NULL,
  `estado_servicio` char(20) DEFAULT NULL,
CONSTRAINT pk PRIMARY KEY (id_servicio)
) ENGINE=InnoDB;


INSERT INTO `servicios` (`id_servicio`, `nombre_servicio`, `estado_servicio`) VALUES
(1, 'Carpinteria', 'Activo'),
(2, 'Electricidad', 'Activo'),
(3, 'Basura', 'Activo'),
(4, 'Plomeria', 'Activo');


CREATE TABLE IF NOT EXISTS   `catservicios` (
  `id_catservicio` int(11) AUTO_INCREMENT NOT NULL,
  `nombre_catservicio` varchar(100) NOT NULL,
  `descripcion_catservicio` varchar(200) NOT NULL,
  `precio_catservicio` int(11) NOT NULL,
  `estado_catservicio` varchar(12) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  CONSTRAINT pk PRIMARY KEY (id_catservicio),
  CONSTRAINT fk_catser_serv FOREIGN KEY (id_servicio) REFERENCES servicios (id_servicio)
) ENGINE=InnoDB;


INSERT INTO `catservicios` (`id_catservicio`, `nombre_catservicio`, `descripcion_catservicio`, `precio_catservicio`, `estado_catservicio`, `id_servicio`) VALUES
(1, 'Reparacion de una mesa de 4 sillas', 'Reparacion de patas y madera principal y ajuste de sillas', 550, 'Activo', 1),
(2, 'Reparacion de banco', 'Banco de 5 metros', 600, 'Activo', 1),
(3, 'Reparacion de Muebles', 'Juego normal de 4 muebles', 1000, 'Activo', 1),
(4, 'Instalacion basica', 'Cableado en una casa de 40m cuadrado', 5000, 'Activo', 2);


CREATE TABLE IF NOT EXISTS  `categorias` (
  `id_categoria` int(11) AUTO_INCREMENT NOT NULL,
  `nombre_categoria` varchar(255) NOT NULL,
  `descripcion_categoria` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  CONSTRAINT pk PRIMARY KEY (id_categoria)
) ENGINE=InnoDB;



INSERT INTO `categorias` (`id_categoria`, `nombre_categoria`, `descripcion_categoria`, `date_added`) VALUES
(1, 'Oficina', 'Materiales de la oficina', '2021-11-08 07:12:49'),
(2, 'Tecnico', 'Materiales de tecnicos', '2021-11-08 07:13:14'),
(3, 'Limpieza', 'Productos', '2021-11-08 08:52:38'),
(4, 'Informatica', 'Artículos tecnológicos.', '2021-11-08 11:42:34');


CREATE TABLE IF NOT EXISTS  `inventario` (
  `id_producto` int(11) NOT NULL,
  `codigo_producto` int(11) NOT NULL,
  `nombre_producto` varchar(100) DEFAULT NULL,
  `descripcion_producto` varchar(300) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `precio_producto` int(11) DEFAULT NULL,
  `estado_producto` char(20) DEFAULT NULL,
  `id_categoria` int(11) NOT NULL,
CONSTRAINT pk PRIMARY KEY (id_producto),
CONSTRAINT fk_inven_cat FOREIGN KEY (id_categoria) REFERENCES categorias (id_categoria)
) ENGINE=InnoDB;


INSERT INTO `inventario` (`id_producto`, `codigo_producto`, `nombre_producto`, `descripcion_producto`, `date_added`, `stock`, `precio_producto`, `estado_producto`, `id_categoria`) VALUES
(1, 22, 'Cartas 11*12', 'Cartas 11*20', '2021-11-01 02:25:26', 1, 60, 'Stock', 1),
(2, 1, 'Lapiceros azules', 'Caja de lapiceros azules', '2021-11-01 02:25:32', 11, 75, 'Stock', 1),
(3, 23, 'Caja de cable ', NULL, '2021-11-08 08:54:04', 15, 550, 'Stock', 2),
(4, 24, 'Pegamento', NULL, '2021-11-08 08:57:23', 47, 300, 'Stock', 2),
(5, 23, 'Grapas', NULL, '2021-11-08 10:56:21', 20, 100, 'Stock', 1);


CREATE TABLE IF NOT EXISTS  `historial` (
  `id_historial` int(11) AUTO_INCREMENT NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `nota` varchar(255) NOT NULL,
  `referencia` varchar(255) NOT NULL,
  `cantidad` int(11) NOT NULL,
CONSTRAINT pk PRIMARY KEY (id_historial),
CONSTRAINT fk_hist_inven FOREIGN KEY (id_producto) REFERENCES inventario (id_producto),
CONSTRAINT fk_hist_emplea FOREIGN KEY (id_user) REFERENCES empleado (id_empleado)
) ENGINE=InnoDB;

INSERT INTO `historial` (`id_historial`, `id_producto`, `id_user`, `fecha`, `nota`, `referencia`, `cantidad`) VALUES
(1, 1, 1, '2021-11-08 08:41:41', 'Carlos  agregó 2 producto(s) al inventario', 'car', 2),
(2, 1, 1, '2021-11-08 08:42:04', 'Carlos  eliminó 3 producto(s) del inventario', 'para contabilidad', 3),
(3, 1, 1, '2021-11-08 08:46:09', 'Carlos  agregó 2 producto(s) al inventario', 'car', 2),
(4, 1, 1, '2021-11-08 08:47:41', 'Carlos  agregó 2 producto(s) al inventario', 'car', 2),
(5, 3, 1, '2021-11-08 08:54:04', 'Carlos  agregó 15 producto(s) al inventario', '23', 15),
(6, 4, 1, '2021-11-08 08:57:23', 'Carlos  agregó 23 producto(s) al inventario', '24', 23),
(7, 4, 1, '2021-11-08 09:41:33', 'Carlos  agregó 12 producto(s) al inventario', 'cae', 12),
(8, 4, 1, '2021-11-08 09:41:42', 'Carlos  agregó 12 producto(s) al inventario', 'cae', 12),
(9, 3, 1, '2021-11-08 10:56:21', 'Carlos  agregó 20 producto(s) al inventario', '23', 20),
(10, 1, 1, '2021-11-08 11:16:51', 'Carlos  agregó 1 producto(s) al inventario', 'Encargo', 1),
(11, 1, 1, '2021-11-08 11:18:58', 'Carlos  eliminó 20 producto(s) del inventario', 'Donacion', 20);


CREATE TABLE IF NOT EXISTS  `factura` (
  `id_factura` int(11) AUTO_INCREMENT NOT NULL,
  `numero_factura` int(11) NOT NULL,
  `tipodepago_factura` varchar(20) DEFAULT NULL,
  `tipodefactura` char(20) DEFAULT NULL,
  `totalpago` int(11) DEFAULT NULL,
  `fecha_factura` date DEFAULT NULL,
  `estado_factura` char(20) DEFAULT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_empleado` int(11) DEFAULT NULL,
CONSTRAINT pk PRIMARY KEY (id_factura),
CONSTRAINT fk_fac_clie FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
CONSTRAINT fk_fac_emple FOREIGN KEY (id_empleado) REFERENCES empleado (id_empleado)
) ENGINE=InnoDB;


INSERT INTO `factura` (`id_factura`, `numero_factura`, `tipodepago_factura`, `tipodefactura`, `totalpago`, `fecha_factura`, `estado_factura`, `id_cliente`, `id_empleado`) VALUES
(1, 1, 'Efectivo', 'Normal', 7001, '2021-10-26', 'Anulada', 14, 1),
(2, 2, 'Efectivo', 'Normal', 2360, '2021-10-26', 'Pendiente', 2, 1),
(3, 3, 'Efectivo', 'Normal', 1652, '2021-10-26', 'Pagado', 11, 1),
(4, 4, 'Efectivo', 'Normal', 7198, '2021-11-03', 'Pagado', 1, 1),
(5, 5, 'Cheque', 'Normal', 5900, '2021-11-03', 'Pagado', 1, 1),
(6, 6, 'Efectivo', 'Normal', 5900, '2021-11-09', 'Pagado', 11, 1),
(7, 7, 'Cheque', 'Normal', 1829, '2021-11-09', 'Pagado', 11, 2),
(8, 8, 'Efectivo', 'Normal', 1829, '2021-11-09', 'Pagado', 1, 1);



CREATE TABLE IF NOT EXISTS  `orden` (
  `id_orden` int(11) AUTO_INCREMENT NOT NULL,
  `descripcion_orden` varchar(200) DEFAULT NULL,
  `servicio_orden` int(100) DEFAULT NULL,
  `ciudad_orden` int(100) DEFAULT NULL,
  `sector_orden` int(100) DEFAULT NULL,
  `calle_orden` int(100) DEFAULT NULL,
  `numcasa_orden` int(11) DEFAULT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `fecha_orden` date NOT NULL,
  `estado_orden` char(20) DEFAULT NULL,
  `proceso_orden` varchar(20) NOT NULL,
  `telefono_orden` varchar(20) DEFAULT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL,
CONSTRAINT pk PRIMARY KEY (id_orden),
CONSTRAINT fk_orden_clie FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
CONSTRAINT fk_orden_empleado FOREIGN KEY (id_empleado) REFERENCES empleado (id_empleado),
CONSTRAINT fk_orden_servicio FOREIGN KEY (id_servicio) REFERENCES servicios (id_servicio)
) ENGINE=InnoDB;




INSERT INTO `orden` (`id_orden`, `descripcion_orden`, `servicio_orden`, `ciudad_orden`, `sector_orden`, `calle_orden`, `numcasa_orden`, `lat`, `lon`, `fecha_orden`, `estado_orden`, `proceso_orden`, `telefono_orden`, `id_cliente`, `id_empleado`, `id_servicio`) VALUES
(1, 'Caaaaardaa', 3, 1, 1, 1, 29, 18.9322174, -70.4089924, '2021-07-03', 'Asignada', 'Finalizada', '1', 1, 1, 1),
(2, 'Seeeeeeee', 2, 2, 2, 2, 2, 18.9322174, -70.40899240000002, '2021-07-04', 'Asignada', 'En proceso', '12334', 1, 1, 2),
(3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type a', 2, 1, 1, 3, 12, 18.9322174, -70.40899240000002, '2021-07-04', 'Asignada', 'En proceso', '123333', 11, 2, 2),
(4, 'Aweno brot awwww', 1, 1, 1, 1, 2, 18.9884561178642, -70.42970513009219, '2021-07-05', 'Asignada', 'Sin empezar', '123', 1, 1, 4),
(5, 'Ok', 3, 3, 1, 1, 150, 18.9322174, -70.4089924, '2021-10-11', 'Asignada', 'Finalizada', '150', 4, 2, 3),
(6, 'Recogida de dos tanques de basura ', 3, 1, 3, 5, 23, 18.9322174, -70.4089924, '2021-10-28', 'Asignada', 'Sin empezar', '8092966337', 1, 1, 3),
(7, 'muebles', 1, 1, 1, 1, 15, 18.9322174, -70.4089924, '2021-11-21', 'Sin Asignar', '', '8092966337', 1, 1, 1);



CREATE TABLE IF NOT EXISTS  `perfil` (
  `id_perfil` int(11) AUTO_INCREMENT NOT NULL,
  `nombre_empresa` varchar(150) NOT NULL,
  `RNC` varchar(50) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `codigo_postal` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `impuesto` int(10) NOT NULL,
  `moneda` varchar(20) NOT NULL,
  `tasa_dolar` float NOT NULL,
  `logo_url` varchar(255) NOT NULL,
CONSTRAINT pk PRIMARY KEY (id_perfil)
) ENGINE=InnoDB;




INSERT INTO `perfil` (`id_perfil`, `nombre_empresa`, `RNC`, `direccion`, `ciudad`, `codigo_postal`, `estado`, `telefono`, `email`, `password`, `impuesto`, `moneda`, `tasa_dolar`, `logo_url`) VALUES
(1, 'SERCOMP', '000444111', 'Calle 16 de agosto', 'Bonao', '42000', 'Activo', '8099664550', 'sercompservice@gmail.com', 'sercomp21', 18, 'Peso Domicano', 56.75, '');




CREATE TABLE IF NOT EXISTS  `tmp` (
  `id_tmp` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad_tmp` int(11) NOT NULL,
  `precio_tmp` double(8,2) DEFAULT NULL,
  `session_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
CONSTRAINT pk PRIMARY KEY (id_tmp)
) ENGINE=InnoDB;


INSERT INTO `tmp` (`id_tmp`, `id_producto`, `cantidad_tmp`, `precio_tmp`, `session_id`) VALUES
(21, 1, 1, 500.00, '9vhn0p1hvtnl941k2im0crgh10'),
(20, 1, 1, 500.00, '9vhn0p1hvtnl941k2im0crgh10');




CREATE TABLE IF NOT EXISTS  `detalle_factura` (
  `id_detalle` int(11) AUTO_INCREMENT NOT NULL,
  `numero_factura` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` double NOT NULL,
CONSTRAINT pk PRIMARY KEY (id_detalle),
CONSTRAINT fk_det_fac FOREIGN KEY (numero_factura) REFERENCES factura (numero_factura),
CONSTRAINT fk_det_catser FOREIGN KEY (id_producto) REFERENCES catservicios (id_catservicio)
) ENGINE=InnoDB;


INSERT INTO `detalle_factura` (`id_detalle`, `numero_factura`, `id_producto`, `cantidad`, `precio_venta`) VALUES
(1, 1, 2, 1, 600),
(2, 1, 1, 1, 500),
(3, 1, 1, 1, 500),
(4, 1, 2, 1, 600),
(5, 1, 3, 1, 1000),
(6, 1, 2, 1, 600),
(7, 1, 1, 1, 500),
(8, 1, 1, 1, 2133),
(9, 2, 1, 1, 1500),
(10, 2, 1, 1, 500),
(11, 3, 1, 1, 800),
(12, 4, 1, 1, 500),
(13, 4, 2, 1, 600),
(14, 4, 4, 1, 5000),
(15, 5, 4, 1, 5000),
(16, 3, 1, 1, 600),
(17, 6, 4, 1, 5000),
(18, 7, 3, 1, 1000),
(19, 7, 1, 1, 550),
(20, 8, 3, 1, 1000),
(21, 8, 1, 1, 550);



ALTER TABLE `cliente`
  ADD UNIQUE KEY `cedula_cliente` (`cedula_cliente`),
  ADD UNIQUE KEY `correo_cliente` (`correo_cliente`);



ALTER TABLE `empleado`
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD UNIQUE KEY `cedula_empleado` (`cedula_empleado`),
  ADD UNIQUE KEY `correo_empleado` (`correo_empleado`),

COMMIT;






















