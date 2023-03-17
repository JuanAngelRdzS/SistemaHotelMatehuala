-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-03-2023 a las 06:11:28
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
(36, 'niguel angel', 'F', 'B', '3b13072c.png', '16-03-2023 18:48:13 PM', '0', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `table_alumnos`
--
ALTER TABLE `table_alumnos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `table_alumnos`
--
ALTER TABLE `table_alumnos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
