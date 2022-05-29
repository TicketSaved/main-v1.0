drop database if exists ticketsaved;
CREATE DATABASE ticketsaved;

use ticketsaved;

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


CREATE TABLE IF NOT EXISTS `usuarios` (
 `DNI` varchar(30) NOT NULL,
 `Nombre` varchar(255) DEFAULT NULL,
 `Telefono` varchar(255) DEFAULT NULL,
 `Apellido1` varchar(255) DEFAULT NULL,
 `Apellido2` varchar(255) DEFAULT NULL,
 `email` varchar(255) DEFAULT NULL,
 `Contra` varchar(255) DEFAULT NULL,
 `Ciudad` varchar(255) DEFAULT NULL,
 PRIMARY KEY (`DNI`)
);

INSERT INTO `usuarios` (`DNI`, `Nombre`, `Telefono`, `Apellido1`, `Apellido2`, `email`, `Contra`, `Ciudad`) VALUES
	('031231283', 'Javier', '81263239', 'Tena', 'Nose', 'jagari21@gmail.com', 'jagarci22', 'Madrid'),
	('03178140T', 'Manolo', '623902481', 'Conchudo', 'Conchas', 'manolo@gmail.com', '21dasdasd', 'Cuenca'),
	('03179830T', 'admin', '129385232', 'admin', 'admin', 'admin@gmail.com', 'admin01', 'Madrid'),
	('123127312', 'Jhon', '712341271', 'Tixi', 'Colla', 'jhon@gmail.com', 'jhon', 'Madrid'),
	('12351231L', 'Juan', '2312312312', 'Olivero', 'ÁSQUER', 'juan@gmail.com', 'juan20', 'Móstoles'),
	('437895', 'Juju', '63597841', 'Marica', 'LSDSA', 'KAO1@gmail.com', 'Contra', 'Madriz'),
	('52636547F', 'Marcelo', '635898785', 'Agachate', 'YConocelo', 'marceli2@gmail.com', 'marcelo', 'Marcelandia'),
	('54269875D', 'Javi', '635978457', 'Tenius', 'Garcia', 'jagarciat21@gmail.com', '123456', 'Madriz');



CREATE TABLE IF NOT EXISTS `pagos` (
 `Metodo_Pago` varchar(255) NOT NULL,
 `Fecha_pago` date DEFAULT NULL,
 `Precio` varchar(255) DEFAULT NULL,
 PRIMARY KEY (`Metodo_Pago`)
);


CREATE TABLE IF NOT EXISTS `eventos` (
 `Id_Ev` varchar(30) NOT NULL,
 `Nombre_Ev` varchar(255) NOT NULL,
 `Fecha_ev` date DEFAULT NULL,
 `Aforo` varchar(255) DEFAULT NULL,
 `Lugar` varchar(255) DEFAULT NULL,
 `Tipo_Ev` varchar(30) NOT NULL,
 PRIMARY KEY (`Id_Ev`)
);

INSERT INTO `eventos` (`Id_Ev`, `Nombre_Ev`, `Fecha_ev`, `Aforo`, `Lugar`, `Tipo_Ev`) VALUES
	('123456789', 'Gorgal', '2022-05-22', '900', 'Estadio Mestalla (Valencia)', 'Concierto'),
	('123JJG1', 'Natos y Waor', '2022-07-23', '600', 'Palacio de Vista Alegre', 'Concierto'),
	('AISDINDQ', 'The Rolling Stones', '2023-08-20', '99000', 'Estadio Benito Villamarin (SEVILLA)', 'Concierto'),
	('APOQEJFO', 'Aitana', '2022-11-11', '1000', 'Estadio Wanda Metropolitano (MADRID)', 'Concierto'),
	('CVBASDSA', 'Bad Bunny', '2022-06-21', '3000', 'Estadio Camp Nou (BARCELONA)', 'Concierto'),
	('LEWQKPQW', 'Fito & Fitipaldis', '2022-06-26', '7000', 'Palacio Vistalegre (Madird)', 'Concierto'),
	('PALSDQWG', 'Lil Nas X', '2022-11-19', '30000', 'Shoko (MADRID)', 'Concierto'),
	('QYEMSLAP', 'Mora', '2022-12-09', '90', 'Sala Galileo (MADRID)', 'Concierto'),
	('SADPQWKE', 'Melendi', '2022-09-02', '10000', 'Wizink Center (MADRID)', 'Concierto'),
	('VFQWE', 'Leiva', '2022-05-20', '500', 'Wizink Center (MADRID)', 'Concierto'),
	('YOBNXMCQ', 'Red Hot Chilli Peppers', '2022-12-09', '60000', 'Palacio Municipal de Deportes de Granada (GRANADA)', 'Concierto');



CREATE TABLE IF NOT EXISTS `reservas` (
 `Fecha_rese` date NOT NULL,
 `DNI` varchar(30) DEFAULT NULL,
 `Id_evento` varchar(30) DEFAULT NULL,
 `Metodo_Pago` varchar(255) DEFAULT NULL,
 PRIMARY KEY (`Fecha_rese`),
 KEY `DNI` (`DNI`),
 KEY `Metodo_Pago` (`Metodo_Pago`),
 KEY `Id_evento` (`Id_evento`),
 CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`DNI`) REFERENCES `usuarios` (`DNI`),
 CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`Metodo_Pago`) REFERENCES `pagos` (`Metodo_Pago`),
 CONSTRAINT `reservas_ibfk_3` FOREIGN KEY (`Id_evento`) REFERENCES `eventos` (`Id_Ev`)
);
