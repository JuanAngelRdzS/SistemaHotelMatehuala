-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-03-2023 a las 06:17:45
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
-- Base de datos: `table_alumnos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`id`, `descripcion`) VALUES
(1, 'administrador'),
(2, 'cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitaciones`
--

CREATE TABLE `habitaciones` (
  `id_h` int(10) NOT NULL,
  `tipo_h` varchar(100) DEFAULT NULL,
  `precio` varchar(30) DEFAULT NULL,
  `foto_h` varchar(50) DEFAULT NULL,
  `fechaRegistro_H` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `habitaciones`
--

INSERT INTO `habitaciones` (`id_h`, `tipo_h`, `precio`, `foto_h`, `fechaRegistro_H`) VALUES
(36, 'Simple', '1250$', '69d3e9aa.jpg', '25/03/2023'),
(37, 'Matrimonial', '1500$', 'd5b279b2.jpg', ''),
(38, 'Doble', '2000$', '5b72436d.jpg', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_alumnos`
--

CREATE TABLE `table_alumnos` (
  `id` int(10) NOT NULL,
  `namefull` varchar(100) DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `section` varchar(15) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `fechaRegistro` varchar(50) NOT NULL,
  `Telefonos` varchar(15) NOT NULL,
  `Fecha_Entrada` varchar(15) NOT NULL,
  `Fecha_Salida` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `table_alumnos`
--

INSERT INTO `table_alumnos` (`id`, `namefull`, `sexo`, `section`, `foto`, `fechaRegistro`, `Telefonos`, `Fecha_Entrada`, `Fecha_Salida`) VALUES
(34, 'Urian Viera', 'M', 'Simple', '7c6126a0.PNG', '01-02-2022 14:27:52 PM', '4881121358', '21-01-2023', '26-01-2023'),
(35, 'Suscríbete a mi Canal', 'M', 'B', 'f72be04b.PNG', '01-02-2022 14:28:22 PM', '0', '', ''),
(36, 'niguel angel', 'F', 'B', '3b13072c.png', '16-03-2023 18:48:13 PM', '0', '', ''),
(38, '123', 'F', 'B', 'aae41a1f.jpg', '17-03-2023 00:39:02 AM', 'we11242r', '122', '514'),
(39, '123', 'F', 'B', '301a1668.jpg', '17-03-2023 00:41:08 AM', 'we11242r', '122', '514'),
(40, '123', 'F', 'B', '96d48522.jpg', '17-03-2023 00:43:04 AM', 'we11242r', '122', '514'),
(41, '123', 'F', 'B', '0fecaf63.jpg', '17-03-2023 00:43:19 AM', 'we11242r', '122', '514'),
(42, '536235sf', 'M', 'A', 'da04e5d6.jpg', '17-03-2023 00:43:39 AM', '4235', '23523', '234235'),
(43, 'Dainass', 'F', 'Matrimonial', 'cdca8b38.jpg', '17-03-2023 10:21:53 AM', '4881144545', '18-02-2023', '21-02-2023'),
(44, 'achu', 'M', '', 'de663c5b.jpg', '25-03-2023 18:37:31 PM', 'sexo', '1', '1'),
(45, 'achu2', 'M', '', '8ff6b576.jpg', '25-03-2023 18:39:46 PM', 'sexo', '1', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Nom` varchar(30) NOT NULL,
  `AP_Users` varchar(30) NOT NULL,
  `AM_Users` varchar(30) NOT NULL,
  `id_cargo` int(11) NOT NULL,
  `Key_Users` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `Nom`, `AP_Users`, `AM_Users`, `id_cargo`, `Key_Users`) VALUES
(1, 'Juan Angel', 'Rdz', 'Silva', 1, 1234),
(2, 'Jose', 'Martinez', 'Mendoza', 2, 123456);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD PRIMARY KEY (`id_h`);

--
-- Indices de la tabla `table_alumnos`
--
ALTER TABLE `table_alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cargo` (`id_cargo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  MODIFY `id_h` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `table_alumnos`
--
ALTER TABLE `table_alumnos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
