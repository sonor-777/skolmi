-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 14-09-2020 a las 02:21:57
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `skolmi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas`
--

CREATE TABLE `tareas` (
  `tarId` int(11) NOT NULL,
  `tarNombre` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `tarRealizado` varchar(2) COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'No',
  `tarFecha` date NOT NULL,
  `tarEstado` varchar(2) COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tareas`
--

INSERT INTO `tareas` (`tarId`, `tarNombre`, `tarRealizado`, `tarFecha`, `tarEstado`) VALUES
(1, 'sss', 'No', '2020-09-13', 'A'),
(2, 'ssss', 'No', '2020-09-13', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuId` int(11) NOT NULL,
  `usuNombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `usuApellido` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `usuGenero` varchar(2) COLLATE utf8_spanish2_ci NOT NULL,
  `usuFoto` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `usuTelefono` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `usuNick` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `usuEmail` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `usuPassword` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `usuPerfil` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `usuFecha` date NOT NULL,
  `usuEstado` varchar(4) COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuId`, `usuNombre`, `usuApellido`, `usuGenero`, `usuFoto`, `usuTelefono`, `usuNick`, `usuEmail`, `usuPassword`, `usuPerfil`, `usuFecha`, `usuEstado`) VALUES
(1, 'Gerson', 'Charry', 'M', 'html/img/usuarios/M.png', '8773610', 'pocho', 'sonor_777@hotmail.com', '202cb962ac59075b964b07152d234b70', 'admin', '2019-07-24', 'A');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`tarId`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tareas`
--
ALTER TABLE `tareas`
  MODIFY `tarId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
