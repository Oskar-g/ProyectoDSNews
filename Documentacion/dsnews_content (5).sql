-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2017 a las 09:10:57
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dsnews_content`
--
CREATE DATABASE IF NOT EXISTS `dsnews_content` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `dsnews_content`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `guid` int(11) NOT NULL,
  `link` text COLLATE utf8_spanish_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `content` text COLLATE utf8_spanish_ci NOT NULL,
  `pub_date` date NOT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `keywords` text COLLATE utf8_spanish_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `article`
--

INSERT INTO `article` (`guid`, `link`, `title`, `content`, `pub_date`, `description`, `keywords`, `user_id`, `channel_id`, `section_id`) VALUES
(3, 'www.elmundo.es', 'COREA INVADE COREA', 'gfhwrueghiquwerhgiuqhwegriuohouihwrouig', '2017-06-09', 'pos eso, nada mas que decir', 'corea invade', 2, 1, 1),
(4, 'fqwyegfyugfeyqw', 'PLATA LA MAS FEA', '<p>fgjwqefiygwqeifeuwgqwieuf</p>', '2017-06-03', 'pos es', 'plata', 1, 1, 1),
(13, 'fqwyegfyugfeyqw', 'PLATA LA MAS GUAPA', '<p>fgjwqefiygwqeifeuwgqwieuf</p>', '2000-12-31', 'pos es', 'plata', 1, 1, 1),
(14, 'dasdfgfafgadfsg', 'adgfdfgadfgadfg', '<p>gadsfgfdgdfgasdfgadfgadsfgad</p>', '2006-06-23', 'dfgsdfgsdfg', 'gadrg', 2, 1, 1),
(15, 'noticia de jesus', 'noticia de jesus', '<p>ewfihqweoiugfhqwoui&ntilde;erhgo&ntilde;uqwheg&ntilde;o</p>', '2017-06-09', 'ninguna', 'jesus', 3, 1, 1),
(17, 'dfwiuohfow', 'segunda noticia de jesus', '<p>qwefqwefqwefwqef</p>', '2017-06-01', '2da venida', 'MILAGRO', 3, 1, 1),
(18, '3ra noticia de jesus', 'probando el error de datos', '<p>fqwefqwefqwefqwef</p>', '2017-06-01', 'qwerqwerqwerqwer', 'wdfqwf', 3, 1, 1),
(19, 'ghwihjywegfw', 'DIA VIERNES', '<p>fwqegfqwetqwetqwetqwetqwetqwetqwet</p>', '0006-06-23', 'rehgiigiruqg', 'viernes', 3, 1, 1),
(20, 'ufhweiygfyuw', 'PLATA LA MAS NORML', '<p>rgiwehargiuhergh</p>', '2006-10-01', 'dhiuewfgyfeyw', 'SDGFWG', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `channel`
--

DROP TABLE IF EXISTS `channel`;
CREATE TABLE `channel` (
  `channel_id` int(11) NOT NULL,
  `link` text COLLATE utf8_spanish_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `last_build_date` date NOT NULL,
  `language` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `copyright` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `title_image` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `url_image` text COLLATE utf8_spanish_ci NOT NULL,
  `link_image` text COLLATE utf8_spanish_ci NOT NULL,
  `width_image` int(4) NOT NULL,
  `height_image` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `channel`
--

INSERT INTO `channel` (`channel_id`, `link`, `title`, `last_build_date`, `language`, `description`, `copyright`, `title_image`, `url_image`, `link_image`, `width_image`, `height_image`) VALUES
(1, 'http://elpais.com/', 'El pais', '2017-06-02', 'ES', 'Periodico el pais', 'Blablabla', 'rwighoiwerhgoñq', 'fghqwuioghfiuoqwrhgiu', 'efiohgwouehgruqwhrgh', 150, 150),
(2, 'http://www.elmundo.es', 'El mundo', '2017-06-05', 'ES', 'Periodico El Mundo', 'wfqwefwqefwqef', 'wqfwqefqwefqwe', 'fwqefqwefqwefqwf', 'qwefqwefqwefqwef', 150, 150),
(3, 'http://www.20minutos.es/', '20 minutos', '2017-06-05', 'ES', 'Periodico 20 minutos', 'fwuigfiwiqgeffi', 'fjqiowhfiuqhwiugfh', 'aerhgiuqewwrehqgui', 'fqwerhwreughuiqwerrh', 150, 150),
(4, 'http://www.larazon.es/', 'La Razon', '2017-06-05', 'ES', 'Periodico La Razon', 'giufiuwrtgqw3t', 'w2euihfguoi', 'wwrtqwtqw', 'ehghqwtqwt', 150, 150),
(5, 'http://www.publico.es/', 'Publico', '2017-06-05', 'ES', 'Periodico Publico', 'wefhiwqegfyigq', 'efyi', 'wqefhwhefiuwghfig', 'wfhwgqifgywegfy8', 150, 150),
(6, 'http://www.abc.es/', 'ABC', '2017-06-05', 'ES', 'Peridico ABC', 'wefiwgefygqwwguf', 'fqwefhuwifhui', 'wfihqwuefhqwughqwg', 'awdgfghqwwruliqguihqwr', 150, 150);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `url` text COLLATE utf8_spanish_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `tittle` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rss`
--

DROP TABLE IF EXISTS `rss`;
CREATE TABLE `rss` (
  `id` int(11) NOT NULL,
  `link` text COLLATE utf8_spanish_ci NOT NULL,
  `section_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `rss`
--

INSERT INTO `rss` (`id`, `link`, `section_id`) VALUES
(1, 'http://ep00.epimg.net/rss/elpais/portada.xml', 1),
(2, 'http://ep00.epimg.net/rss/deportes/portada.xml', 7),
(3, 'http://ep00.epimg.net/rss/cultura/television.xml', 8),
(4, 'http://estaticos.elmundo.es/elmundo/rss/economia.xml', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `section`
--

DROP TABLE IF EXISTS `section`;
CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `section`
--

INSERT INTO `section` (`id`, `name`, `description`) VALUES
(1, 'España', 'Seccion naccional'),
(2, 'Internacional', 'Seccion internacional'),
(3, 'Economia', 'Seccion economia'),
(4, 'Ciencia', 'Seccion ciencia'),
(5, 'Tecnologia', 'Seccion tecnologia'),
(6, 'Cultura', 'Seccion cultura'),
(7, 'Deportes', 'Seccion deportes'),
(8, 'Television', 'Seccion Television'),
(9, 'Sociedad', 'Seccion sociedad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `role`) VALUES
(1, 'jorge', 'd67326a22642a324aa1b0745f2f17abb', 'admin'),
(2, 'plata', 'e0b95c145bd9ef5d82e5a97f87f41a54', 'admin'),
(3, 'jesus', '110d46fcd978c24f306cd7fa23464d73', 'dios'),
(4, 'prueba', '81dc9bdb52d04dc20036dbd8313ed055', 'tuutamadre');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`guid`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `channel_id` (`channel_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indices de la tabla `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`channel_id`);

--
-- Indices de la tabla `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`);

--
-- Indices de la tabla `rss`
--
ALTER TABLE `rss`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indices de la tabla `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `article`
--
ALTER TABLE `article`
  MODIFY `guid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `channel`
--
ALTER TABLE `channel`
  MODIFY `channel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `rss`
--
ALTER TABLE `rss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `article_ibfk_2` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`channel_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `article_ibfk_3` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`guid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `rss`
--
ALTER TABLE `rss`
  ADD CONSTRAINT `rss_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `section` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
