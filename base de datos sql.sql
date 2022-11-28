CREATE TABLE `seleccion` (
  `id` int(11),
  `nombre` varchar(100),
  `continente_id` int(50),
  `grupo` varchar(1),
  PRIMARY KEY (`id`)
  FOREIGN KEY (`continente_id`) REFERENCES `continente`(`id`)
);

CREATE TABLE `resultado` (
  `id` int(11),
  `partido_id` int(50),
  `seleccion_id` int(80),
  `goles` int(50),
  `amarillas` int(50),
  `rojas` int(),
  PRIMARY KEY (`id`),
  FOREIGN KEY (`partido_id`) REFERENCES `seleccion`(`id`)
  FOREIGN KEY (`seleccion_id`) REFERENCES `seleccion`(`id`)
);

CREATE TABLE `partido` (
  `id` int(11),
  `fecha` date,
  `estadio_id` int(50),
  PRIMARY KEY (`id`),
  FOREIGN KEY (`estadio_id`) REFERENCES `resultado`(`resultado_id`)
);

CREATE TABLE `estadio` (
  `id` int(11),
  `nombre` varchar(100),
  `capacidad` int(500),
  PRIMARY KEY (`id`)
  FOREIGN KEY (`estadio_id`) REFERENCES `partido`(`estadio_id`)
);

CREATE TABLE `continente` (
  `id` int(11),
  `nombre` varchar(50),
  PRIMARY KEY (`id`),
); 

