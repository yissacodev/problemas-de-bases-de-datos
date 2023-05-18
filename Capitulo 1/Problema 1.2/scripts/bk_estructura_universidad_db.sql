-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-05-2023 a las 22:31:34
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `universidad_db`
--
CREATE DATABASE IF NOT EXISTS `universidad_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `universidad_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--
-- Creación: 18-05-2023 a las 01:11:31
-- Última actualización: 18-05-2023 a las 19:53:10
--

CREATE TABLE `alumnos` (
  `cod_alumno` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(100) NOT NULL COMMENT 'Nombre de alumno',
  `apellido` varchar(100) NOT NULL COMMENT 'Apellido de alumno',
  `domicilio` varchar(50) DEFAULT '' COMMENT 'Direccion de alumno',
  `creado` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Fecha de creación de registros',
  `modificado` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Fecha de actualización de registros'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tabla de alumnos de la universidad';

--
-- RELACIONES PARA LA TABLA `alumnos`:
--

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`cod_alumno`, `nombre`, `apellido`, `domicilio`, `creado`, `modificado`) VALUES
(1, 'Juliana', 'Montoya', 'Calle 4 Av. 5 Pastrana', '2023-05-18 01:13:10', '2023-05-18 01:15:18'),
(2, 'Benoite', 'Pickworth', '5 Kingsford Way', '2023-05-18 19:53:10', '2023-05-18 19:53:10'),
(3, 'Bentlee', 'Bettaney', '67 Memorial Terrace', '2023-05-18 19:53:10', '2023-05-18 19:53:10'),
(4, 'Arlena', 'Dowry', '6 Sullivan Pass', '2023-05-18 19:53:10', '2023-05-18 19:53:10'),
(5, 'Esteban', 'Ianinotti', '6625 Corry Court', '2023-05-18 19:53:10', '2023-05-18 19:53:10'),
(6, 'Jere', 'Bergeau', '546 Welch Terrace', '2023-05-18 19:53:10', '2023-05-18 19:53:10'),
(7, 'Alane', 'Mazzeo', '601 Drewry Street', '2023-05-18 19:53:10', '2023-05-18 19:53:10'),
(8, 'Drusy', 'Pidon', '98996 Lakeland Street', '2023-05-18 19:53:10', '2023-05-18 19:53:10'),
(9, 'Merralee', 'McLae', '8 7th Center', '2023-05-18 19:53:10', '2023-05-18 19:53:10'),
(10, 'Denyse', 'Slessor', '05243 Kings Way', '2023-05-18 19:53:10', '2023-05-18 19:53:10'),
(11, 'Chryste', 'Widd', '646 Cottonwood Hill', '2023-05-18 19:53:10', '2023-05-18 19:53:10'),
(12, 'Abbie', 'Arkell', '234 Mosinee Trail', '2023-05-18 19:53:10', '2023-05-18 19:53:10'),
(13, 'Inga', 'Philippeaux', '25577 8th Avenue', '2023-05-18 19:53:10', '2023-05-18 19:53:10'),
(14, 'Marty', 'Heighton', '6659 Westport Way', '2023-05-18 19:53:10', '2023-05-18 19:53:10'),
(15, 'Moises', 'Fitzer', '80353 Holmberg Center', '2023-05-18 19:53:10', '2023-05-18 19:53:10'),
(16, 'Garreth', 'Mangeney', '9849 Bowman Park', '2023-05-18 19:53:10', '2023-05-18 19:53:10'),
(17, 'Selestina', 'Copozio', '66 Redwing Court', '2023-05-18 19:53:10', '2023-05-18 19:53:10'),
(18, 'Christin', 'Mayberry', '40 Bartelt Circle', '2023-05-18 19:53:10', '2023-05-18 19:53:10'),
(19, 'Goldie', 'Vasyuchov', '46 Dryden Avenue', '2023-05-18 19:53:10', '2023-05-18 19:53:10'),
(20, 'Ewell', 'Doerr', '6 Superior Terrace', '2023-05-18 19:53:10', '2023-05-18 19:53:10'),
(21, 'Cazzie', 'Howsego', '16515 Grover Drive', '2023-05-18 19:53:10', '2023-05-18 19:53:10'),
(22, 'Berny', 'Burehill', '658 Forest Avenue', '2023-05-18 19:53:10', '2023-05-18 19:53:10'),
(23, 'Rudolfo', 'Spreadbury', '85 Bobwhite Hill', '2023-05-18 19:53:10', '2023-05-18 19:53:10'),
(24, 'Godard', 'Armin', '64654 Mcbride Point', '2023-05-18 19:53:10', '2023-05-18 19:53:10'),
(25, 'Tadd', 'Fogg', '55602 Paget Road', '2023-05-18 19:53:10', '2023-05-18 19:53:10'),
(26, 'Mackenzie', 'McCole', '4 Marcy Avenue', '2023-05-18 19:53:10', '2023-05-18 19:53:10'),
(27, 'Tabby', 'Linde', '84 Transport Trail', '2023-05-18 19:53:10', '2023-05-18 19:53:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--
-- Creación: 18-05-2023 a las 01:25:07
-- Última actualización: 18-05-2023 a las 19:56:52
--

CREATE TABLE `asignaturas` (
  `cod_asignatura` int(10) UNSIGNED NOT NULL COMMENT 'Código de asignatura',
  `nombre` varchar(100) NOT NULL COMMENT 'Nombre de asignatura',
  `curso` varchar(100) NOT NULL COMMENT 'Curso o grado de la asignatura',
  `creado` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Fecha de creación de registros',
  `modificado` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Fecha de actualización de registros'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tabla de asignaturas de la universidad';

--
-- RELACIONES PARA LA TABLA `asignaturas`:
--

--
-- Volcado de datos para la tabla `asignaturas`
--

INSERT INTO `asignaturas` (`cod_asignatura`, `nombre`, `curso`, `creado`, `modificado`) VALUES
(1, 'Programación', 'Tecnología', '2023-05-18 19:56:24', '2023-05-18 19:56:24'),
(2, 'Matemáticas', 'Ciencias exactas', '2023-05-18 19:56:24', '2023-05-18 19:56:24'),
(3, 'Fisica', 'Ciencias exactas', '2023-05-18 19:56:24', '2023-05-18 19:56:24'),
(4, 'Ciencias naturales', 'Ciencias exactas', '2023-05-18 19:56:24', '2023-05-18 19:56:24'),
(5, 'Ciencias sociales', 'Sociologia', '2023-05-18 19:56:24', '2023-05-18 19:56:24'),
(6, 'Filosofía', 'Sociologia', '2023-05-18 19:56:24', '2023-05-18 19:56:24'),
(7, 'Educación fisica', 'Deportes', '2023-05-18 19:56:24', '2023-05-18 19:56:24'),
(8, 'Lenguajes', 'Letras', '2023-05-18 19:56:24', '2023-05-18 19:56:24'),
(9, 'Arte', 'Arte y música', '2023-05-18 19:56:24', '2023-05-18 19:56:24'),
(10, 'Programación', 'Tecnología', '2023-05-18 19:56:52', '2023-05-18 19:56:52'),
(11, 'Matemáticas', 'Ciencias exactas', '2023-05-18 19:56:52', '2023-05-18 19:56:52'),
(12, 'Fisica', 'Ciencias exactas', '2023-05-18 19:56:52', '2023-05-18 19:56:52'),
(13, 'Ciencias naturales', 'Ciencias exactas', '2023-05-18 19:56:52', '2023-05-18 19:56:52'),
(14, 'Ciencias sociales', 'Sociologia', '2023-05-18 19:56:52', '2023-05-18 19:56:52'),
(15, 'Filosofía', 'Sociologia', '2023-05-18 19:56:52', '2023-05-18 19:56:52'),
(16, 'Educación fisica', 'Deportes', '2023-05-18 19:56:52', '2023-05-18 19:56:52'),
(17, 'Lenguajes', 'Letras', '2023-05-18 19:56:52', '2023-05-18 19:56:52'),
(18, 'Arte', 'Arte y música', '2023-05-18 19:56:52', '2023-05-18 19:56:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas_asociadas`
--
-- Creación: 18-05-2023 a las 01:32:25
-- Última actualización: 18-05-2023 a las 20:28:06
--

CREATE TABLE `asignaturas_asociadas` (
  `cod_carrera` int(10) UNSIGNED NOT NULL COMMENT 'Referencia a una carrera',
  `cod_asignatura` int(10) UNSIGNED NOT NULL COMMENT 'Referencia a una asignatura',
  `creado` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Fecha de creación de registros',
  `modificado` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Fecha de actualización de registros'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELACIONES PARA LA TABLA `asignaturas_asociadas`:
--   `cod_asignatura`
--       `asignaturas` -> `cod_asignatura`
--   `cod_carrera`
--       `carreras` -> `cod_carrera`
--

--
-- Volcado de datos para la tabla `asignaturas_asociadas`
--

INSERT INTO `asignaturas_asociadas` (`cod_carrera`, `cod_asignatura`, `creado`, `modificado`) VALUES
(1, 3, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(1, 9, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(1, 11, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(1, 12, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(1, 13, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(2, 4, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(2, 5, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(2, 9, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(2, 12, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(3, 1, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(3, 5, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(3, 10, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(3, 12, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(4, 2, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(4, 8, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(4, 9, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(4, 15, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(5, 12, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(6, 2, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(6, 12, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(7, 3, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(7, 6, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(7, 9, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(8, 2, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(8, 13, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(9, 5, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(9, 8, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(9, 16, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(9, 17, '2023-05-18 20:28:06', '2023-05-18 20:28:06'),
(9, 18, '2023-05-18 20:28:06', '2023-05-18 20:28:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--
-- Creación: 18-05-2023 a las 01:44:17
-- Última actualización: 18-05-2023 a las 20:21:20
--

CREATE TABLE `calificaciones` (
  `cod_alumno` int(10) UNSIGNED NOT NULL COMMENT 'Referencia a un alumno',
  `cod_asignatura` int(10) UNSIGNED NOT NULL COMMENT 'Referencia a una asignatura',
  `nota` decimal(3,2) DEFAULT 0.00 COMMENT 'Calificacion individual',
  `creado` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Fecha de creación de registros',
  `modificado` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Fecha de actualización de registros'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tabla de calificaciones de la universidad';

--
-- RELACIONES PARA LA TABLA `calificaciones`:
--   `cod_alumno`
--       `alumnos` -> `cod_alumno`
--   `cod_asignatura`
--       `asignaturas` -> `cod_asignatura`
--

--
-- Volcado de datos para la tabla `calificaciones`
--

INSERT INTO `calificaciones` (`cod_alumno`, `cod_asignatura`, `nota`, `creado`, `modificado`) VALUES
(1, 4, '1.50', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(1, 6, '1.35', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(2, 4, '3.85', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(2, 14, '2.29', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(3, 13, '2.01', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(3, 14, '0.79', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(3, 18, '3.49', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(4, 6, '0.03', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(5, 9, '4.57', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(5, 10, '1.20', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(5, 14, '2.03', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(5, 15, '4.37', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(5, 16, '1.34', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(6, 1, '3.97', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(6, 17, '2.43', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(7, 2, '3.99', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(7, 8, '2.89', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(7, 14, '4.36', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(8, 3, '2.79', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(8, 14, '2.06', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(8, 16, '0.57', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(9, 4, '0.42', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(9, 7, '3.44', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(10, 3, '1.08', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(11, 7, '2.45', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(12, 10, '4.30', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(12, 11, '1.75', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(12, 18, '1.06', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(13, 3, '3.94', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(13, 9, '3.30', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(13, 13, '4.25', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(13, 15, '4.27', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(14, 11, '1.61', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(14, 12, '1.32', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(15, 7, '4.66', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(15, 11, '2.03', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(15, 12, '4.36', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(16, 1, '3.29', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(16, 13, '1.96', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(20, 2, '4.16', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(20, 9, '2.45', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(21, 6, '4.45', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(21, 7, '0.02', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(22, 5, '3.24', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(22, 11, '2.05', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(23, 3, '0.34', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(23, 5, '1.16', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(23, 7, '0.16', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(23, 8, '0.04', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(23, 17, '3.38', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(23, 18, '0.27', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(24, 14, '1.18', '2023-05-18 20:21:20', '2023-05-18 20:21:20'),
(24, 16, '0.14', '2023-05-18 20:21:20', '2023-05-18 20:21:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--
-- Creación: 18-05-2023 a las 20:08:00
--

CREATE TABLE `carreras` (
  `cod_carrera` int(10) UNSIGNED NOT NULL COMMENT 'Código de carrera',
  `nombre` varchar(50) NOT NULL COMMENT 'Nombre de carrera',
  `duracion` varchar(20) DEFAULT NULL COMMENT 'Duración de la carrera',
  `creado` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Fecha de creación de registros',
  `modificado` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Fecha de actualización de registros'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELACIONES PARA LA TABLA `carreras`:
--

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`cod_carrera`, `nombre`, `duracion`, `creado`, `modificado`) VALUES
(1, 'Ingeniería de sistemas', '6 años', '2023-05-18 20:04:43', '2023-05-18 20:04:43'),
(2, 'Ingeniería de civil', '6 años', '2023-05-18 20:04:43', '2023-05-18 20:04:43'),
(3, 'Ingeniería de electrónica', '6 años', '2023-05-18 20:04:43', '2023-05-18 20:04:43'),
(4, 'Ingeniería de agronomica', '5 años', '2023-05-18 20:04:43', '2023-05-18 20:04:43'),
(5, 'Licenciatura en inglés', '4 años', '2023-05-18 20:04:43', '2023-05-18 20:04:43'),
(6, 'Licenciatura en música', '5 años', '2023-05-18 20:04:43', '2023-05-18 20:04:43'),
(7, 'Geografía', '5 años', '2023-05-18 20:04:43', '2023-05-18 20:04:43'),
(8, 'Medicina', '7 años', '2023-05-18 20:04:43', '2023-05-18 20:04:43'),
(9, 'Comercio internacional', '5 años', '2023-05-18 20:04:43', '2023-05-18 20:04:43');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`cod_alumno`);

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`cod_asignatura`);

--
-- Indices de la tabla `asignaturas_asociadas`
--
ALTER TABLE `asignaturas_asociadas`
  ADD PRIMARY KEY (`cod_carrera`,`cod_asignatura`),
  ADD KEY `FK_asigasociadas_asignaturas` (`cod_asignatura`);

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`cod_alumno`,`cod_asignatura`),
  ADD KEY `FK_calificaciones_asignaturas` (`cod_asignatura`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`cod_carrera`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `cod_alumno` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  MODIFY `cod_asignatura` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Código de asignatura', AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `cod_carrera` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Código de carrera', AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignaturas_asociadas`
--
ALTER TABLE `asignaturas_asociadas`
  ADD CONSTRAINT `FK_asigasociadas_asignaturas` FOREIGN KEY (`cod_asignatura`) REFERENCES `asignaturas` (`cod_asignatura`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_asigasociadas_carreras` FOREIGN KEY (`cod_carrera`) REFERENCES `carreras` (`cod_carrera`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD CONSTRAINT `FK_calificaciones_alumnos` FOREIGN KEY (`cod_alumno`) REFERENCES `alumnos` (`cod_alumno`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_calificaciones_asignaturas` FOREIGN KEY (`cod_asignatura`) REFERENCES `asignaturas` (`cod_asignatura`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
