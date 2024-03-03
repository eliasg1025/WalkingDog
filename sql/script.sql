-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: bwnhet6bnaoxxvzt3rsh-mysql.services.clever-cloud.com:3306
-- Tiempo de generación: 03-03-2024 a las 23:28:15
-- Versión del servidor: 8.0.22-13
-- Versión de PHP: 8.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bwnhet6bnaoxxvzt3rsh`
--
CREATE DATABASE IF NOT EXISTS `bwnhet6bnaoxxvzt3rsh` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bwnhet6bnaoxxvzt3rsh`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `celular` int DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `num_mascotas` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombres`, `direccion`, `edad`, `celular`, `email`, `num_mascotas`) VALUES
(1, 'carlos', 'las gardenias', 50, 949550207, 'carez_axel@outlook.com', NULL),
(2, 'alejandro lopez aguilar', 'La molina 321', 24, 949550207, 'basydepu-3643@yopmail.com', NULL),
(3, 'paolo', 'carez', 0, 0, '', NULL),
(4, '', '', 0, 0, '', NULL),
(5, '', '', 0, 0, '', NULL),
(6, '', '', 0, 0, '', NULL),
(7, 'carlos', 'La molina 321', 12, 938277723, 'carloscortezd6@gmail.com', NULL),
(9, '', '', 0, 0, '', NULL),
(10, '', '', 0, 0, '', NULL),
(11, 'Manuel Lopez Quispe', '', 0, 0, '', NULL),
(12, '', '', 0, 0, '', NULL),
(13, '', '', 0, 0, '', NULL),
(14, '', '', 0, 0, '', NULL),
(15, '', '', 0, 0, '', NULL),
(16, '', '', 0, 0, '', NULL),
(17, 'lolo', '', 0, 0, '', NULL),
(18, '', '', 0, 0, '', NULL),
(19, '', '', 0, 0, '', NULL),
(20, '', '', 0, 0, '', NULL),
(21, '', '', 0, 0, '', NULL),
(22, '', '', 0, 0, '', NULL),
(23, 'lucÃ­a', '', 0, 0, '', NULL),
(24, 'lucÃ­a', '', 0, 0, '', NULL),
(25, '', '', 0, 0, '', NULL),
(26, '', '', 0, 0, '', NULL),
(27, '', '', 0, 0, '', NULL),
(28, '', '', 0, 0, '', NULL),
(29, '', '', 0, 0, '', NULL),
(30, '', '', 0, 0, '', NULL),
(31, '', '', 0, 0, '', NULL),
(32, '', '', 0, 0, '', NULL),
(33, '', '', 0, 0, '', NULL),
(34, '', '', 0, 0, '', NULL),
(35, '', '', 0, 0, '', NULL),
(36, '', '', 0, 0, '', NULL),
(37, '', '', 0, 0, '', NULL),
(38, 'alex', '', 0, 0, '', NULL),
(39, 'Pedro MartÃ­nez Neira', 'UrbanizaciÃ³n Las Mercedes Piura', 36, 989467589, 'pedro_iuas@gmail.com', NULL),
(40, 'Arturo Campos CoveÃ±as', 'UrbanizaciÃ³n Los cocos ', 32, 983787287, 'arturo_teg@gmail.com', NULL),
(41, '', '', 0, 0, '', NULL),
(42, 'marcos', '', 0, 0, '', NULL),
(43, 'kieko', 'La molina 321', 24, 923882637, 'basydepu-3643@yopmail.com', NULL),
(44, 'pedro', 'picapiedra', 34, 123123123, 'aaa@aaa.com', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascota`
--

CREATE TABLE `mascota` (
  `id_mascota` int NOT NULL,
  `nombre` varchar(10) DEFAULT NULL,
  `raza` varchar(15) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `enfermedad` varchar(30) DEFAULT NULL,
  `cliente_id_cliente` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paseador`
--

CREATE TABLE `paseador` (
  `idpaseador` int NOT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `dia` int DEFAULT NULL,
  `mes` int DEFAULT NULL,
  `anho` int DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `experiencia` tinyint(1) DEFAULT NULL,
  `cant_paseo` int DEFAULT NULL,
  `monto` int DEFAULT NULL,
  `preferencia_tamaño` varchar(45) DEFAULT NULL,
  `descripcion` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_cliente`
--

CREATE TABLE `servicio_cliente` (
  `idservicio_cliente` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `cliente_id_cliente` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `servicio_cliente`
--

INSERT INTO `servicio_cliente` (`idservicio_cliente`, `nombre`, `apellido`, `correo`, `cliente_id_cliente`) VALUES
(1, 'carlos', 'cortez Dominguez', 'carez_axel@outlook.com', 1),
(2, 'alexis', 'Villegas Martinez', 'alexis_d65@gmail.com', 2),
(3, 'abel', 'Aguirre Cueva', 'cueva_aguirre@gmail.com', 3),
(4, 'lourdes', 'Alvares Carrillo', 'lourdes_123@gmail.com', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_paseo`
--

CREATE TABLE `servicio_paseo` (
  `idservicio_paseo` int NOT NULL,
  `fecha` date DEFAULT NULL,
  `cliente_id_cliente` int NOT NULL,
  `paseador_idpaseador` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zona_paseo`
--

CREATE TABLE `zona_paseo` (
  `idzona_paseo` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `paseador_idpaseador` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD PRIMARY KEY (`id_mascota`),
  ADD KEY `fk_mascota_cliente1_idx` (`cliente_id_cliente`);

--
-- Indices de la tabla `paseador`
--
ALTER TABLE `paseador`
  ADD PRIMARY KEY (`idpaseador`);

--
-- Indices de la tabla `servicio_cliente`
--
ALTER TABLE `servicio_cliente`
  ADD PRIMARY KEY (`idservicio_cliente`),
  ADD KEY `fk_servicio_cliente_cliente1_idx` (`cliente_id_cliente`);

--
-- Indices de la tabla `servicio_paseo`
--
ALTER TABLE `servicio_paseo`
  ADD PRIMARY KEY (`idservicio_paseo`),
  ADD KEY `fk_servicio_paseo_cliente_idx` (`cliente_id_cliente`),
  ADD KEY `fk_servicio_paseo_paseador1_idx` (`paseador_idpaseador`);

--
-- Indices de la tabla `zona_paseo`
--
ALTER TABLE `zona_paseo`
  ADD PRIMARY KEY (`idzona_paseo`),
  ADD KEY `fk_zona_paseo_paseador1_idx` (`paseador_idpaseador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `mascota`
--
ALTER TABLE `mascota`
  MODIFY `id_mascota` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paseador`
--
ALTER TABLE `paseador`
  MODIFY `idpaseador` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `servicio_cliente`
--
ALTER TABLE `servicio_cliente`
  MODIFY `idservicio_cliente` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD CONSTRAINT `fk_mascota_cliente1` FOREIGN KEY (`cliente_id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Filtros para la tabla `servicio_cliente`
--
ALTER TABLE `servicio_cliente`
  ADD CONSTRAINT `fk_servicio_cliente_cliente1` FOREIGN KEY (`cliente_id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Filtros para la tabla `servicio_paseo`
--
ALTER TABLE `servicio_paseo`
  ADD CONSTRAINT `fk_servicio_paseo_cliente` FOREIGN KEY (`cliente_id_cliente`) REFERENCES `cliente` (`id_cliente`),
  ADD CONSTRAINT `fk_servicio_paseo_paseador1` FOREIGN KEY (`paseador_idpaseador`) REFERENCES `paseador` (`idpaseador`);

--
-- Filtros para la tabla `zona_paseo`
--
ALTER TABLE `zona_paseo`
  ADD CONSTRAINT `fk_zona_paseo_paseador1` FOREIGN KEY (`paseador_idpaseador`) REFERENCES `paseador` (`idpaseador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
