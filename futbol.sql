-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-01-2019 a las 20:29:11
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `futbol`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equips`
--

CREATE TABLE `equips` (
  `codi` int(10) NOT NULL,
  `nom` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `localitat` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `web` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `escut` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `equips`
--

INSERT INTO `equips` (`codi`, `nom`, `localitat`, `web`, `escut`) VALUES
(1, 'F.C. Barcelona', 'Barcelona', 'https://www.fcbarcelona.es/es/', 'img/barça.png'),
(2, 'Real Madrid', 'Madrid', 'https://www.realmadrid.com/', 'img/madrid.png'),
(3, 'Atlético de Madrid', 'Madrid', 'http://www.atleticodemadrid.com/', 'img/atletico.png'),
(4, 'Manchester United', 'Manchester', 'https://www.manutd.com/', 'img/manchester.png'),
(6, 'Juventus', 'Turín', 'https://www.juventus.com/es/', 'img/juventus.png'),
(7, 'Manchester City', 'Manchester', 'https://www.mancity.com/', 'img/city.png'),
(8, 'Bayern', 'Múnich', 'https://fcbayern.com/es', 'img/bayern.png'),
(10, 'Liverpool F.C.', 'Liverpool', 'https://www.liverpoolfc.com/', 'img/liverpool.png'),
(11, 'Arsenal F.C.', 'Holloway', 'https://www.arsenal.com/', 'img/arsenal.png'),
(12, 'Lleida Esportiu', 'Lleida', 'www.lleidaesportiu.cat/inici', 'img/lleida.png'),
(14, 'Falso Deportivo Aria', 'Narnia', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titols`
--

CREATE TABLE `titols` (
  `codi` int(10) NOT NULL,
  `nom` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `codiequip` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `titols`
--

INSERT INTO `titols` (`codi`, `nom`, `codiequip`) VALUES
(1, '25 Ligas', 1),
(2, '30 Copas del Rey', 1),
(3, '13 Supercopas de España', 1),
(4, '2 Copas de Liga', 1),
(5, '5 Copas de Europa', 1),
(6, '3 Mundiales de Clubes', 1),
(7, '5 Supercopas de Europa', 1),
(8, '4 Recopas de Europa', 1),
(27, '33 Ligas', 2),
(28, '19 Copas del Rey', 2),
(29, '10 Supercopas de España', 2),
(30, '1Copas de Liga ', 2),
(31, '13 Copas de Europa', 2),
(32, '2 Copas de la UEFA', 2),
(33, '10 Ligas', 3),
(34, '10 Copas de España', 3),
(35, '2 Supercopas de España', 3),
(36, '1 Recopa de Europa', 3),
(37, '3 Supercopas de Europa', 3),
(38, 'Football Association Cup', 4),
(39, '20 Supercopas de Inglaterra', 4),
(40, '3 Copas de Europa', 4),
(41, '1 Copa de la UEFA', 4),
(42, '34 Ligas', 6),
(43, '7 Supercopas', 6),
(44, '13 Copas', 6),
(45, '5 Football Association Cup', 7),
(46, '5 Copas de la Liga', 7),
(47, '2 Ligas de Campeones', 8),
(48, '3 Copas de Europa', 8),
(49, '1 Copa de la UEFA', 8),
(50, '2 Intercontinental Cups', 8),
(51, '18 German Cup', 8),
(52, '18 Premier League', 10),
(53, '7 Football Association Cup', 10),
(54, '8 Football League Cup', 10),
(55, '5 Liga de Campeones', 10),
(56, '13 Premier League', 11),
(57, '13 Football Association Cup', 11),
(58, '2 Football League Cup', 11);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equips`
--
ALTER TABLE `equips`
  ADD PRIMARY KEY (`codi`);

--
-- Indices de la tabla `titols`
--
ALTER TABLE `titols`
  ADD PRIMARY KEY (`codi`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equips`
--
ALTER TABLE `equips`
  MODIFY `codi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `titols`
--
ALTER TABLE `titols`
  MODIFY `codi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
