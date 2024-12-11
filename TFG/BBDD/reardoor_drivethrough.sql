-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 13-06-2024 a las 19:23:01
-- Versión del servidor: 5.6.51
-- Versión de PHP: 8.1.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reardoor_drivethrough`
--
CREATE DATABASE IF NOT EXISTS `reardoor_drivethrough` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `reardoor_drivethrough`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escuderias`
--

CREATE TABLE `escuderias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `imagen` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `escuderias`
--

INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(1, 'Alfa Romeo', 'https://i.pinimg.com/originals/f2/3d/f2/f23df26fd477129bc76b382f8bbdef78.jpg');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(2, 'Sauber', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Logo_of_Stake_F1_Team_Kick_Sauber.png/480px-Logo_of_Stake_F1_Team_Kick_Sauber.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(3, 'AlphaTauri', 'https://upload.wikimedia.org/wikipedia/en/thumb/0/09/Scuderia_Alpha-Tauri.svg/1200px-Scuderia_Alpha-Tauri.svg.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(4, 'RB', 'https://upload.wikimedia.org/wikipedia/commons/d/d4/Visa_Cash_App_RB_F1_logo.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(5, 'Arrows', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Arrows_Grand_Prix_logo.png/480px-Arrows_Grand_Prix_logo.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(6, 'Jaguar', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkKTc9uHp0XjOW0EhmEQZxnqjtnHt-s2uOvA&usqp=CAU');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(7, 'McLaren', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/McLaren_Racing_logo.png/480px-McLaren_Racing_logo.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(8, 'HRT', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/HRT_F1_TEAM_2012.svg/480px-HRT_F1_TEAM_2012.svg.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(9, 'BAR', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbq33EIr5jB2kZAsenk67fsZWuzrTofXTvDZHnBgci2aizcRBNqQwKsRH5y7tOI_ha3Q&usqp=CAU');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(10, 'Jordan', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT96NixRR7VX9lnKt8TFUbsu4TviO1SanlthX2S5mh5T4X6tjJgPStdh9wz7Oyj5HnXSaU&usqp=CAU');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(11, 'Toyota', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Panasonic_Toyota_Racing_logo.svg/480px-Panasonic_Toyota_Racing_logo.svg.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(12, 'Benetton', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3j8Jw065kFxVhNi0167xh-sOwwVF2oK0jqutIYE1gNah1EWBU_svjOngZ7IwlMRn3w0U&usqp=CAU');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(13, 'Williams', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/Williams_Racing_2022_logo.svg/480px-Williams_Racing_2022_logo.svg.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(14, 'Simtek', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Simtek_logo.svg/480px-Simtek_logo.svg.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(15, 'Footwork', 'https://upload.wikimedia.org/wikipedia/en/3/36/Footwork_logo.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(16, 'Tyrrell', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Tyrrell.svg/480px-Tyrrell.svg.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(17, 'Stewart', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/2024_Stewart-Haas_Racing_Logo.jpg/480px-2024_Stewart-Haas_Racing_Logo.jpg');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(18, 'Minardi', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Minardi_F1_Team.svg/480px-Minardi_F1_Team.svg.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(19, 'Lotus', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZ7qmN84W_DeUuW_DNX-NsPoxYvVqa06apXg&usqp=CAU');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(20, 'Ligier', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Ligier2017.png/480px-Ligier2017.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(21, 'BMW Sauber', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/BMW_Sauber_F1_Team_logo.png/480px-BMW_Sauber_F1_Team_logo.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(22, 'Renault', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Renault_F1_Team_logo_2019.png/480px-Renault_F1_Team_logo_2019.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(23, 'Toro Rosso', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNN0ArQ1HOlL-h-HdiE_upomNbLwdAG5rLUB8p97-VTwE3G1wrjegYr0hfBekJ3GJfypQ&usqp=CAU');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(24, 'Red Bull', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnr462NDtjwuXkUGEyyEuZJu4SAlaqjFXRvDafMO0SwWFOxkMR81MshCxfv6_OfDgH5wc&usqp=CAU');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(25, 'Ferrari', 'https://upload.wikimedia.org/wikipedia/commons/b/b6/Ferrari-badge.jpg');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(26, 'Aston Martin', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Aston_Martin_Aramco-Mercedes_logo.png/480px-Aston_Martin_Aramco-Mercedes_logo.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(27, 'Caterham', 'https://upload.wikimedia.org/wikipedia/commons/0/04/Caterham_F1_Team_2014_logo.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(28, 'Marussia', 'https://upload.wikimedia.org/wikipedia/en/thumb/7/71/Marussia_F1.png/330px-Marussia_F1.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(29, 'Force India', 'https://upload.wikimedia.org/wikipedia/de/thumb/3/3a/Logo_Force_India_F1_team_2011.svg/768px-Logo_Force_India_F1_team_2011.svg.png?20130216200602');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(30, 'Haas', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/MoneyGram_Haas_F1_Team_Logo.svg/480px-MoneyGram_Haas_F1_Team_Logo.svg.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(31, 'Super Aguri', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Super_Aguri_logo.svg/480px-Super_Aguri_logo.svg.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(32, 'Mercedes', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Mercedes_AMG_Petronas_F1_Logo.svg/480px-Mercedes_AMG_Petronas_F1_Logo.svg.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(33, 'Midland', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/MF1.svg/480px-MF1.svg.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(34, 'Honda', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Logo_Honda_F1.png/480px-Logo_Honda_F1.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(35, 'Brawn', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Brawn_GP_logo.svg/480px-Brawn_GP_logo.svg.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(36, 'Virgin', 'https://upload.wikimedia.org/wikipedia/commons/b/b6/Virginracing.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(37, 'Prost', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Prost_Grand_Prix_Formula_One_Logo.png/480px-Prost_Grand_Prix_Formula_One_Logo.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(38, 'Manor', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Logo_Manor_F1.png/225px-Logo_Manor_F1.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(39, 'Racing Point', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/BWT_Racing_Point_Logo.svg/480px-BWT_Racing_Point_Logo.svg.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(40, 'Alpine', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Logo_of_alpine_f1_team_2022.png/480px-Logo_of_alpine_f1_team_2022.png');
INSERT INTO `escuderias` (`id`, `nombre`, `imagen`) VALUES(41, 'Spyker', 'https://upload.wikimedia.org/wikipedia/commons/d/d1/Spyker_MF1_Racing-Logo.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guess_who`
--

CREATE TABLE `guess_who` (
  `id` int(11) NOT NULL,
  `pais` varchar(255) NOT NULL,
  `escuderia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `guess_who`
--

INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(1, 'Alemán', 'Jordan');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(2, 'Alemán', 'Benetton');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(3, 'Alemán', 'Ferrari');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(4, 'Alemán', 'Mercedes');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(5, 'Alemán', 'Williams');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(6, 'Alemán', 'Toyota');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(7, 'Alemán', 'Sauber');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(8, 'Alemán', 'Prost');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(9, 'Alemán', 'Arrows');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(10, 'Alemán', 'BMW Sauber');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(11, 'Alemán', 'Renault');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(12, 'Alemán', 'Virgin');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(13, 'Alemán', 'Marussia');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(14, 'Alemán', 'Spyker');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(15, 'Alemán', 'Force India');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(16, 'Alemán', 'Toro Rosso');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(17, 'Alemán', 'Red Bull');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(18, 'Alemán', 'Aston Martin');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(19, 'Alemán', 'Racing Point');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(20, 'Alemán', 'Haas');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(21, 'Alemán', 'Manor');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(22, 'Australiano', 'Minardi');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(23, 'Australiano', 'Jaguar');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(24, 'Australiano', 'Williams');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(25, 'Australiano', 'Red Bull');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(26, 'Australiano', 'HRT');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(27, 'Australiano', 'Toro Rosso');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(28, 'Australiano', 'Renault');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(29, 'Australiano', 'McLaren');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(30, 'Australiano', 'AlphaTauri');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(31, 'Australiano', 'RB');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(32, 'Austríaco', 'Benetton');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(33, 'Austríaco', 'McLaren');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(34, 'Austríaco', 'Williams');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(35, 'Austríaco', 'Jaguar');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(36, 'Austríaco', 'Red Bull');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(37, 'Austríaco', 'HRT');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(38, 'Austríaco', 'Minardi');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(39, 'Belga', 'Virgin');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(40, 'Belga', 'Lotus');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(41, 'Belga', 'McLaren');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(42, 'Brasileño', 'Jordan');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(43, 'Brasileño', 'Stewart');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(44, 'Brasileño', 'Ferrari');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(45, 'Brasileño', 'Honda');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(46, 'Brasileño', 'Brawn');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(47, 'Brasileño', 'Williams');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(48, 'Brasileño', 'BAR');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(49, 'Brasileño', 'Toyota');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(50, 'Brasileño', 'Minardi');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(51, 'Brasileño', 'Arrows');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(52, 'Brasileño', 'Sauber');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(53, 'Brasileño', 'Jaguar');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(54, 'Brasileño', 'Renault');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(55, 'Brasileño', 'Virgin');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(56, 'Brasileño', 'HRT');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(57, 'Británico', 'Williams');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(58, 'Británico', 'McLaren');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(59, 'Británico', 'Red Bull');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(60, 'Británico', 'Benetton');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(61, 'Británico', 'Renault');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(62, 'Británico', 'BAR');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(63, 'Británico', 'Honda');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(64, 'Británico', 'Brawn');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(65, 'Británico', 'Jordan');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(66, 'Británico', 'Ferrari');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(67, 'Británico', 'Jaguar');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(68, 'Británico', 'Tyrrell');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(69, 'Británico', 'Lotus');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(70, 'Británico', 'Ligier');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(71, 'Británico', 'Sauber');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(72, 'Británico', 'Stewart');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(73, 'Británico', 'Toyota');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(74, 'Británico', 'Minardi');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(75, 'Británico', 'Mercedes');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(76, 'Británico', 'Super Aguri');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(77, 'Británico', 'Force India');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(78, 'Británico', 'Marussia');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(79, 'Británico', 'Caterham');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(80, 'Canadiense', 'Williams');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(81, 'Canadiense', 'BAR');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(82, 'Canadiense', 'Renault');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(83, 'Canadiense', 'Sauber');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(84, 'Canadiense', 'BMW Sauber');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(85, 'Canadiense', 'Racing Point');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(86, 'Canadiense', 'Aston Martin');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(87, 'Chino', 'Alfa Romeo');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(88, 'Chino', 'Sauber');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(89, 'Colombiano', 'Williams');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(90, 'Colombiano', 'McLaren');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(91, 'Danés', 'McLaren');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(92, 'Danés', 'Renault');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(93, 'Danés', 'Haas');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(94, 'Español', 'Arrows');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(95, 'Español', 'Jaguar');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(96, 'Español', 'McLaren');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(97, 'Español', 'Sauber');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(98, 'Español', 'HRT');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(99, 'Español', 'Minardi');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(100, 'Español', 'Renault');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(101, 'Español', 'Ferrari');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(102, 'Español', 'Alpine');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(103, 'Español', 'Aston Martin');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(104, 'Español', 'Toro Rosso');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(105, 'Español', 'Marussia');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(106, 'Estadounidense', 'Toro Rosso');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(107, 'Estadounidense', 'Williams');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(108, 'Finlandés', 'Lotus');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(109, 'Finlandés', 'McLaren');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(110, 'Finlandés', 'Sauber');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(111, 'Finlandés', 'Ferrari');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(112, 'Finlandés', 'Alfa Romeo');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(113, 'Finlandés', 'Tyrrell');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(114, 'Finlandés', 'Arrows');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(115, 'Finlandés', 'BAR');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(116, 'Finlandés', 'Toyota');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(117, 'Finlandés', 'Renault');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(118, 'Finlandés', 'Caterham');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(119, 'Finlandés', 'Williams');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(120, 'Finlandés', 'Mercedes');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(121, 'Francés', 'Tyrrell');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(122, 'Francés', 'Ferrari');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(123, 'Francés', 'Benetton');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(124, 'Francés', 'Sauber');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(125, 'Francés', 'Prost');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(126, 'Francés', 'Jordan');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(127, 'Francés', 'Ligier');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(128, 'Francés', 'BAR');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(129, 'Francés', 'Toyota');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(130, 'Francés', 'Super Aguri');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(131, 'Francés', 'Toro Rosso');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(132, 'Francés', 'Renault');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(133, 'Francés', 'Lotus');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(134, 'Francés', 'Haas');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(135, 'Francés', 'Marussia');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(136, 'Francés', 'Caterham');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(137, 'Francés', 'Manor');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(138, 'Francés', 'Force India');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(139, 'Francés', 'Racing Point');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(140, 'Francés', 'Alpine');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(141, 'Francés', 'Red Bull');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(142, 'Francés', 'AlphaTauri');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(143, 'Húngaro', 'Jordan');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(144, 'Húngaro', 'Minardi');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(145, 'Indio', 'Jordan');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(146, 'Indio', 'HRT');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(147, 'Indio', 'Lotus');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(148, 'Irlandés', 'Jordan');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(149, 'Italiano', 'Minardi');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(150, 'Italiano', 'Prost');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(151, 'Italiano', 'Jordan');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(152, 'Italiano', 'Renault');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(153, 'Italiano', 'Toyota');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(154, 'Italiano', 'Lotus');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(155, 'Italiano', 'Benetton');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(156, 'Italiano', 'Sauber');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(157, 'Italiano', 'Force India');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(158, 'Italiano', 'Ferrari');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(159, 'Italiano', 'Red Bull');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(160, 'Italiano', 'Toro Rosso');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(161, 'Italiano', 'HRT');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(162, 'Italiano', 'Alfa Romeo');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(163, 'Japonés', 'Jordan');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(164, 'Japonés', 'BAR');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(165, 'Japonés', 'Super Aguri');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(166, 'Japonés', 'Williams');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(167, 'Japonés', 'Toyota');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(168, 'Japonés', 'Sauber');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(169, 'Japonés', 'Caterham');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(170, 'Japonés', 'AlphaTauri');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(171, 'Japonés', 'RB');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(172, 'Malayo', 'Minardi');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(173, 'Mexicano', 'Sauber');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(174, 'Mexicano', 'McLaren');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(175, 'Mexicano', 'Force India');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(176, 'Mexicano', 'Racing Point');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(177, 'Mexicano', 'Red Bull');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(178, 'Mexicano', 'Haas');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(179, 'Monegasco', 'Sauber');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(180, 'Monegasco', 'Ferrari');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(181, 'Neerlandés', 'Benetton');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(182, 'Neerlandés', 'Simtek');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(183, 'Neerlandés', 'Footwork');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(184, 'Neerlandés', 'Tyrrell');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(185, 'Neerlandés', 'Stewart');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(186, 'Neerlandés', 'Arrows');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(187, 'Neerlandés', 'Minardi');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(188, 'Neerlandés', 'Midland');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(189, 'Neerlandés', 'Spyker');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(190, 'Neerlandés', 'Caterham');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(191, 'Neerlandés', 'Toro Rosso');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(192, 'Neerlandés', 'Red Bull');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(193, 'Neerlandés', 'Williams');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(194, 'Neerlandés', 'AlphaTauri');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(195, 'Neozelandés', 'Toro Rosso');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(196, 'Polaco', 'BMW Sauber');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(197, 'Polaco', 'Renault');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(198, 'Polaco', 'Williams');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(199, 'Polaco', 'Alfa Romeo');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(200, 'Portugués', 'Jordan');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(201, 'Portugués', 'Midland');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(202, 'Ruso', 'Renault');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(203, 'Ruso', 'Caterham');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(204, 'Ruso', 'Toro Rosso');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(205, 'Ruso', 'Red Bull');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(206, 'Ruso', 'AlphaTauri');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(207, 'Ruso', 'Williams');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(208, 'Ruso', 'Haas');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(209, 'Sueco', 'Caterham');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(210, 'Sueco', 'Sauber');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(211, 'Suizo', 'Toro Rosso');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(212, 'Tailandés', 'Toro Rosso');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(213, 'Tailandés', 'Red Bull');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(214, 'Tailandés', 'Williams');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(215, 'Venezolano', 'Williams');
INSERT INTO `guess_who` (`id`, `pais`, `escuderia`) VALUES(216, 'Venezolano', 'Lotus');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `imagen` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(1, 'Alemán', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Flag_of_Germany.svg/200px-Flag_of_Germany.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(2, 'Australiano', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Flag_of_Australia_%28converted%29.svg/300px-Flag_of_Australia_%28converted%29.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(3, 'Austríaco', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Flag_of_Austria.svg/300px-Flag_of_Austria.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(4, 'Belga', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Flag_of_Belgium.svg/300px-Flag_of_Belgium.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(5, 'Brasileño', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Flag_of_Brazil.svg/300px-Flag_of_Brazil.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(6, 'Británico', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Flag_of_the_United_Kingdom_%281-2%29.svg/300px-Flag_of_the_United_Kingdom_%281-2%29.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(7, 'Canadiense', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Flag_of_Canada_%28Pantone%29.svg/300px-Flag_of_Canada_%28Pantone%29.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(8, 'Chino', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_the_People%27s_Republic_of_China.svg/300px-Flag_of_the_People%27s_Republic_of_China.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(9, 'Colombiano', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Colombia.svg/300px-Flag_of_Colombia.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(10, 'Danés', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Flag_of_Denmark.svg/300px-Flag_of_Denmark.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(11, 'Español', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Bandera_de_Espa%C3%B1a.svg/300px-Bandera_de_Espa%C3%B1a.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(12, 'Estadounidense', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Flag_of_the_United_States.svg/300px-Flag_of_the_United_States.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(13, 'Finlandés', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Flag_of_Finland.svg/300px-Flag_of_Finland.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(14, 'Francés', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Flag_of_France_%281794%E2%80%931815%2C_1830%E2%80%931974%29.svg/300px-Flag_of_France_%281794%E2%80%931815%2C_1830%E2%80%931974%29.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(15, 'Húngaro', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Flag_of_Hungary.svg/300px-Flag_of_Hungary.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(16, 'Indio', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Flag_of_India.svg/300px-Flag_of_India.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(17, 'Irlandés', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Flag_of_Ireland.svg/300px-Flag_of_Ireland.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(18, 'Italiano', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Flag_of_Italy.svg/300px-Flag_of_Italy.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(19, 'Japonés', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Flag_of_Japan.svg/300px-Flag_of_Japan.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(20, 'Malayo', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Flag_of_Malaysia.svg/300px-Flag_of_Malaysia.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(21, 'Mexicano', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Flag_of_Mexico.svg/300px-Flag_of_Mexico.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(22, 'Monegasco', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Flag_of_Monaco.svg/300px-Flag_of_Monaco.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(23, 'Neerlandés', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Flag_of_the_Netherlands.svg/300px-Flag_of_the_Netherlands.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(24, 'Neozelandés', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Flag_of_New_Zealand.svg/300px-Flag_of_New_Zealand.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(25, 'Polaco', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Flag_of_Poland.svg/300px-Flag_of_Poland.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(26, 'Portugués', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Flag_of_Portugal.svg/300px-Flag_of_Portugal.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(27, 'Ruso', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Flag_of_Russia.svg/300px-Flag_of_Russia.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(28, 'Sueco', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Flag_of_Sweden.svg/300px-Flag_of_Sweden.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(29, 'Suizo', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Flag_of_Switzerland.svg/300px-Flag_of_Switzerland.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(30, 'Tailandés', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Flag_of_Thailand.svg/300px-Flag_of_Thailand.svg.png');
INSERT INTO `paises` (`id`, `nombre`, `imagen`) VALUES(31, 'Venezolano', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Flag_of_Venezuela.svg/300px-Flag_of_Venezuela.svg.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pilotos_info`
--

CREATE TABLE `pilotos_info` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `fecha_nacimiento` varchar(255) NOT NULL,
  `nacionalidad` varchar(255) NOT NULL,
  `escuderia` varchar(255) NOT NULL,
  `debut` varchar(255) NOT NULL,
  `retiro` varchar(255) NOT NULL,
  `gps` int(11) NOT NULL,
  `victorias` int(11) NOT NULL,
  `podios` int(11) NOT NULL,
  `poles` int(11) NOT NULL,
  `vuelta_rapida` int(11) NOT NULL,
  `titulos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pilotos_info`
--

INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(1, 'Michael', 'Schumacher', '03/01/1969', 'Alemán', 'Jordan, Benetton, Ferrari, Mercedes', '1991', '2012', 308, 91, 155, 68, 77, 7);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(2, 'Rubens', 'Barrichello', '23/05/1972', 'Brasileño', 'Jordan, Stewart, Ferrari, Honda, Brawn, Williams', '1993', '2011', 326, 11, 68, 14, 17, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(3, 'Mika', 'Hakkinen', '28/09/1968', 'Finlandés', 'Lotus, McLaren', '1991', '2001', 165, 20, 51, 26, 25, 2);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(4, 'David', 'Coulthard', '27/03/1971', 'Británico', 'Williams, McLaren, Red Bull', '1994', '2008', 247, 13, 62, 12, 18, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(5, 'Ralf', 'Schumacher', '30/06/1975', 'Alemán', 'Jordan, Williams, Toyota', '1997', '2007', 182, 6, 27, 6, 8, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(6, 'Jenson', 'Button', '19/01/1980', 'Británico', 'Williams, Benetton, Renault, BAR, Honda, Brawn, McLaren', '2000', '2017', 309, 15, 50, 8, 8, 1);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(7, 'Heinz-Harald', 'Frentzen', '18/05/1967', 'Alemán', 'Sauber, Williams, Jordan, Prost, Arrows', '1994', '2003', 160, 3, 18, 2, 6, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(8, 'Jarno', 'Trulli', '13/07/1974', 'Italiano', 'Minardi, Prost, Jordan, Renault, Toyota, Lotus', '1997', '2011', 256, 1, 11, 4, 1, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(9, 'Giancarlo', 'Fisichella', '14/01/1973', 'Italiano', 'Minardi, Jordan, Benetton, Sauber, Renualt, Force India, Ferrari', '1996', '2009', 231, 3, 19, 4, 2, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(10, 'Alexander', 'Wurz', '15/02/1974', 'Austríaco', 'Benetton, McLaren, Williams', '1997', '2007', 69, 0, 3, 0, 1, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(11, 'Jacques', 'Villeneuve', '09/04/1971', 'Canadiense', 'Williams, BAR, Renault, Sauber, BMW Sauber', '1996', '2006', 165, 11, 23, 13, 9, 1);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(12, 'Ricardo', 'Zonta', '23/03/1976', 'Brasileño', 'BAR, Jordan, Toyota', '1999', '2005', 38, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(13, 'Eddie', 'Irvine', '10/11/1965', 'Británico', 'Jordan, Ferrari, Jaguar', '1993', '2002', 148, 4, 26, 0, 1, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(14, 'Johnny', 'Herbert', '25/06/1964', 'Británico', 'Benetton, Tyrrell, Lotus, Ligier, Sauber, Stewart, Jaguar', '1989', '2000', 165, 3, 7, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(15, 'Pedro', 'de la Rosa', '24/02/1971', 'Español', 'Arrows, Jaguar, McLaren, Sauber, HRT', '1999', '2012', 107, 1, 35, 0, 1, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(16, 'Jos', 'Verstappen', '04/03/1972', 'Neerlandés', 'Benetton, Simtek, Footwork, Tyrrell, Stewart, Arrows, Minardi', '1994', '2003', 107, 0, 2, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(17, 'Jean', 'Alesi', '11/06/1964', 'Francés', 'Tyrrell, Ferrari, Benetton, Sauber, Prost, Jordan', '1989', '2001', 202, 1, 32, 2, 4, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(18, 'Nick', 'Heidfeld', '10/05/1977', 'Alemán', 'Prost, Sauber, Jordan, Williams, BMW Sauber, Renault', '2000', '2011', 185, 0, 13, 1, 2, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(19, 'Juan', 'Pablo Montoya', '20/09/1975', 'Colombiano', 'Williams, McLaren', '2001', '2006', 95, 7, 30, 13, 12, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(20, 'Olivier', 'Panis', '02/09/1966', 'Francés', 'Ligier, Prost, BAR, Toyota', '1994', '2004', 158, 1, 5, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(21, 'Kimi', 'Raikkonen', '17/10/1979', 'Finlandés', 'Sauber, McLaren, Ferrari, Lotus, Alfa Romeo', '2001', '2012', 353, 21, 103, 18, 46, 1);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(22, 'Tarso', 'Marques', '19/01/1976', 'Brasileño', 'Minardi', '1996', '2001', 26, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(23, 'Enrique', 'Bernoldi', '19/10/1978', 'Brasileño', 'Arrows', '2001', '2002', 29, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(24, 'Fernando', 'Alonso', '29/07/1981', 'Español', 'Minardi, Renault, McLaren, Ferrari, Alpine, Aston Martin', '2001', '2024', 382, 32, 106, 22, 24, 2);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(25, 'Takuma', 'Sato', '28/01/1977', 'Japonés', 'Jordan, BAR, Super Aguri', '2002', '2008', 90, 0, 1, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(26, 'Felipe', 'Massa', '25/04/1981', 'Brasileño', 'Sauber, Ferrari, Williams', '2002', '2017', 272, 11, 41, 16, 15, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(27, 'Allan', 'McNish', '29/12/1969', 'Británico', 'Toyota', '2002', '2002', 17, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(28, 'Mika', 'Salo', '30/11/1966', 'Finlandés', 'Lotus, Tyrrell, Arrows, BAR, Ferrari, Sauber, Toyota', '1994', '2002', 111, 0, 2, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(29, 'Mark', 'Webber', '27/08/1976', 'Australiano', 'Minardi, Jaguar, Williams, Red Bull', '2002', '2013', 217, 9, 42, 13, 19, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(30, 'Alex', 'Yoong', '20/07/1976', 'Malayo', 'Minardi', '2001', '2002', 18, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(31, 'Ralph', 'Firman', '20/05/1975', 'Irlandés', 'Jordan', '2003', '2003', 15, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(32, 'Antonio', 'Pizzonia', '11/09/1980', 'Brasileño', 'Jaguar, Williams', '2003', '2005', 20, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(33, 'Justin', 'Wilson', '31/07/1978', 'Británico', 'Minardi, Jaguar', '2003', '2003', 16, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(34, 'Cristiano', 'da Matta', '19/09/1973', 'Brasileño', 'Toyota', '2003', '2004', 28, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(35, 'Christian', 'Klien', '07/02/1983', 'Austriaco', 'Jaguar, Red Bull, HRT', '2004', '2010', 51, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(36, 'Timo', 'Glock', '18/03/1982', 'Alemán', 'Jordan, Toyota, Virgin, Marussia', '2004', '2012', 95, 0, 3, 0, 1, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(37, 'Gianmaria', 'Bruni', '30/05/1981', 'Italiano', 'Minardi', '2004', '2004', 18, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(38, 'Zsolt', 'Baumgartner', '01/01/1981', 'Húngaro', 'Jordan, Minardi', '2003', '2004', 20, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(39, 'Tiago', 'Monteiro', '24/07/1976', 'Portugués', 'Jordan, Midland', '2005', '2006', 37, 0, 1, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(40, 'Narain', 'Karthikeyan', '14/01/1977', 'Indio', 'Jordan, HRT', '2005', '2012', 48, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(41, 'Christijan', 'Albers', '16/04/1979', 'Neerlandés', 'Minardi, Midland, Spyker', '2005', '2007', 46, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(42, 'Patrick', 'Friesacher', '26/09/1980', 'Austriaco', 'Minardi', '2005', '2005', 11, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(43, 'Nico', 'Rosberg', '27/06/1985', 'Alemán', 'Williams, Mercedes', '2006', '2016', 206, 23, 57, 30, 20, 1);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(44, 'Scott', 'Speed', '24/01/1983', 'Estadounidense', 'Toro Rosso', '2006', '2007', 28, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(45, 'Vitantonio', 'Liuzzi', '06/08/1981', 'Italiano', 'Red Bull, Toro Rosso, Force India, HRT', '2005', '2011', 81, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(46, 'Yuji', 'Ide', '21/01/1975', 'Japonés', 'Super Aguri', '2006', '2006', 4, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(47, 'Franck', 'Montagny', '05/01/1978', 'Francés', 'Super Aguri', '2006', '2006', 7, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(48, 'Lewis', 'Hamilton', '07/01/1985', 'Británico', 'McLaren, Mercedes', '2007', '2024', 334, 103, 197, 104, 65, 7);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(49, 'Robert', 'Kubica', '07/12/1984', 'Polaco', 'BMW Sauber, Renault, Williams, Alfa Romeo', '2006', '2021', 99, 1, 12, 1, 1, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(50, 'Heikki', 'Kovalainen', '19/10/1981', 'Finlandés', 'Renault, McLaren, Lotus, Caterham', '2007', '2013', 112, 1, 4, 1, 2, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(51, 'Anthony', 'Davidson', '18/04/1979', 'Británico', 'Minardi, BAR, Super Aguri', '2002', '2008', 24, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(52, 'Adrian', 'Sutil', '11/01/1983', 'Alemán', 'Spyker, Force India, Sauber', '2007', '2014', 128, 0, 0, 0, 1, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(53, 'Sebastian', 'Vettel', '03/07/1987', 'Alemán', 'BMW Sauber, Toro Rosso, Red Bull, Ferrari, Aston Martin', '2007', '2022', 300, 53, 122, 57, 38, 4);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(54, 'Nelson', 'Piquet Jr', '25/07/1985', 'Brasileño', 'Renault', '2008', '2009', 28, 0, 1, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(55, 'Kazuki', 'Nakajima', '11/01/1985', 'Japonés', 'Williams', '2007', '2009', 36, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(56, 'Sebastien', 'Bourdais', '28/02/1979', 'Francés', 'Toro Rosso', '2008', '2009', 27, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(57, 'Sebastien', 'Buemi', '31/10/1988', 'Suizo', 'Toro Rosso', '2009', '2011', 55, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(58, 'Jaime', 'Alguersuari', '23/03/1990', 'Español', 'Toro Rosso', '2009', '2011', 46, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(59, 'Vitaly', 'Petrov', '08/09/1984', 'Ruso', 'Renault, Caterham', '2010', '2012', 58, 0, 1, 0, 1, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(60, 'Nico', 'Hulkenberg', '19/08/1987', 'Alemán', 'Williams, Force India, Sauber, Renault, Racing Point, Aston Martin, Haas', '2010', '2024', 208, 0, 0, 1, 2, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(61, 'Kamui', 'Kobayashi', '13/09/1986', 'Japonés', 'Toyota, Sauber, Caterham', '2009', '2014', 76, 0, 1, 0, 1, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(62, 'Lucas', 'di Grassi', '11/08/1984', 'Brasileño', 'Virgin', '2010', '2010', 19, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(63, 'Bruno', 'Senna', '15/10/1983', 'Brasileño', 'HRT, Renault, Williams', '2010', '2012', 46, 0, 0, 0, 1, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(64, 'Karun', 'Chandhok', '19/01/1984', 'Indio', 'HRT, Lotus', '2010', '2011', 11, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(65, 'Paul', 'di Resta', '16/04/1986', 'Británico', 'Force India, Williams', '2011', '2017', 59, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(66, 'Sergio', 'Perez', '26/01/1990', 'Mexicano', 'Sauber, McLaren, Force India, Racing Point, Red Bull', '2011', '2024', 263, 6, 36, 3, 11, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(67, 'Pastor', 'Maldonado', '09/03/1985', 'Venezolano', 'Williams, Lotus', '2011', '2015', 96, 1, 1, 1, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(68, 'Jerome', 'Ambrosio', '27/12/1985', 'Belga', 'Virgin, Lotus', '2011', '2012', 20, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(69, 'Romain', 'Grosjean', '17/04/1986', 'Francés', 'Renault, Lotus, Haas', '2009', '2020', 180, 0, 10, 0, 1, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(70, 'Daniel', 'Ricciardo', '01/07/1989', 'Australiano', 'HRT, Toro Rosso, Red Bull, Renault, McLaren, AlphaTauri, RB', '2011', '2024', 242, 8, 32, 3, 16, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(71, 'Jean-Eric', 'Vergne', '25//04/1990', 'Francés', 'Toro Rosso', '2012', '2014', 58, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(72, 'Charles', 'Pic', '15/02/1990', 'Francés', 'Marussia, Caterham', '2012', '2013', 39, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(73, 'Esteban', 'Gutierrez', '05/08/1991', 'Mexicano', 'Sauber, Haas', '2013', '2016', 59, 0, 0, 0, 1, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(74, 'Giedo', 'van der Garde', '25/04/1985', 'Neerlandés', 'Caterham', '2013', '2013', 19, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(75, 'Jules', 'Bianchi', '03/08/1989', 'Francés', 'Marussia', '2013', '2014', 34, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(76, 'Max', 'Chilton', '21/04/1991', 'Británico', 'Marussia', '2013', '2014', 35, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(77, 'Valtteri', 'Bottas', '28/08/1989', 'Finlandés', 'Williams, Mercedes, Alfa Romeo, Sauber', '2013', '2024', 225, 10, 67, 20, 19, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(78, 'Kevin', 'Magnussen', '05/10/1992', 'Danés', 'McLaren, Renault, Haas', '2014', '2024', 166, 0, 1, 1, 2, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(79, 'Daniil', 'Kvyat', '26/04/1994', 'Ruso', 'Toro Rosso, Red Bull, AlphaTauri', '2014', '2020', 112, 0, 3, 0, 1, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(80, 'Marcus', 'Ericsson', '02/09/1990', 'Sueco', 'Caterham, Sauber', '2014', '2018', 97, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(81, 'Max', 'Verstappen', '30/09/1997', 'Neerlandés', 'Toro Rosso, Red Bull', '2015', '2024', 187, 56, 100, 34, 31, 3);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(82, 'Carlos', 'Sainz Jr', '01/09/1994', 'Español', 'Toro Rosso, Renault, McLaren, Ferrari', '2015', '2024', 187, 2, 19, 5, 3, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(83, 'Felipe', 'Nasr', '21/08/1992', 'Brasileño', 'Sauber', '2015', '2016', 40, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(84, 'Will', 'Stevens', '28/06/1991', 'Británico', 'Caterham, Marussia', '2014', '2015', 19, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(85, 'Roberto', 'Mehri', '22/03/1991', 'Español', 'Marussia', '2015', '2015', 14, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(86, 'Jolyon', 'Palmer', '20/01/1991', 'Británico', 'Renault', '2016', '2017', 37, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(87, 'Pascal', 'Wehrlein', '18/10/1994', 'Alemán', 'Manor, Sauber', '2016', '2017', 40, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(88, 'Esteban', 'Ocon', '17/09/1996', 'Francés', 'Manor, Force India, Racing Point, Renault, Alpine', '2016', '2024', 135, 1, 3, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(89, 'Lance', 'Stroll', '29/10/1998', 'Canadiense', 'Williams, Racing Point, Aston Martin', '2017', '2024', 147, 0, 3, 1, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(90, 'Stoffel', 'Vandoorne', '26/03/1992', 'Belga', 'McLaren', '2016', '2018', 42, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(91, 'Pierre', 'Gasly', '07/02/1996', 'Francés', 'Toro Rosso, Red Bull, AlphaTauri, Alpine', '2017', '2024', 132, 1, 4, 0, 3, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(92, 'Brendon', 'Hartley', '10/11/1989', 'Neozelandés', 'Toro Rosso', '2017', '2018', 25, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(93, 'Charles', 'Leclerc', '16/10/1997', 'Monegasco', 'Sauber, Ferrari', '2018', '2024', 128, 5, 31, 23, 8, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(94, 'Sergey', 'Sirotkin', '27/08/1995', 'Ruso', 'Williams', '2018', '2018', 21, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(95, 'Antonio', 'Giovinazzi', '14/12/1993', 'Italiano', 'Sauber, Alfa Romeo', '2017', '2021', 62, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(96, 'Lando', 'Norris', '13/11/1999', 'Británico', 'McLaren', '2019', '2024', 106, 0, 13, 1, 6, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(97, 'Alex', 'Albon', '23/03/1996', 'Tailandés', 'Toro Rosso, Red Bull, Williams', '2019', '2024', 84, 0, 2, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(98, 'George', 'Russell', '15/02/1998', 'Británico', 'Williams, Mercedes', '2019', '2024', 106, 1, 11, 1, 6, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(99, 'Nicholas', 'Latifi', '29/06/1995', 'Canadiense', 'Williams', '2020', '2022', 61, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(100, 'Yuki', 'Tsunoda', '11/05/2000', 'Japonés', 'AlphaTauri, RB', '2021', '2024', 68, 0, 0, 0, 1, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(101, 'Mick', 'Schumacher', '22/03/1999', 'Alemán', 'Haas', '2021', '2022', 44, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(102, 'Nikita', 'Mazepin', '02/03/1999', 'Ruso', 'Haas', '2021', '2021', 22, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(103, 'Guanyu', 'Zhou', '30/05/1999', 'Chino', 'Alfa Romeo, Sauber', '2022', '2024', 46, 0, 0, 0, 2, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(104, 'Nyck', 'de Vries', '06/02/1995', 'Neerlandés', 'Williams, AlphaTauri', '2022', '2023', 11, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(105, 'Logan', 'Sargeant', '31/12/2000', 'Estadounidense', 'Williams', '2023', '2024', 24, 0, 0, 0, 0, 0);
INSERT INTO `pilotos_info` (`id`, `nombre`, `apellidos`, `fecha_nacimiento`, `nacionalidad`, `escuderia`, `debut`, `retiro`, `gps`, `victorias`, `podios`, `poles`, `vuelta_rapida`, `titulos`) VALUES(106, 'Oscar', 'Piastri', '06/04/2001', 'Australiano', 'McLaren', '2023', '2024', 24, 0, 2, 0, 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `piloto_escuderia`
--

CREATE TABLE `piloto_escuderia` (
  `id` int(11) NOT NULL,
  `piloto_id` int(11) NOT NULL,
  `escuderia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `piloto_escuderia`
--

INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(1, 1, 10);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(2, 1, 12);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(3, 1, 25);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(4, 1, 32);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(5, 2, 10);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(6, 2, 17);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(7, 2, 25);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(8, 2, 34);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(9, 2, 35);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(10, 2, 13);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(11, 3, 19);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(12, 3, 7);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(13, 4, 13);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(14, 4, 7);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(15, 4, 24);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(16, 5, 10);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(17, 5, 13);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(18, 5, 11);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(19, 6, 13);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(20, 6, 12);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(21, 6, 22);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(22, 6, 9);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(23, 6, 34);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(24, 6, 35);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(25, 6, 7);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(26, 7, 2);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(27, 7, 13);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(28, 7, 10);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(29, 7, 37);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(30, 7, 5);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(31, 8, 18);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(32, 8, 37);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(33, 8, 10);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(34, 8, 22);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(35, 8, 11);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(36, 8, 19);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(37, 9, 18);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(38, 9, 10);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(39, 9, 12);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(40, 9, 2);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(41, 9, 22);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(42, 9, 29);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(43, 9, 25);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(44, 10, 12);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(45, 10, 7);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(46, 10, 13);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(47, 11, 13);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(48, 11, 9);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(49, 11, 22);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(50, 11, 2);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(51, 11, 21);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(52, 12, 9);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(53, 12, 10);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(54, 12, 11);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(55, 13, 10);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(56, 13, 25);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(57, 13, 6);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(58, 14, 12);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(59, 14, 16);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(60, 14, 19);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(61, 14, 20);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(62, 14, 2);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(63, 14, 17);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(64, 14, 6);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(65, 15, 5);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(66, 15, 6);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(67, 15, 7);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(68, 15, 2);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(69, 15, 8);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(70, 16, 12);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(71, 16, 14);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(72, 16, 15);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(73, 16, 16);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(74, 16, 17);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(75, 16, 5);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(76, 16, 18);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(77, 17, 16);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(78, 17, 25);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(79, 17, 12);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(80, 17, 2);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(81, 17, 37);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(82, 17, 10);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(83, 18, 37);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(84, 18, 2);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(85, 18, 10);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(86, 18, 13);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(87, 18, 21);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(88, 18, 22);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(89, 19, 13);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(90, 19, 7);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(91, 20, 20);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(92, 20, 37);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(93, 20, 9);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(94, 20, 11);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(95, 21, 2);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(96, 21, 7);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(97, 21, 25);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(98, 21, 19);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(99, 21, 1);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(100, 22, 18);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(101, 23, 5);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(102, 24, 18);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(103, 24, 22);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(104, 24, 7);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(105, 24, 25);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(106, 24, 40);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(107, 24, 26);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(108, 25, 10);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(109, 25, 9);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(110, 25, 31);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(111, 26, 2);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(112, 26, 25);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(113, 26, 13);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(114, 27, 11);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(115, 28, 19);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(116, 28, 16);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(117, 28, 5);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(118, 28, 9);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(119, 28, 25);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(120, 28, 2);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(121, 28, 11);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(122, 29, 18);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(123, 29, 6);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(124, 29, 13);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(125, 29, 24);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(126, 30, 18);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(127, 31, 10);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(128, 32, 6);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(129, 32, 13);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(130, 33, 18);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(131, 33, 6);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(132, 34, 11);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(133, 35, 6);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(134, 35, 24);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(135, 35, 8);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(136, 36, 10);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(137, 36, 11);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(138, 36, 36);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(139, 36, 28);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(140, 37, 18);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(141, 38, 10);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(142, 38, 18);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(143, 39, 10);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(144, 39, 33);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(145, 40, 10);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(146, 40, 8);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(147, 41, 18);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(148, 41, 33);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(149, 41, 41);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(150, 42, 18);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(151, 43, 13);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(152, 43, 32);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(153, 44, 23);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(154, 45, 24);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(155, 45, 23);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(156, 45, 29);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(157, 45, 8);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(158, 46, 31);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(159, 47, 31);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(160, 48, 7);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(161, 48, 32);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(162, 49, 21);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(163, 49, 2);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(164, 49, 22);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(165, 49, 13);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(166, 49, 1);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(167, 50, 22);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(168, 50, 7);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(169, 50, 19);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(170, 50, 27);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(171, 51, 18);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(172, 51, 9);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(173, 51, 31);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(174, 52, 41);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(175, 52, 29);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(176, 52, 2);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(177, 53, 21);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(178, 53, 23);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(179, 53, 24);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(180, 53, 25);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(181, 53, 26);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(182, 54, 22);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(183, 55, 13);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(184, 56, 23);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(185, 57, 23);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(186, 58, 23);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(187, 59, 22);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(188, 59, 27);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(189, 60, 13);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(190, 60, 29);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(191, 60, 2);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(192, 60, 22);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(193, 60, 39);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(194, 60, 26);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(195, 60, 30);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(196, 61, 11);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(197, 61, 2);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(198, 61, 27);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(199, 62, 36);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(200, 63, 8);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(201, 63, 22);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(202, 63, 13);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(203, 64, 8);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(204, 64, 19);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(205, 65, 29);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(206, 65, 13);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(207, 66, 2);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(208, 66, 7);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(209, 66, 29);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(210, 66, 39);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(211, 66, 24);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(212, 67, 13);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(213, 67, 19);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(214, 68, 36);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(215, 68, 19);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(216, 69, 22);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(217, 69, 19);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(218, 69, 30);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(219, 70, 8);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(220, 70, 23);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(221, 70, 24);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(222, 70, 22);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(223, 70, 7);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(224, 70, 3);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(225, 70, 4);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(226, 71, 23);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(227, 72, 28);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(228, 72, 27);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(229, 73, 2);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(230, 73, 30);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(231, 74, 27);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(232, 75, 28);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(233, 76, 28);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(234, 77, 13);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(235, 77, 32);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(236, 77, 1);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(237, 77, 2);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(238, 78, 7);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(239, 78, 22);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(240, 78, 30);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(241, 79, 23);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(242, 79, 24);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(243, 79, 3);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(244, 80, 27);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(245, 80, 2);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(246, 81, 23);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(247, 81, 24);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(248, 82, 23);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(249, 82, 22);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(250, 82, 7);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(251, 82, 25);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(252, 83, 2);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(253, 84, 27);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(254, 84, 28);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(255, 85, 28);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(256, 86, 22);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(257, 87, 38);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(258, 87, 2);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(259, 88, 38);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(260, 88, 29);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(261, 88, 39);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(262, 88, 22);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(263, 88, 40);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(264, 89, 13);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(265, 89, 39);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(266, 89, 26);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(267, 90, 7);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(268, 91, 23);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(269, 91, 24);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(270, 91, 3);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(271, 91, 40);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(272, 92, 23);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(273, 93, 2);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(274, 93, 25);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(275, 94, 13);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(276, 95, 2);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(277, 95, 1);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(278, 96, 7);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(279, 97, 23);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(280, 97, 24);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(281, 97, 13);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(282, 98, 13);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(283, 98, 32);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(284, 99, 13);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(285, 100, 3);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(286, 100, 4);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(287, 101, 30);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(288, 102, 30);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(289, 103, 1);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(290, 103, 2);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(291, 104, 13);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(292, 104, 3);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(293, 105, 13);
INSERT INTO `piloto_escuderia` (`id`, `piloto_id`, `escuderia_id`) VALUES(294, 106, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion`
--

CREATE TABLE `publicacion` (
  `contenido` varchar(10000) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `piloto` varchar(50) NOT NULL,
  `escuderia` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `publicacion`
--

INSERT INTO `publicacion` (`contenido`, `usuario`, `id`, `piloto`, `escuderia`) VALUES('La carrera de Canada fue una de las mejores que he visto en mucho tiempo. La estrategia de Red Bull fue perfecta. Gran victoria de Max.', 'TurboRacer', 31, 'Max Verstappen', 'Red Bull');
INSERT INTO `publicacion` (`contenido`, `usuario`, `id`, `piloto`, `escuderia`) VALUES('Con lo bien que iba ferrari últimamente...\nLeclerc se puede acordar mucho de esta carrera.', 'PitStopMaster', 32, 'Charles Leclerc', 'Ferrari');
INSERT INTO `publicacion` (`contenido`, `usuario`, `id`, `piloto`, `escuderia`) VALUES('Lo de Checo con el Red Bull qué es?\nLo que haría Norris con ese coche.', 'GrandPrixGuru', 33, 'Lando Norris', 'Red Bull');
INSERT INTO `publicacion` (`contenido`, `usuario`, `id`, `piloto`, `escuderia`) VALUES('Fernando Alonso sigue demostrando por qué es uno de los mejores pilotos de todos los tiempos. Su habilidad para sacar el máximo rendimiento del coche, incluso en condiciones difíciles, es impresionante. La experiencia y la destreza que aporta a cada carrera son invaluables para su equipo. ¡Es un verdadero maestro en la pista!', 'Alonsista', 34, 'Fernando Alonso', 'Aston Martin');
INSERT INTO `publicacion` (`contenido`, `usuario`, `id`, `piloto`, `escuderia`) VALUES('Aunque Fernando Alonso tiene un historial impresionante, esta temporada no está alcanzando el nivel que se espera de él. Sus actuaciones han sido inconsistentes y ha cometido errores que no esperábamos de un piloto de su calibre. Parece que la falta de competitividad del coche está afectando su motivación. Ojalá podamos ver un mejor rendimiento en las próximas carreras.', 'Pitstopmaster', 35, 'Fernando Alonso', 'Aston Martin');
INSERT INTO `publicacion` (`contenido`, `usuario`, `id`, `piloto`, `escuderia`) VALUES('Carlos Sainz está demostrando ser uno de los pilotos más consistentes en la parrilla. Su capacidad para adaptarse a diferentes condiciones y sacar el máximo provecho del coche es impresionante.', 'turboracer', 36, 'Carlos Sainz Jr', 'Ferrari');
INSERT INTO `publicacion` (`contenido`, `usuario`, `id`, `piloto`, `escuderia`) VALUES('Otro año más que Pedro sigue con su record de Bahrain!😁', 'TrackTitan', 37, 'Pedro de la Rosa', 'McLaren');
INSERT INTO `publicacion` (`contenido`, `usuario`, `id`, `piloto`, `escuderia`) VALUES('En mi opinión Vettel en Ferrari fue mejor que Alonso en Ferrari', 'BoxBox', 38, 'Sebastian Vettel', 'Ferrari');
INSERT INTO `publicacion` (`contenido`, `usuario`, `id`, `piloto`, `escuderia`) VALUES('El mejor prime de un piloto en la historia de la F1 es el de Fernando Alonso en Ferrari...', 'Alonsista', 39, 'Fernando Alonso', 'Ferrari');
INSERT INTO `publicacion` (`contenido`, `usuario`, `id`, `piloto`, `escuderia`) VALUES('Recordando a HRT en la F1\n\nEl equipo español que nos demostró que la pasión por las carreras no tiene límites.', 'RaceTrack', 40, 'Pedro de la Rosa', 'HRT');
INSERT INTO `publicacion` (`contenido`, `usuario`, `id`, `piloto`, `escuderia`) VALUES('Por fin! Norris se merecía esta victoria, lo que ha costado', 'GrandPrixGuru', 41, 'Lando Norris', 'McLaren');
INSERT INTO `publicacion` (`contenido`, `usuario`, `id`, `piloto`, `escuderia`) VALUES('Los pit stops en la Fórmula 1 son pura magia y precisión. ⏱️👨‍🔧 En solo 2-3 segundos, los equipos cambian los neumáticos y ajustan el coche para maximizar el rendimiento. ¡Cada milisegundo cuenta!', 'SpeedFreak2024', 43, 'Max Verstappen', 'Red Bull');
INSERT INTO `publicacion` (`contenido`, `usuario`, `id`, `piloto`, `escuderia`) VALUES('A Hamilton le robaron su octavo mundial y quien defienda lo que pasó en Abu Dabi está cegado por la envidia', 'Pitstopmaster', 44, 'Lewis Hamilton', 'Mercedes');
INSERT INTO `publicacion` (`contenido`, `usuario`, `id`, `piloto`, `escuderia`) VALUES('El Gran Premio de Mónaco es uno de los eventos más icónicos en la Fórmula 1. 🏰 Con sus estrechas calles y desafiantes curvas, es una verdadera prueba de habilidad para los pilotos. 🌟', 'ApexMaster', 45, 'Charles Leclerc', 'McLaren');
INSERT INTO `publicacion` (`contenido`, `usuario`, `id`, `piloto`, `escuderia`) VALUES('Desde los alerones clásicos hasta los complejos difusores actuales, la aerodinámica ha transformado la F1. 🚀 Cada detalle cuenta para ganar esos preciosos segundos en la pista. 🌬️🏁', 'SpeedFreak2024', 46, 'Lewis Hamilton', 'Red Bull');
INSERT INTO `publicacion` (`contenido`, `usuario`, `id`, `piloto`, `escuderia`) VALUES('La Fórmula 1 está llena de rivalidades legendarias que han marcado la historia del deporte. 🏎️⚔️ Desde Senna vs. Prost hasta Hamilton vs. Rosberg, estas batallas en la pista nos han dejado sin aliento.', 'TurboCharger', 47, 'Nico Rosberg', 'Mercedes');
INSERT INTO `publicacion` (`contenido`, `usuario`, `id`, `piloto`, `escuderia`) VALUES('¿Recuerdas tu primer Gran Premio de F1? Esa emoción indescriptible al ver los autos rugir en la pista. Desde los clásicos hasta los actuales, cada temporada nos regala momentos inolvidables. ¿Cuál fue tu debut favorito en la F1? 🌟🏎', 'SpeedDemonF1', 48, 'Nick Heidfeld', 'HRT');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `id_pregunta` int(11) NOT NULL,
  `pregunta` varchar(255) NOT NULL,
  `id_respuesta` int(11) NOT NULL,
  `respuesta` varchar(255) NOT NULL,
  `nivel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `quiz`
--

INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(1, 1, '¿Cuál es el equipo más exitoso en la historia de la Fórmula 1?', 1, 'Ferrari', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(2, 1, '¿Cuál es el equipo más exitoso en la historia de la Fórmula 1?', 2, 'Mercedes', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(3, 1, '¿Cuál es el equipo más exitoso en la historia de la Fórmula 1?', 3, 'McLaren', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(4, 1, '¿Cuál es el equipo más exitoso en la historia de la Fórmula 1?', 4, 'Red Bull', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(5, 2, '¿Qué piloto español ha ganado dos campeonatos mundiales de Fórmula 1?', 1, 'Pedro de la Rosa', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(6, 2, '¿Qué piloto español ha ganado dos campeonatos mundiales de Fórmula 1?', 2, 'Fernando Alonso', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(7, 2, '¿Qué piloto español ha ganado dos campeonatos mundiales de Fórmula 1?', 3, 'Carlos Sainz', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(8, 2, '¿Qué piloto español ha ganado dos campeonatos mundiales de Fórmula 1?', 4, 'Jaime Alguersuari', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(9, 3, '¿Quién es el piloto más joven en ganar un Gran Premio de Fórmula 1?', 1, 'Charles Leclerc', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(10, 3, '¿Quién es el piloto más joven en ganar un Gran Premio de Fórmula 1?', 2, 'Lando Norris', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(11, 3, '¿Quién es el piloto más joven en ganar un Gran Premio de Fórmula 1?', 3, 'Max Verstappen', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(12, 3, '¿Quién es el piloto más joven en ganar un Gran Premio de Fórmula 1?', 4, 'George Russell', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(13, 4, '¿Qué piloto tiene el récord de más pole positions en la historia de la Fórmula 1?', 1, 'Michael Schumacher', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(14, 4, '¿Qué piloto tiene el récord de más pole positions en la historia de la Fórmula 1?', 2, 'Fernando Alonso', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(15, 4, '¿Qué piloto tiene el récord de más pole positions en la historia de la Fórmula 1?', 3, 'Ayrton Senna', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(16, 4, '¿Qué piloto tiene el récord de más pole positions en la historia de la Fórmula 1?', 4, 'Lewis Hamilton', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(17, 5, '¿Cuál es el equipo de Fórmula 1 más antiguo en competir en la actualidad?', 1, 'Williams', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(18, 5, '¿Cuál es el equipo de Fórmula 1 más antiguo en competir en la actualidad?', 2, 'McLaren', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(19, 5, '¿Cuál es el equipo de Fórmula 1 más antiguo en competir en la actualidad?', 3, 'Renault / Alpine', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(20, 5, '¿Cuál es el equipo de Fórmula 1 más antiguo en competir en la actualidad?', 5, 'Ferrari', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(21, 21, '¿Cuál es el circuito más largo del calendario de la Fórmula 1?', 1, 'Circuito de Albert Park (Australia)', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(22, 21, '¿Cuál es el circuito más largo del calendario de la Fórmula 1?', 2, 'Circuito de Marina Bay (Singapur)', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(23, 21, '¿Cuál es el circuito más largo del calendario de la Fórmula 1?', 3, 'Circuito Nazionale Monza (Italia)', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(24, 21, '¿Cuál es el circuito más largo del calendario de la Fórmula 1?', 21, 'Circuito de Spa-Francorchamps (Bélgica)', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(25, 22, '¿Cuántos puntos se otorgan por una victoria en la Fórmula 1?', 1, '26', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(26, 22, '¿Cuántos puntos se otorgan por una victoria en la Fórmula 1?', 2, '24', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(27, 22, '¿Cuántos puntos se otorgan por una victoria en la Fórmula 1?', 3, '20', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(28, 22, '¿Cuántos puntos se otorgan por una victoria en la Fórmula 1?', 22, '25', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(29, 23, '¿Cuál es la única carrera de Fórmula 1 que se celebra en la noche?', 1, 'Gran Premio de Bahrein', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(30, 23, '¿Cuál es la única carrera de Fórmula 1 que se celebra en la noche?', 2, 'Gran Premio de Abu Dhabi', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(31, 23, '¿Cuál es la única carrera de Fórmula 1 que se celebra en la noche?', 3, 'Gran Premio de Japón', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(32, 23, '¿Cuál es la única carrera de Fórmula 1 que se celebra en la noche?', 23, 'Gran Premio de Singapur', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(33, 24, '¿Qué piloto ganó el primer Gran Premio de Fórmula 1 nocturno en Singapur?', 1, 'Sebastian Vettel', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(34, 24, '¿Qué piloto ganó el primer Gran Premio de Fórmula 1 nocturno en Singapur?', 2, 'Michael Schumacher', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(35, 24, '¿Qué piloto ganó el primer Gran Premio de Fórmula 1 nocturno en Singapur?', 3, 'Lewis Hamilton', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(36, 24, '¿Qué piloto ganó el primer Gran Premio de Fórmula 1 nocturno en Singapur?', 24, 'Fernando Alonso', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(37, 25, '¿Qué piloto ganó el campeonato del mundo de Fórmula 1 en 2009?', 1, 'Sebastian Vettel', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(38, 25, '¿Qué piloto ganó el campeonato del mundo de Fórmula 1 en 2009?', 2, 'Lewis Hamilton', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(39, 25, '¿Qué piloto ganó el campeonato del mundo de Fórmula 1 en 2009?', 3, 'Kimi Raikkonen', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(40, 25, '¿Qué piloto ganó el campeonato del mundo de Fórmula 1 en 2009?', 25, 'Jenson Button', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(41, 41, '¿Qué equipo de Fórmula 1 tiene su sede en Milton Keynes, Reino Unido?', 1, 'Aston Martin', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(42, 41, '¿Qué equipo de Fórmula 1 tiene su sede en Milton Keynes, Reino Unido?', 2, 'Mercedes', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(43, 41, '¿Qué equipo de Fórmula 1 tiene su sede en Milton Keynes, Reino Unido?', 3, 'McLaren', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(44, 41, '¿Qué equipo de Fórmula 1 tiene su sede en Milton Keynes, Reino Unido?', 41, 'Red Bull', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(45, 42, '¿En qué año se introdujo por primera vez el sistema de penalización por peso en la Fórmula 1?', 1, '1990', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(46, 42, '¿En qué año se introdujo por primera vez el sistema de penalización por peso en la Fórmula 1?', 2, '1985', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(47, 42, '¿En qué año se introdujo por primera vez el sistema de penalización por peso en la Fórmula 1?', 3, '1978', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(48, 42, '¿En qué año se introdujo por primera vez el sistema de penalización por peso en la Fórmula 1?', 42, '1982', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(49, 43, '¿En qué año se introdujo el sistema de puntos actual en la Fórmula 1?', 1, '2000', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(50, 43, '¿En qué año se introdujo el sistema de puntos actual en la Fórmula 1?', 2, '1995', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(51, 43, '¿En qué año se introdujo el sistema de puntos actual en la Fórmula 1?', 3, '2004', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(52, 43, '¿En qué año se introdujo el sistema de puntos actual en la Fórmula 1?', 43, '2010', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(53, 44, '¿En qué año se introdujo por primera vez el sistema de clasificación de Q1, Q2 y Q3 en la Fórmula 1?', 1, '2010', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(54, 44, '¿En qué año se introdujo por primera vez el sistema de clasificación de Q1, Q2 y Q3 en la Fórmula 1?', 2, '2004', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(55, 44, '¿En qué año se introdujo por primera vez el sistema de clasificación de Q1, Q2 y Q3 en la Fórmula 1?', 3, '2000', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(56, 44, '¿En qué año se introdujo por primera vez el sistema de clasificación de Q1, Q2 y Q3 en la Fórmula 1?', 44, '2006', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(57, 45, '¿Cuál es el único circuito del calendario de la Fórmula 1 que se corre en sentido contrario a las agujas del reloj?', 1, 'Circuito Nazionale Monza (Italia)', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(58, 45, '¿Cuál es el único circuito del calendario de la Fórmula 1 que se corre en sentido contrario a las agujas del reloj?', 2, 'Circuito de Marina Bay (Singapur)', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(59, 45, '¿Cuál es el único circuito del calendario de la Fórmula 1 que se corre en sentido contrario a las agujas del reloj?', 3, 'Circuito de Silverstone (Reino Unido)', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(60, 45, '¿Cuál es el único circuito del calendario de la Fórmula 1 que se corre en sentido contrario a las agujas del reloj?', 45, 'Circuito de Interlagos (Brasil)', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(61, 46, '¿Cuál es el nombre del equipo que ganó su primer campeonato mundial de constructores en 2010?', 1, 'Renault', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(62, 46, '¿Cuál es el nombre del equipo que ganó su primer campeonato mundial de constructores en 2010?', 2, 'McLaren', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(63, 46, '¿Cuál es el nombre del equipo que ganó su primer campeonato mundial de constructores en 2010?', 3, 'Mercedes', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(64, 46, '¿Cuál es el nombre del equipo que ganó su primer campeonato mundial de constructores en 2010?', 46, 'Red Bull', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(65, 26, '¿Cuál es el circuito más antiguo del calendario de la Fórmula 1 que aún se utiliza?', 1, 'Circuito de Spa-Francorchamps (Bélgica)', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(66, 26, '¿Cuál es el circuito más antiguo del calendario de la Fórmula 1 que aún se utiliza?', 2, 'Circuito de Albert Park (Australia)', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(67, 26, '¿Cuál es el circuito más antiguo del calendario de la Fórmula 1 que aún se utiliza?', 3, 'Circuito de Silverstone (Reino Unido)', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(68, 26, '¿Cuál es el circuito más antiguo del calendario de la Fórmula 1 que aún se utiliza?', 26, 'Circuito Nazionale Monza (Italia)', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(69, 47, '¿En qué año se introdujo el sistema de DRS (Drag Reduction System) en la Fórmula 1?', 1, '2015', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(70, 47, '¿En qué año se introdujo el sistema de DRS (Drag Reduction System) en la Fórmula 1?', 2, '2006', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(71, 47, '¿En qué año se introdujo el sistema de DRS (Drag Reduction System) en la Fórmula 1?', 3, '2010', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(72, 47, '¿En qué año se introdujo el sistema de DRS (Drag Reduction System) en la Fórmula 1?', 47, '2011', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(73, 6, '¿En qué año se celebró la primera temporada oficial de Fórmula 1?', 1, '1947', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(74, 6, '¿En qué año se celebró la primera temporada oficial de Fórmula 1?', 2, '1949', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(75, 6, '¿En qué año se celebró la primera temporada oficial de Fórmula 1?', 3, '1945', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(76, 6, '¿En qué año se celebró la primera temporada oficial de Fórmula 1?', 6, '1950', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(77, 27, '¿Qué piloto es conocido como \"El Profesor\" por su estilo de conducción calculador?', 1, 'Jacques Villeneuve', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(78, 27, '¿Qué piloto es conocido como \"El Profesor\" por su estilo de conducción calculador?', 2, 'Mika Häkkinen', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(79, 27, '¿Qué piloto es conocido como \"El Profesor\" por su estilo de conducción calculador?', 3, 'Juan Manuel Fangio', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(80, 27, '¿Qué piloto es conocido como \"El Profesor\" por su estilo de conducción calculador?', 27, 'Alain Prost', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(81, 48, '¿Cuál fue el primer equipo en utilizar la tecnología de suspensión activa en la Fórmula 1?', 1, 'Renault', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(82, 48, '¿Cuál fue el primer equipo en utilizar la tecnología de suspensión activa en la Fórmula 1?', 2, 'Mercedes', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(83, 48, '¿Cuál fue el primer equipo en utilizar la tecnología de suspensión activa en la Fórmula 1?', 3, 'Ferrari', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(84, 48, '¿Cuál fue el primer equipo en utilizar la tecnología de suspensión activa en la Fórmula 1?', 48, 'Lotus', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(85, 49, '¿Qué piloto tiene el récord de más podios consecutivos en la Fórmula 1?', 1, 'Lewis Hamilton', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(86, 49, '¿Qué piloto tiene el récord de más podios consecutivos en la Fórmula 1?', 2, 'Ayrton Senna', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(87, 49, '¿Qué piloto tiene el récord de más podios consecutivos en la Fórmula 1?', 3, 'Max Verstappen', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(88, 49, '¿Qué piloto tiene el récord de más podios consecutivos en la Fórmula 1?', 49, 'Michael Schumacher', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(89, 50, '¿En qué año se introdujeron los motores híbridos V6 turbo en la Fórmula 1?', 1, '2018', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(90, 50, '¿En qué año se introdujeron los motores híbridos V6 turbo en la Fórmula 1?', 2, '2015', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(91, 50, '¿En qué año se introdujeron los motores híbridos V6 turbo en la Fórmula 1?', 3, '2016', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(92, 50, '¿En qué año se introdujeron los motores híbridos V6 turbo en la Fórmula 1?', 50, '2014', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(93, 7, '¿En qué año ganó Kimi Räikkönen su único campeonato mundial de Fórmula 1?', 1, '2008', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(94, 7, '¿En qué año ganó Kimi Räikkönen su único campeonato mundial de Fórmula 1?', 2, '2006', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(95, 7, '¿En qué año ganó Kimi Räikkönen su único campeonato mundial de Fórmula 1?', 3, '2009', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(96, 7, '¿En qué año ganó Kimi Räikkönen su único campeonato mundial de Fórmula 1?', 7, '2007', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(97, 8, '¿Cuál es el nombre del piloto que ganó cuatro campeonatos mundiales consecutivos con Red Bull Racing?', 1, 'Daniel Ricciardo', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(98, 8, '¿Cuál es el nombre del piloto que ganó cuatro campeonatos mundiales consecutivos con Red Bull Racing?', 2, 'Mark Webber', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(99, 8, '¿Cuál es el nombre del piloto que ganó cuatro campeonatos mundiales consecutivos con Red Bull Racing?', 3, 'Max Verstappen', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(100, 8, '¿Cuál es el nombre del piloto que ganó cuatro campeonatos mundiales consecutivos con Red Bull Racing?', 8, 'Sebastian Vettel', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(101, 28, '¿Qué piloto fue apodado \"El León\" debido a su estilo de conducción agresiva?', 1, 'Juan Manuel Fangio', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(102, 28, '¿Qué piloto fue apodado \"El León\" debido a su estilo de conducción agresiva?', 2, 'Alain Prost', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(103, 28, '¿Qué piloto fue apodado \"El León\" debido a su estilo de conducción agresiva?', 3, 'Ayrton Senna', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(104, 28, '¿Qué piloto fue apodado \"El León\" debido a su estilo de conducción agresiva?', 28, 'Nigel Mansell', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(105, 51, '¿Qué piloto fue el primero en superar las 300 carreras en la Fórmula 1?', 1, 'Kimi Raikkonen', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(106, 51, '¿Qué piloto fue el primero en superar las 300 carreras en la Fórmula 1?', 2, 'Michael Schumacher', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(107, 51, '¿Qué piloto fue el primero en superar las 300 carreras en la Fórmula 1?', 3, 'Fernando Alonso', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(108, 51, '¿Qué piloto fue el primero en superar las 300 carreras en la Fórmula 1?', 51, 'Rubens Barrichello', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(109, 29, '¿Qué piloto se convirtió en el campeón mundial de Fórmula 1 más joven?', 1, 'Max Verstappen', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(110, 29, '¿Qué piloto se convirtió en el campeón mundial de Fórmula 1 más joven?', 2, 'Michael Schumacher', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(111, 29, '¿Qué piloto se convirtió en el campeón mundial de Fórmula 1 más joven?', 3, 'Lewis Hamilton', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(112, 29, '¿Qué piloto se convirtió en el campeón mundial de Fórmula 1 más joven?', 29, 'Sebastian Vettel', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(113, 30, '¿En qué año debutó el equipo Haas en la Fórmula 1?', 1, '2019', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(114, 30, '¿En qué año debutó el equipo Haas en la Fórmula 1?', 2, '2015', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(115, 30, '¿En qué año debutó el equipo Haas en la Fórmula 1?', 3, '2017', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(116, 30, '¿En qué año debutó el equipo Haas en la Fórmula 1?', 30, '2016', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(117, 31, '¿En qué circuito se celebró el último Gran Premio de Europa en 2012?', 1, 'Circuito Nazionale Monza (Italia)', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(118, 31, '¿En qué circuito se celebró el último Gran Premio de Europa en 2012?', 2, 'Circuito de Silverstone (Reino Unido)', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(119, 31, '¿En qué circuito se celebró el último Gran Premio de Europa en 2012?', 3, 'Circuito de Hockenheim (Alemania)', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(120, 31, '¿En qué circuito se celebró el último Gran Premio de Europa en 2012?', 31, 'Circuito urbano de Valencia (España)', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(121, 52, '¿Qué piloto tiene el récord de más victorias sin haber ganado un campeonato mundial?', 1, 'Felipe Massa', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(122, 52, '¿Qué piloto tiene el récord de más victorias sin haber ganado un campeonato mundial?', 2, 'Rubens Barrichello', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(123, 52, '¿Qué piloto tiene el récord de más victorias sin haber ganado un campeonato mundial?', 3, 'David Coulthard', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(124, 52, '¿Qué piloto tiene el récord de más victorias sin haber ganado un campeonato mundial?', 52, 'Stirling Moss', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(125, 53, '¿En qué año se introdujo el sistema de \"halo\" para la protección de la cabeza de los pilotos en Fórmula 1?', 1, '2020', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(126, 53, '¿En qué año se introdujo el sistema de \"halo\" para la protección de la cabeza de los pilotos en Fórmula 1?', 2, '2019', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(127, 53, '¿En qué año se introdujo el sistema de \"halo\" para la protección de la cabeza de los pilotos en Fórmula 1?', 3, '2017', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(128, 53, '¿En qué año se introdujo el sistema de \"halo\" para la protección de la cabeza de los pilotos en Fórmula 1?', 53, '2018', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(129, 32, '¿Qué piloto austriaco ganó tres campeonatos mundiales de Fórmula 1?', 1, 'Jochen Rindt', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(130, 32, '¿Qué piloto austriaco ganó tres campeonatos mundiales de Fórmula 1?', 2, 'Helmut Marko', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(131, 32, '¿Qué piloto austriaco ganó tres campeonatos mundiales de Fórmula 1?', 3, 'Alex Wurz', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(132, 32, '¿Qué piloto austriaco ganó tres campeonatos mundiales de Fórmula 1?', 32, 'Niki Lauda', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(133, 54, '¿En qué año se introdujo por primera vez el sistema de penalizaciones por tiempo en la Fórmula 1 para reemplazar las penalizaciones en parrilla?', 1, '1993', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(134, 54, '¿En qué año se introdujo por primera vez el sistema de penalizaciones por tiempo en la Fórmula 1 para reemplazar las penalizaciones en parrilla?', 2, '1995', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(135, 54, '¿En qué año se introdujo por primera vez el sistema de penalizaciones por tiempo en la Fórmula 1 para reemplazar las penalizaciones en parrilla?', 3, '1996', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(136, 54, '¿En qué año se introdujo por primera vez el sistema de penalizaciones por tiempo en la Fórmula 1 para reemplazar las penalizaciones en parrilla?', 54, '1994', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(137, 33, '¿Qué piloto brasileño es conocido como \"El Maestro\"?', 1, 'Ayrton Senna', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(138, 33, '¿Qué piloto brasileño es conocido como \"El Maestro\"?', 2, 'Felipe Massa', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(139, 33, '¿Qué piloto brasileño es conocido como \"El Maestro\"?', 3, 'Rubens Barrichello', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(140, 33, '¿Qué piloto brasileño es conocido como \"El Maestro\"?', 33, 'Emerson Fittipaldi', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(141, 9, '¿En qué año ganó Lewis Hamilton su primer campeonato mundial de Fórmula 1?', 1, '2009', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(142, 9, '¿En qué año ganó Lewis Hamilton su primer campeonato mundial de Fórmula 1?', 2, '2007', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(143, 9, '¿En qué año ganó Lewis Hamilton su primer campeonato mundial de Fórmula 1?', 3, '2010', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(144, 9, '¿En qué año ganó Lewis Hamilton su primer campeonato mundial de Fórmula 1?', 9, '2008', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(145, 55, '¿En qué año se celebró el primer Gran Premio de Fórmula 1 en China?', 1, '2005', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(146, 55, '¿En qué año se celebró el primer Gran Premio de Fórmula 1 en China?', 2, '2003', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(147, 55, '¿En qué año se celebró el primer Gran Premio de Fórmula 1 en China?', 3, '2006', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(148, 55, '¿En qué año se celebró el primer Gran Premio de Fórmula 1 en China?', 55, '2004', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(151, 56, '¿En qué año se celebró el primer Gran Premio de Fórmula 1 en Bahrein?', 1, '2002', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(152, 56, '¿En qué año se celebró el primer Gran Premio de Fórmula 1 en Bahrein?', 2, '2005', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(153, 56, '¿En qué año se celebró el primer Gran Premio de Fórmula 1 en Bahrein?', 3, '2003', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(154, 56, '¿En qué año se celebró el primer Gran Premio de Fórmula 1 en Bahrein?', 56, '2004', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(155, 10, '¿En qué año ganó Fernando Alonso su primer campeonato mundial de Fórmula 1 con Renault?', 1, '2003', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(156, 10, '¿En qué año ganó Fernando Alonso su primer campeonato mundial de Fórmula 1 con Renault?', 2, '2006', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(157, 10, '¿En qué año ganó Fernando Alonso su primer campeonato mundial de Fórmula 1 con Renault?', 3, '2004', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(158, 10, '¿En qué año ganó Fernando Alonso su primer campeonato mundial de Fórmula 1 con Renault?', 10, '2005', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(159, 11, '¿Quién es el único piloto brasileño en ganar el Gran Premio de Mónaco en cinco ocasiones?', 1, 'Rubens Barrichello', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(160, 11, '¿Quién es el único piloto brasileño en ganar el Gran Premio de Mónaco en cinco ocasiones?', 2, 'Emerson Fittipaldi', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(161, 11, '¿Quién es el único piloto brasileño en ganar el Gran Premio de Mónaco en cinco ocasiones?', 3, 'Nelson Piquet', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(162, 11, '¿Quién es el único piloto brasileño en ganar el Gran Premio de Mónaco en cinco ocasiones?', 11, 'Ayrton Senna', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(163, 34, '¿Quién fue el primer brasileño en ganar un Gran Premio de Fórmula 1?', 1, 'Rubens Barrichello', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(164, 34, '¿Quién fue el primer brasileño en ganar un Gran Premio de Fórmula 1?', 2, 'Ayrton Senna', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(165, 34, '¿Quién fue el primer brasileño en ganar un Gran Premio de Fórmula 1?', 3, 'Nelson Piquet', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(166, 34, '¿Quién fue el primer brasileño en ganar un Gran Premio de Fórmula 1?', 34, 'Emerson Fittipaldi', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(167, 35, '¿Qué piloto ganó el Gran Premio de Europa en 2008 en Valencia?', 1, 'Jenson Button', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(168, 35, '¿Qué piloto ganó el Gran Premio de Europa en 2008 en Valencia?', 2, 'Kimi Raikkonen', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(169, 35, '¿Qué piloto ganó el Gran Premio de Europa en 2008 en Valencia?', 3, 'Lewis Hamilton', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(170, 35, '¿Qué piloto ganó el Gran Premio de Europa en 2008 en Valencia?', 35, 'Felipe Massa', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(171, 36, '¿Qué piloto fue el compañero de equipo de Fernando Alonso en Renault en la temporada 2008 de Fórmula 1?', 1, 'Jenson Button', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(172, 36, '¿Qué piloto fue el compañero de equipo de Fernando Alonso en Renault en la temporada 2008 de Fórmula 1?', 2, 'Giancarlo Fisichella', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(173, 36, '¿Qué piloto fue el compañero de equipo de Fernando Alonso en Renault en la temporada 2008 de Fórmula 1?', 3, 'Jarno Trulli', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(174, 36, '¿Qué piloto fue el compañero de equipo de Fernando Alonso en Renault en la temporada 2008 de Fórmula 1?', 36, 'Nelson Piquet Jr', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(175, 12, '¿Quién fue el campeón mundial de Fórmula 1 en la temporada 2018?', 1, 'Max Verstappen', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(176, 12, '¿Quién fue el campeón mundial de Fórmula 1 en la temporada 2018?', 2, 'Kimi Räikkönen', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(177, 12, '¿Quién fue el campeón mundial de Fórmula 1 en la temporada 2018?', 3, 'Sebastian Vettel', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(178, 12, '¿Quién fue el campeón mundial de Fórmula 1 en la temporada 2018?', 12, 'Lewis Hamilton', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(179, 37, '¿Quién ganó el Gran Premio de Bélgica de Fórmula 1 en 2021?', 1, 'Daniel Ricciardo', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(180, 37, '¿Quién ganó el Gran Premio de Bélgica de Fórmula 1 en 2021?', 2, 'Lewis Hamilton', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(181, 37, '¿Quién ganó el Gran Premio de Bélgica de Fórmula 1 en 2021?', 3, 'George Russell', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(182, 37, '¿Quién ganó el Gran Premio de Bélgica de Fórmula 1 en 2021?', 37, 'Max Verstappen', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(183, 57, '¿Qué piloto logró la pole position en el Gran Premio de Mónaco de 2021?', 1, 'Carlos Sainz', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(184, 57, '¿Qué piloto logró la pole position en el Gran Premio de Mónaco de 2021?', 2, 'Valtteri Bottas', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(185, 57, '¿Qué piloto logró la pole position en el Gran Premio de Mónaco de 2021?', 3, 'Max Verstappen', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(186, 57, '¿Qué piloto logró la pole position en el Gran Premio de Mónaco de 2021?', 57, 'Charles Leclerc', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(187, 38, '¿Qué piloto ganó el Gran Premio de Mónaco de Fórmula 1 en 2018?', 1, 'Valtteri Bottas', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(188, 38, '¿Qué piloto ganó el Gran Premio de Mónaco de Fórmula 1 en 2018?', 2, 'Lewis Hamilton', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(189, 38, '¿Qué piloto ganó el Gran Premio de Mónaco de Fórmula 1 en 2018?', 3, 'Sebastian Vettel', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(190, 38, '¿Qué piloto ganó el Gran Premio de Mónaco de Fórmula 1 en 2018?', 38, 'Daniel Ricciardo', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(191, 39, '¿Quién ganó el Gran Premio de Azerbaiyán de Fórmula 1 en 2021?', 1, 'Charles Leclerc', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(192, 39, '¿Quién ganó el Gran Premio de Azerbaiyán de Fórmula 1 en 2021?', 2, 'Pierre Gasly', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(193, 39, '¿Quién ganó el Gran Premio de Azerbaiyán de Fórmula 1 en 2021?', 3, 'Sebastian Vettel', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(194, 39, '¿Quién ganó el Gran Premio de Azerbaiyán de Fórmula 1 en 2021?', 39, 'Sergio Pérez', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(195, 40, '¿Quién ganó el Gran Premio de Hungría de Fórmula 1 en 2020?', 1, 'Sebastian Vettel', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(196, 40, '¿Quién ganó el Gran Premio de Hungría de Fórmula 1 en 2020?', 2, 'Valtteri Bottas', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(197, 40, '¿Quién ganó el Gran Premio de Hungría de Fórmula 1 en 2020?', 3, 'Max Verstappen', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(198, 40, '¿Quién ganó el Gran Premio de Hungría de Fórmula 1 en 2020?', 40, 'Lewis Hamilton', 'Medio');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(199, 13, '¿Quién es conocido como \"El Kaiser\"?', 1, 'Nelson Piquet', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(200, 13, '¿Quién es conocido como \"El Kaiser\"?', 2, 'Ayrton Senna', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(201, 13, '¿Quién es conocido como \"El Kaiser\"?', 3, 'Sebastian Vettel', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(202, 13, '¿Quién es conocido como \"El Kaiser\"?', 13, 'Michael Schumacher', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(203, 14, '¿Qué piloto de Fórmula 1 es conocido como \"The Iceman\"?', 1, 'Jacques Villeneuve', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(204, 14, '¿Qué piloto de Fórmula 1 es conocido como \"The Iceman\"?', 2, 'Alain Prost', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(205, 14, '¿Qué piloto de Fórmula 1 es conocido como \"The Iceman\"?', 3, 'Mika Häkkinen', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(206, 14, '¿Qué piloto de Fórmula 1 es conocido como \"The Iceman\"?', 14, 'Kimi Räikkönen', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(207, 58, '¿Cuál es el nombre del equipo de Fórmula 1 con sede en Faenza, Italia?', 1, 'Haas', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(208, 58, '¿Cuál es el nombre del equipo de Fórmula 1 con sede en Faenza, Italia?', 2, 'Ferrari', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(209, 58, '¿Cuál es el nombre del equipo de Fórmula 1 con sede en Faenza, Italia?', 3, 'Sauber', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(210, 58, '¿Cuál es el nombre del equipo de Fórmula 1 con sede en Faenza, Italia?', 58, 'AlphaTauri', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(211, 15, '¿En qué país nació el piloto de Fórmula 1 Sebastian Vettel?', 1, 'Italia', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(212, 15, '¿En qué país nació el piloto de Fórmula 1 Sebastian Vettel?', 2, 'Noruega', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(213, 15, '¿En qué país nació el piloto de Fórmula 1 Sebastian Vettel?', 3, 'Francia', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(214, 15, '¿En qué país nació el piloto de Fórmula 1 Sebastian Vettel?', 15, 'Alemania', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(215, 59, '¿Quién es conocido como \"El Rey del Espolón\" en la Fórmula 1?', 1, 'Jarno Trulli', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(216, 59, '¿Quién es conocido como \"El Rey del Espolón\" en la Fórmula 1?', 2, 'Emerson Fittipaldi', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(217, 59, '¿Quién es conocido como \"El Rey del Espolón\" en la Fórmula 1?', 3, 'Ayrton Senna', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(218, 59, '¿Quién es conocido como \"El Rey del Espolón\" en la Fórmula 1?', 59, 'Juan Manuel Fangio', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(219, 16, '¿Qué marca de neumáticos es el proveedor oficial de la Fórmula 1 desde 2011?', 1, 'Hankook', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(220, 16, '¿Qué marca de neumáticos es el proveedor oficial de la Fórmula 1 desde 2011?', 2, 'Michelin', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(221, 16, '¿Qué marca de neumáticos es el proveedor oficial de la Fórmula 1 desde 2011?', 3, 'Bridgestone', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(222, 16, '¿Qué marca de neumáticos es el proveedor oficial de la Fórmula 1 desde 2011?', 16, 'Pirelli', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(223, 17, '¿En qué país nació el piloto de Fórmula 1 Fernando Alonso?', 1, 'Brasil', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(224, 17, '¿En qué país nació el piloto de Fórmula 1 Fernando Alonso?', 2, 'Francia', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(225, 17, '¿En qué país nació el piloto de Fórmula 1 Fernando Alonso?', 3, 'Italia', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(226, 17, '¿En qué país nació el piloto de Fórmula 1 Fernando Alonso?', 17, 'España', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(227, 60, '¿Qué piloto de Fórmula 1 es conocido como \"El Príncipe de Mónaco\"?', 1, 'Andrea Chiesa', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(228, 60, '¿Qué piloto de Fórmula 1 es conocido como \"El Príncipe de Mónaco\"?', 2, 'Olivier Beretta', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(229, 60, '¿Qué piloto de Fórmula 1 es conocido como \"El Príncipe de Mónaco\"?', 3, 'Louis Chiron', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(230, 60, '¿Qué piloto de Fórmula 1 es conocido como \"El Príncipe de Mónaco\"?', 60, 'Charles Leclerc', 'Dificil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(231, 18, '¿Qué piloto alemán ganó siete campeonatos mundiales de Fórmula 1?', 1, 'Mick Schumacher', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(232, 18, '¿Qué piloto alemán ganó siete campeonatos mundiales de Fórmula 1?', 2, 'Ralf Schumacher', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(233, 18, '¿Qué piloto alemán ganó siete campeonatos mundiales de Fórmula 1?', 3, 'Sebastian Vettel', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(234, 18, '¿Qué piloto alemán ganó siete campeonatos mundiales de Fórmula 1?', 18, 'Michael Schumacher', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(235, 19, '¿Cuál es el nombre del equipo de Fórmula 1 que fue comprado por Lawrence Stroll en 2018 y posteriormente se convirtió en Aston Martin Racing?', 1, 'Force India', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(236, 19, '¿Cuál es el nombre del equipo de Fórmula 1 que fue comprado por Lawrence Stroll en 2018 y posteriormente se convirtió en Aston Martin Racing?', 2, 'Renault', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(237, 19, '¿Cuál es el nombre del equipo de Fórmula 1 que fue comprado por Lawrence Stroll en 2018 y posteriormente se convirtió en Aston Martin Racing?', 3, 'Alfa Romeo', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(238, 19, '¿Cuál es el nombre del equipo de Fórmula 1 que fue comprado por Lawrence Stroll en 2018 y posteriormente se convirtió en Aston Martin Racing?', 19, 'Racing Point', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(239, 20, '¿En qué país nació el piloto de Fórmula 1 Max Verstappen?', 1, 'Suecia', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(240, 20, '¿En qué país nació el piloto de Fórmula 1 Max Verstappen?', 2, 'Austria', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(241, 20, '¿En qué país nació el piloto de Fórmula 1 Max Verstappen?', 3, 'Dinamarca', 'Facil');
INSERT INTO `quiz` (`id`, `id_pregunta`, `pregunta`, `id_respuesta`, `respuesta`, `nivel`) VALUES(242, 20, '¿En qué país nació el piloto de Fórmula 1 Max Verstappen?', 20, 'Países Bajos', 'Facil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ranking_guess`
--

CREATE TABLE `ranking_guess` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `aciertos` int(11) NOT NULL,
  `tiempo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ranking_guess`
--

INSERT INTO `ranking_guess` (`id`, `user`, `aciertos`, `tiempo`) VALUES(5, 'TrackTitan', 4, 36);
INSERT INTO `ranking_guess` (`id`, `user`, `aciertos`, `tiempo`) VALUES(6, 'BoxBox', 4, 40);
INSERT INTO `ranking_guess` (`id`, `user`, `aciertos`, `tiempo`) VALUES(7, 'Verstappen13', 0, 21);
INSERT INTO `ranking_guess` (`id`, `user`, `aciertos`, `tiempo`) VALUES(9, 'SpeedFreak2024', 6, 41);
INSERT INTO `ranking_guess` (`id`, `user`, `aciertos`, `tiempo`) VALUES(10, 'ApexMaster', 5, 56);
INSERT INTO `ranking_guess` (`id`, `user`, `aciertos`, `tiempo`) VALUES(11, 'GrandPrixGuru', 3, 55);
INSERT INTO `ranking_guess` (`id`, `user`, `aciertos`, `tiempo`) VALUES(12, 'PitStopMaster', 4, 26);
INSERT INTO `ranking_guess` (`id`, `user`, `aciertos`, `tiempo`) VALUES(13, 'TurboCharger', 6, 38);
INSERT INTO `ranking_guess` (`id`, `user`, `aciertos`, `tiempo`) VALUES(14, 'alonsista', 2, 27);
INSERT INTO `ranking_guess` (`id`, `user`, `aciertos`, `tiempo`) VALUES(15, 'kuki', 5, 47);
INSERT INTO `ranking_guess` (`id`, `user`, `aciertos`, `tiempo`) VALUES(16, 'JaimeAlguersuariFan', 3, 44);
INSERT INTO `ranking_guess` (`id`, `user`, `aciertos`, `tiempo`) VALUES(17, 'SpeedDemonF1', 5, 59);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ranking_quiz`
--

CREATE TABLE `ranking_quiz` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `aciertos` int(255) NOT NULL,
  `tiempo` int(255) NOT NULL,
  `nivel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ranking_quiz`
--

INSERT INTO `ranking_quiz` (`id`, `user`, `aciertos`, `tiempo`, `nivel`) VALUES(3, 'TrackTitan', 7, 61, 'medio');
INSERT INTO `ranking_quiz` (`id`, `user`, `aciertos`, `tiempo`, `nivel`) VALUES(4, 'Alonsista', 9, 45, 'facil');
INSERT INTO `ranking_quiz` (`id`, `user`, `aciertos`, `tiempo`, `nivel`) VALUES(5, 'Verstappen13', 1, 56, 'facil');
INSERT INTO `ranking_quiz` (`id`, `user`, `aciertos`, `tiempo`, `nivel`) VALUES(6, 'SpeedFreak2024', 5, 40, 'dificil');
INSERT INTO `ranking_quiz` (`id`, `user`, `aciertos`, `tiempo`, `nivel`) VALUES(7, 'ApexMaster', 7, 39, 'medio');
INSERT INTO `ranking_quiz` (`id`, `user`, `aciertos`, `tiempo`, `nivel`) VALUES(8, 'RaceTrack', 9, 30, 'medio');
INSERT INTO `ranking_quiz` (`id`, `user`, `aciertos`, `tiempo`, `nivel`) VALUES(9, 'RaceTrack', 7, 32, 'dificil');
INSERT INTO `ranking_quiz` (`id`, `user`, `aciertos`, `tiempo`, `nivel`) VALUES(10, 'RaceTrack', 10, 28, 'facil');
INSERT INTO `ranking_quiz` (`id`, `user`, `aciertos`, `tiempo`, `nivel`) VALUES(11, 'GrandPrixGuru', 3, 59, 'dificil');
INSERT INTO `ranking_quiz` (`id`, `user`, `aciertos`, `tiempo`, `nivel`) VALUES(12, 'PitStopMaster', 9, 42, 'facil');
INSERT INTO `ranking_quiz` (`id`, `user`, `aciertos`, `tiempo`, `nivel`) VALUES(13, 'PitStopMaster', 4, 16, 'dificil');
INSERT INTO `ranking_quiz` (`id`, `user`, `aciertos`, `tiempo`, `nivel`) VALUES(14, 'TurboCharger', 6, 33, 'dificil');
INSERT INTO `ranking_quiz` (`id`, `user`, `aciertos`, `tiempo`, `nivel`) VALUES(15, 'TurboCharger', 6, 21, 'facil');
INSERT INTO `ranking_quiz` (`id`, `user`, `aciertos`, `tiempo`, `nivel`) VALUES(16, 'kuki', 7, 41, 'medio');
INSERT INTO `ranking_quiz` (`id`, `user`, `aciertos`, `tiempo`, `nivel`) VALUES(17, 'JaimeAlguersuariFan', 9, 38, 'facil');
INSERT INTO `ranking_quiz` (`id`, `user`, `aciertos`, `tiempo`, `nivel`) VALUES(18, 'SpeedDemonF1', 2, 16, 'facil');
INSERT INTO `ranking_quiz` (`id`, `user`, `aciertos`, `tiempo`, `nivel`) VALUES(19, 'SpeedDemonF1', 0, 16, 'medio');
INSERT INTO `ranking_quiz` (`id`, `user`, `aciertos`, `tiempo`, `nivel`) VALUES(20, 'SpeedDemonF1', 7, 21, 'dificil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `select_fav`
--

CREATE TABLE `select_fav` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `escuderia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `select_fav`
--

INSERT INTO `select_fav` (`id`, `nombre`, `apellido`, `escuderia`) VALUES(1, 'Max', 'Verstappen', 'Red Bull');
INSERT INTO `select_fav` (`id`, `nombre`, `apellido`, `escuderia`) VALUES(2, ' Sergio', 'Perez', 'Red Bull');
INSERT INTO `select_fav` (`id`, `nombre`, `apellido`, `escuderia`) VALUES(3, 'Charles', 'Leclerc', 'Ferrari');
INSERT INTO `select_fav` (`id`, `nombre`, `apellido`, `escuderia`) VALUES(4, 'Carlos', 'Sainz', 'Ferrari');
INSERT INTO `select_fav` (`id`, `nombre`, `apellido`, `escuderia`) VALUES(5, 'Lando', 'Norris', 'McLaren');
INSERT INTO `select_fav` (`id`, `nombre`, `apellido`, `escuderia`) VALUES(6, 'Oscar', 'Piastri', 'McLaren');
INSERT INTO `select_fav` (`id`, `nombre`, `apellido`, `escuderia`) VALUES(7, 'Lance', 'Stroll', 'Aston Martin');
INSERT INTO `select_fav` (`id`, `nombre`, `apellido`, `escuderia`) VALUES(8, 'Fernando', 'Alonso', 'Aston Martin');
INSERT INTO `select_fav` (`id`, `nombre`, `apellido`, `escuderia`) VALUES(9, 'Lewis', 'Hamilton', 'Mercedes');
INSERT INTO `select_fav` (`id`, `nombre`, `apellido`, `escuderia`) VALUES(10, 'George', 'Russell', 'Mercedes');
INSERT INTO `select_fav` (`id`, `nombre`, `apellido`, `escuderia`) VALUES(11, 'Kevin', 'Magnussen', 'Haas');
INSERT INTO `select_fav` (`id`, `nombre`, `apellido`, `escuderia`) VALUES(12, 'Nico', 'Hulkenberg', 'Haas');
INSERT INTO `select_fav` (`id`, `nombre`, `apellido`, `escuderia`) VALUES(13, 'Valtteri', 'Bottas', 'Sauber');
INSERT INTO `select_fav` (`id`, `nombre`, `apellido`, `escuderia`) VALUES(14, 'Guanyu', 'Zhou', 'Sauber');
INSERT INTO `select_fav` (`id`, `nombre`, `apellido`, `escuderia`) VALUES(15, 'Esteban', 'Ocon', 'Alpine');
INSERT INTO `select_fav` (`id`, `nombre`, `apellido`, `escuderia`) VALUES(16, 'Pierre', 'Gasly', 'Alpine');
INSERT INTO `select_fav` (`id`, `nombre`, `apellido`, `escuderia`) VALUES(17, 'Yuki', 'Tsunoda', 'RB');
INSERT INTO `select_fav` (`id`, `nombre`, `apellido`, `escuderia`) VALUES(18, 'Daniel', 'Ricciardo', 'RB');
INSERT INTO `select_fav` (`id`, `nombre`, `apellido`, `escuderia`) VALUES(19, 'Alex', 'Albon', 'Williams');
INSERT INTO `select_fav` (`id`, `nombre`, `apellido`, `escuderia`) VALUES(20, 'Logan', 'Sargeant', 'Williams');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `piloto` varchar(255) NOT NULL,
  `escuderia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `password`, `piloto`, `escuderia`) VALUES(20, 'Ivan', '$2y$10$8xbr7li0CI/G5gAQ7WvhsulTI13eMbPzeeHo6nnY96xU1MU310Trq', 'Fernando Alonso', 'HRT');
INSERT INTO `usuarios` (`id`, `nombre`, `password`, `piloto`, `escuderia`) VALUES(21, 'Alejandro', '$2y$10$zXLBoTsAJSk2LeoP9yZPk.oZid50P/cHqp26aWGuKRTUwSybApZiy', 'Lewis Hamilton', 'Aston Martin');
INSERT INTO `usuarios` (`id`, `nombre`, `password`, `piloto`, `escuderia`) VALUES(33, 'TurboRacer', '$2y$10$L6hy/vO.wxl.KGrBmL.5JebbIgVeybwilsMyWL3rpk1a7eDhzEt0a', 'Lewis Hamilton', 'Mercedes');
INSERT INTO `usuarios` (`id`, `nombre`, `password`, `piloto`, `escuderia`) VALUES(34, 'PitStopMaster', '$2y$10$dmZVS32HYbJCGNK650niv.EqH6OPAEQZh2383H1NC27hUkB.5vABu', 'Bruno Senna', 'Williams');
INSERT INTO `usuarios` (`id`, `nombre`, `password`, `piloto`, `escuderia`) VALUES(35, 'GranPrixGuru', '$2y$10$Hen/AXoUg2m4Zz/gL/wMLue6Ga1HwFZJPo/L5cl.h/4qAJPPBORLS', 'Lando Norris', 'McLaren');
INSERT INTO `usuarios` (`id`, `nombre`, `password`, `piloto`, `escuderia`) VALUES(36, 'Alonsista', '$2y$10$QnuZ.oI3q7FFgf35jQGUMeK/45Ody8Zs7ZiPoUII8ROgij1zap61W', 'Fernando Alonso', 'Aston Martin');
INSERT INTO `usuarios` (`id`, `nombre`, `password`, `piloto`, `escuderia`) VALUES(37, 'TrackTitan', '$2y$10$CXeq/67CibQeP0reHBPs0uVkT2esFVKplDg8ere4EuI34WyDqftKe', 'Pedro de la Rosa', 'Force India');
INSERT INTO `usuarios` (`id`, `nombre`, `password`, `piloto`, `escuderia`) VALUES(38, 'BoxBox', '$2y$10$HztFSXXDjUIXQ/Hc8rhm6OSFWFVE7CGRj9SU8QUZPd/.JBV71ZWJG', 'Sebastian Vettel', 'Ferrari');
INSERT INTO `usuarios` (`id`, `nombre`, `password`, `piloto`, `escuderia`) VALUES(39, 'luis', '$2y$10$9e5qZkprM.G1QhtmOgAHv.TQmTq9No3lEHweka5HbShes2R2keMY6', 'Fernando Alonso', 'HRT');
INSERT INTO `usuarios` (`id`, `nombre`, `password`, `piloto`, `escuderia`) VALUES(40, 'RaceTrack', '$2y$10$nS9MzHsdDyiwigBA1hSyhOWmwrHGa.ggEOuS9ovWBLyHME.sQ5.VW', 'Ralf Schumacher', 'HRT');
INSERT INTO `usuarios` (`id`, `nombre`, `password`, `piloto`, `escuderia`) VALUES(41, 'Verstappen13', '$2y$10$mOvHmDhqFnNboKYc18zVo.Qk2KWhI4yt/Vw7HDQwHIrejaYY2Qy6u', 'Max Verstappen', 'Red Bull');
INSERT INTO `usuarios` (`id`, `nombre`, `password`, `piloto`, `escuderia`) VALUES(42, 'SpeedFreak2024', '$2y$10$d/ISGuGaQ6ICaa5AmBtYaOCUQA9Dp/GBxwMX5UzoSNKYIuauKDeBy', 'Alex Yoong', 'Sauber');
INSERT INTO `usuarios` (`id`, `nombre`, `password`, `piloto`, `escuderia`) VALUES(43, 'ApexMaster', '$2y$10$NqLUqLKwFVU4v7T2plA9peXLNcm.Wieq7M.C1zjoFip2b9.ubWBe6', 'Rubens Barrichello', 'Virgin');
INSERT INTO `usuarios` (`id`, `nombre`, `password`, `piloto`, `escuderia`) VALUES(44, 'TurboCharger', '$2y$10$kiFNPYG/jQ6StxQrYEi8BO9dYrb5SBJ2Iby0.QakYXCRcm2imwake', 'Jenson Button', 'Footwork');
INSERT INTO `usuarios` (`id`, `nombre`, `password`, `piloto`, `escuderia`) VALUES(45, 'kuki', '$2y$10$CLBuc7FbecuLmcMlHcNObuMXyBlBqRZYCmBdbdDJMxdEI8iCfw7zm', 'Fernando Alonso', 'Mercedes');
INSERT INTO `usuarios` (`id`, `nombre`, `password`, `piloto`, `escuderia`) VALUES(46, 'JaimeAlguersuariFan', '$2y$10$cBI5zqWk5JP4zirCxTVCKukq401eiyUOIfSvm7HjzgKKOy/XUx8t6', 'Jaime Alguersuari', 'Toro Rosso');
INSERT INTO `usuarios` (`id`, `nombre`, `password`, `piloto`, `escuderia`) VALUES(47, 'SpeedDemonF1', '$2y$10$r5IeXpF5UK/aHSTVT2mJkebmLCHxBmh2HTkg989jwUnrmBY8kr8tq', 'Fernando Alonso', 'Sauber');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `escuderias`
--
ALTER TABLE `escuderias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `guess_who`
--
ALTER TABLE `guess_who`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pilotos_info`
--
ALTER TABLE `pilotos_info`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `piloto_escuderia`
--
ALTER TABLE `piloto_escuderia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ranking_guess`
--
ALTER TABLE `ranking_guess`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ranking_quiz`
--
ALTER TABLE `ranking_quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `select_fav`
--
ALTER TABLE `select_fav`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `escuderias`
--
ALTER TABLE `escuderias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `guess_who`
--
ALTER TABLE `guess_who`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `pilotos_info`
--
ALTER TABLE `pilotos_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT de la tabla `piloto_escuderia`
--
ALTER TABLE `piloto_escuderia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=295;

--
-- AUTO_INCREMENT de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT de la tabla `ranking_guess`
--
ALTER TABLE `ranking_guess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `ranking_quiz`
--
ALTER TABLE `ranking_quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `select_fav`
--
ALTER TABLE `select_fav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
