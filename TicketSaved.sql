drop database if exists ticketsaved;
CREATE DATABASE ticketsaved;

use ticketsaved;

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


CREATE TABLE IF NOT EXISTS `usuarios` (
  `DNI` varchar(30) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Telefono` varchar(255),
  `Apellido1` varchar(255) DEFAULT NULL,
  `Apellido2` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `Contra` varchar(255) DEFAULT NULL,
  `Ciudad` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DNI`)
);


CREATE TABLE IF NOT EXISTS `Pagos` (
  `Metodo_Pago` varchar(255) NOT NULL,
  `Asiento` varchar(255) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Hora` date DEFAULT NULL,
  `Precio` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Metodo_Pago`)
);


CREATE TABLE IF NOT EXISTS `Reservas` (
  `Asiento` varchar(255) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Hora` date DEFAULT NULL,
  PRIMARY KEY (`Fecha`)
);


CREATE TABLE IF NOT EXISTS `Eventos` (
  `DNI` varchar(30) NOT NULL,
  `Metodo_PagoEV` varchar(255) NOT NULL,
  `Nombre_Ev` varchar(255) NOT NULL,
  `Cantidad_Ev` varchar(255) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Tipo_Entrada` varchar(255) DEFAULT NULL,
  `Cant_Vend` int(11) DEFAULT NULL,
  `Aforo` varchar(255) DEFAULT NULL,
  `Lugar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Nombre_Ev`),
  FOREIGN KEY (DNI) REFERENCES usuarios(DNI),
  FOREIGN KEY (Metodo_PagoEV) REFERENCES Pagos(Metodo_Pago),
  FOREIGN KEY (Fecha) REFERENCES Reservas(Fecha)
);