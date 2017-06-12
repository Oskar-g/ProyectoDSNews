-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2017 a las 13:19:50
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dsnews_content`
DROP DATABASE IF EXISTS dsnews_content;
CREATE DATABASE IF NOT EXISTS `dsnews_content` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `dsnews_content`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles_desoft`
--

DROP TABLE IF EXISTS `articles_desoft`;
CREATE TABLE `articles_desoft` (
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
-- Volcado de datos para la tabla `articles_desoft`
--

INSERT INTO `articles_desoft` (`guid`, `link`, `title`, `content`, `pub_date`, `description`, `keywords`, `user_id`, `channel_id`, `section_id`) VALUES
(22, 'fasdasd', 'fasdasd', '<p>fasdasdasdasdasdasd</p>', '2017-06-10', 'fasdasdasd', 'asddfqweefq', 1, 1, 1),
(24, 'china china china ', 'chiquitina tina tinaaa', '<p><strong>asasfasd</strong></p>\r\n<p><em><strong>fasdasd</strong></em></p>', '2017-06-10', 'Chicles de la esterilidad ya a la venta', '', 2, 1, 2),
(27, 'fasdasdaaaa', 'fasdasd', '<p>gdafgdfdfghdhd</p>', '2017-06-10', 'hdfghdghd', '', 2, 1, 5),
(29, 'http://localhost:8080/DSNews/noticiasDSNews/2017-06-10/1/4', 'jorge', '<p>jorge</p>', '2017-06-10', 'jorge', 'jorge', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles_rss`
--

DROP TABLE IF EXISTS `articles_rss`;
CREATE TABLE `articles_rss` (
  `link` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `title` text COLLATE utf8_spanish_ci NOT NULL,
  `description` text COLLATE utf8_spanish_ci NOT NULL,
  `pub_date` date NOT NULL,
  `cover` text COLLATE utf8_spanish_ci NOT NULL,
  `rss_id` int(11) NOT NULL,
  `num_entry` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `articles_rss`
--

INSERT INTO `articles_rss` (`link`, `title`, `description`, `pub_date`, `cover`, `rss_id`, `num_entry`) VALUES
('http://deportes.elpais.com/deportes/2017/05/28/actualidad/1495988544_872256.html#?ref=rss&format=simple&link=link', 'Aquí no se rinde nadie', '\'¿Quién dijo rendirse?\' concentra una larga conversación entre Fernando Torres y Carlos Matallanas sobre fútbol y la ELA', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/05/28/actualidad/1495988544_872256_1495988762_miniatura_normal.jpg', 27, 280),
('http://deportes.elpais.com/deportes/2017/06/04/actualidad/1496568361_016479.html#?ref=rss&format=simple&link=link', 'La sorpresa perdida del viejo tenis', 'Toni Nadal relata desde París sus experiencias, en exclusiva, para los lectores de EL PAÍS', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/04/actualidad/1496568361_016479_1496606047_miniatura_normal.jpg', 27, 261),
('http://deportes.elpais.com/deportes/2017/06/04/actualidad/1496587736_243293.html#?ref=rss&format=simple&link=link', '¿El Madrid no existe?', 'Nos gusta pensar que quienes viven como si el fútbol no existiese, y creen que la Champions es un relato escrito sin contrastar si realmente pasó o es un rumor, fingen', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/04/actualidad/1496587736_243293_1496587908_miniatura_normal.jpg', 27, 262),
('http://deportes.elpais.com/deportes/2017/06/04/actualidad/1496589852_737965.html#?ref=rss&format=simple&link=link', 'Real Zidane Club de Fútbol', 'Ha logrado mucho más que dos Copas de Europa, una Liga, un Mundialito y una Supercopa Europea: ha hecho del vestuario su parroquia', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/04/actualidad/1496589852_737965_1496645144_miniatura_normal.jpg', 27, 260),
('http://deportes.elpais.com/deportes/2017/06/04/actualidad/1496596635_118171.html#?ref=rss&format=simple&link=link', 'No bastó con tres goles de Puskas', 'El Real Madrid solo ha perdido tres finales de Copa de Europa. La que más dolió fue la del Benfica en 1962', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/04/actualidad/1496596635_118171_1496596838_miniatura_normal.jpg', 27, 278),
('http://deportes.elpais.com/deportes/2017/06/04/actualidad/1496598560_371865.html#?ref=rss&format=simple&link=link', 'El nuevo ciclo del Real Madrid', 'Asensio, que marcó en el primer y el último partido del año, encarna el futuro de un Madrid que mezlca su talento y el de Isco con la veteranía y experiencia de Ramos y Cristiano', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/04/actualidad/1496598560_371865_1496601701_miniatura_normal.jpg', 27, 279),
('http://deportes.elpais.com/deportes/2017/06/04/actualidad/1496608413_898116.html#?ref=rss&format=simple&link=link', 'Yo vi jugar a Luka Modric', 'En aquella memorable segunda parte, el croata se metió el partido en el bolsillo e hizo con él lo que quiso', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/04/actualidad/1496608413_898116_1496608576_miniatura_normal.jpg', 27, 259),
('http://deportes.elpais.com/deportes/2017/06/04/actualidad/1496611721_083813.html#?ref=rss&format=simple&link=link', 'La celebración de la Doudécima: Liga, Champions y ¿Balón de Oro?', 'El Madrid ofrece el doblete a su afición, que postula al portugués como ganador del máximo galardón individual', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/04/actualidad/1496611721_083813_1496659028_miniatura_normal.jpg', 27, 277),
('http://deportes.elpais.com/deportes/2017/06/05/actualidad/1496651478_050335.html#?ref=rss&format=simple&link=link', 'La duodécima desde dentro: del gol de Cristiano Jr. a los vídeos de Sergio Ramos', 'Las imágenes más personales difundidas en las redes sociales por los jugadores del Real Madrid', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/05/actualidad/1496651478_050335_1496658307_miniatura_normal.jpg', 27, 276),
('http://deportes.elpais.com/deportes/2017/06/05/actualidad/1496682488_523803.html#?ref=rss&format=simple&link=link', 'Delfí Geli: “Debemos gestionar con rigor para que esto no sea flor de un día”', 'El exfutbolista y presidente del Girona reflexiona sobre el ascenso de su equipo', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/05/actualidad/1496682488_523803_1496771410_miniatura_normal.jpg', 27, 268),
('http://deportes.elpais.com/deportes/2017/06/05/actualidad/1496688068_254141.html#?ref=rss&format=simple&link=link', '“Valverde lo hará muy bien”', 'Guardiola, Begiristain y Koeman defienden la apuesta del Barça y marcan distancia con el Madrid de Zidane', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/05/actualidad/1496688068_254141_1496689564_miniatura_normal.jpg', 27, 270),
('http://deportes.elpais.com/deportes/2017/06/06/actualidad/1496749961_391870.html#?ref=rss&format=simple&link=link', 'El Supremo falla contra Marta Domínguez y ratifica la legalidad del pasaporte biológico', 'El tribunal rechaza un recurso de la exatleta, que alegaba que la toma de muestras sanguíneas vulneraba \"su derecho a la intimidad”', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/06/actualidad/1496749961_391870_1496750444_miniatura_normal.jpg', 27, 288),
('http://deportes.elpais.com/deportes/2017/06/06/actualidad/1496764041_442410.html#?ref=rss&format=simple&link=link', 'El Barcelona busca actores principales', 'El club acometerá dos o tres fichajes de primer orden, que no consultará con Valverde, y otros tantos para completar la plantilla', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/06/actualidad/1496764041_442410_1496764135_miniatura_normal.jpg', 27, 269),
('http://deportes.elpais.com/deportes/2017/06/07/actualidad/1496847609_764914.html#?ref=rss&format=simple&link=link', 'Contador recobra el pulso contrarreloj y puede con Froome en la Dauphiné', 'Victoria de Richie Porte y tercer puesto de Alejandro Valverde, el mejor español', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/07/actualidad/1496847609_764914_1496849235_miniatura_normal.jpg', 27, 287),
('http://deportes.elpais.com/deportes/2017/06/07/actualidad/1496852913_562538.html#?ref=rss&format=simple&link=link', 'El fútbol y las secciones del Barça se quedan en blanco en Europa', 'El club considera que las diferencias fiscales con los rivales, la NBA y el poder económico de algunos magnates limitan la competitividad de sus equipos', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/07/actualidad/1496852913_562538_1496854541_miniatura_normal.jpg', 27, 267),
('http://deportes.elpais.com/deportes/2017/06/07/actualidad/1496869681_116623.html#?ref=rss&format=simple&link=link', 'El Sevilla ficha a Berizzo', 'El club andaluz abre una nueva etapa con otro entrenador argentino, avalado por su etapa en el Celta y el margen de crecimiento que puede lograr en la entidad hispalense', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/07/actualidad/1496869681_116623_1496870149_miniatura_normal.jpg', 27, 266),
('http://deportes.elpais.com/deportes/2017/06/08/actualidad/1496913537_429238.html#?ref=rss&format=simple&link=link', 'El Madrid de las 12 copas', 'La imagen de Florentino Pérez con los trofeos es la representación de un equipo construido para ganar', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/08/actualidad/1496913537_429238_1496914058_miniatura_normal.jpg', 27, 258),
('http://deportes.elpais.com/deportes/2017/06/09/actualidad/1497006228_356951.html#?ref=rss&format=simple&link=link', '“El gol de Koeman es el más visto en la historia del Barça”', 'Los protagonistas de la primera Copa de Europa del club azulgrana recuerdan el duelo en el acto conmemorativo de los 25 años', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/09/actualidad/1497006228_356951_1497009587_miniatura_normal.jpg', 27, 275),
('http://deportes.elpais.com/deportes/2017/06/09/actualidad/1497006471_919348.html#?ref=rss&format=simple&link=link', 'Rafael: maduro, evolucionado y convincente', 'Pase lo que pase hoy, mi sobrino no está muy alejado de su mejor versión', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/09/actualidad/1497006471_919348_1497122811_miniatura_normal.jpg', 27, 245),
('http://deportes.elpais.com/deportes/2017/06/09/actualidad/1497021159_402158.html#?ref=rss&format=simple&link=link', 'Froome aventaja a Contador y Valverde en la Dauphiné', 'Ataque del inglés en el peligroso descenso del Mont du Chat, un aviso de lo que puede ocurrir en el Tour', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/09/actualidad/1497021159_402158_1497021411_miniatura_normal.jpg', 27, 286),
('http://deportes.elpais.com/deportes/2017/06/09/actualidad/1497021529_192555.html#?ref=rss&format=simple&link=link', 'La tormenta perfecta de los Cavaliers estropea los ‘playoffs’ de los Warriors', 'El equipo de LeBron alarga la final (3-1) gracias a los triples y el récord anotador en un duelo (137-116) de una tensión extrema', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/09/actualidad/1497021529_192555_1497060453_miniatura_normal.jpg', 27, 283),
('http://deportes.elpais.com/deportes/2017/06/09/actualidad/1497024557_458027.html#?ref=rss&format=simple&link=link', 'Messi, de Guardiola a Sampaoli', 'Al igual que el exentrenador del Barça, el nuevo técnico de Argentina prioriza montar un equipo para luego darle la responsabilidad a Leo', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/09/actualidad/1497024557_458027_1497025031_miniatura_normal.jpg', 27, 254),
('http://deportes.elpais.com/deportes/2017/06/09/actualidad/1497026384_576149.html#?ref=rss&format=simple&link=link', 'El baloncesto 3x3 y los relevos mixtos en atletismo y triatlón, olímpicos en Tokio 2020', 'El COI apuesta por unos Juegos más juveniles y con más presencia femenina y elegirá a la vez las sedes de 2024 y 2028 a las que aspiran París y Los Ángeles', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/09/actualidad/1497026384_576149_1497030651_miniatura_normal.jpg', 27, 285),
('http://deportes.elpais.com/deportes/2017/06/09/actualidad/1497032876_389667.html#?ref=rss&format=simple&link=link', '“Vives con el objetivo de ganar y pierdes de vista por qué empezaste”', 'Para el piloto de Honda, más risueño que nunca, el entrenamiento mental es ahora tan importante como el físico. Su confianza no decae y compite para cerrar el círculo con el título de MotoGP', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/09/actualidad/1497032876_389667_1497033474_miniatura_normal.jpg', 27, 248),
('http://deportes.elpais.com/deportes/2017/06/09/actualidad/1497035779_069949.html#?ref=rss&format=simple&link=link', 'Pedrosa marca la pauta y Márquez se cae cuatro veces en Montmeló', 'Los problemas de neumáticos presiden las calificaciones para el GP de Catalunya en el que Viñales partirá 9ª plaza y Rossi, desde la 13ª', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/09/actualidad/1497035779_069949_1497101503_miniatura_normal.jpg', 27, 247),
('http://deportes.elpais.com/deportes/2017/06/10/actualidad/1497047065_942889.html#?ref=rss&format=simple&link=link', 'Álvaro Morata cierra un acuerdo con el Manchester United', 'El delantero del Madrid firmaría por cuatro años si fructifica la negociación entre clubes', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/10/actualidad/1497047065_942889_1497047840_miniatura_normal.jpg', 27, 256),
('http://deportes.elpais.com/deportes/2017/06/10/actualidad/1497052657_540970.html#?ref=rss&format=simple&link=link', '3.500 kilómetros en bicicleta para rechazar el discurso de odio de Trump', 'Tres estudiantes mexicanos cruzarán Estados Unidos para dejar un mensaje de unidad de Norteamérica', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/10/actualidad/1497052657_540970_1497053003_miniatura_normal.jpg', 27, 284),
('http://deportes.elpais.com/deportes/2017/06/10/actualidad/1497086404_514295.html#?ref=rss&format=simple&link=link', 'Nadal, ante su propio mito', 'Avalado por la estadística, la historia y su formidable trayectoria en esta edición, el balear aspira a recuperar el trono parisino tres años después de su último éxito.', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/10/actualidad/1497086404_514295_1497098841_miniatura_normal.jpg', 27, 244),
('http://deportes.elpais.com/deportes/2017/06/10/actualidad/1497086767_341013.html#?ref=rss&format=simple&link=link', 'Wawrinka nunca está, pero siempre aparece', 'Campeón heterodoxo y de explosión tardía, el suizo se ha consolidado en los tres últimos años como la alternativa más sólida a los tres gigantes y Murray. \"Mentalmente no me va a ganar nadie\", advierte', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/10/actualidad/1497086767_341013_1497124568_miniatura_normal.jpg', 27, 246),
('http://deportes.elpais.com/deportes/2017/06/10/actualidad/1497087878_739606.html#?ref=rss&format=simple&link=link', 'Ostapenko sacude Roland Garros', 'La letona, de 20 años y con un golpeo casi tan potente como los de Thiem, Wawrinka o Nadal, remonta a la rumana (4-6, 6-4 y 6-3, en 1h 59m) y estrena su casillero de títulos con el grande parisino', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/10/actualidad/1497087878_739606_1497109189_miniatura_normal.jpg', 27, 263),
('http://deportes.elpais.com/deportes/2017/06/10/actualidad/1497090087_227918.html#?ref=rss&format=simple&link=link', 'Dudamel: “El fútbol es pasión en todo el mundo y en Venezuela se vive de la misma forma”', 'La Vinotinto juvenil se prepara para la primera final del mundo en su historia y su técnico evita hablar de política tras su pedido de paz al presidente Maduro', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/10/actualidad/1497090087_227918_1497091756_miniatura_normal.jpg', 27, 257),
('http://deportes.elpais.com/deportes/2017/06/10/actualidad/1497101535_307353.html#?ref=rss&format=simple&link=link', 'GP de Canadá de F1 2017: horarios y dónde ver la carrera en vivo y en directo', 'La carrera del Mundial de Fórmula 1 se celebra el 11 de junio en el circuito de Gilles Villeneuve', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/10/actualidad/1497101535_307353_1497102261_miniatura_normal.jpg', 27, 274),
('http://deportes.elpais.com/deportes/2017/06/10/actualidad/1497102507_207515.html#?ref=rss&format=simple&link=link', 'McLaren duda de Vandoorne', 'La escudería cuestiona el rendimiento del compañero de Alonso', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/10/actualidad/1497102507_207515_1497103095_miniatura_normal.jpg', 27, 272),
('http://deportes.elpais.com/deportes/2017/06/10/actualidad/1497102689_005029.html#?ref=rss&format=simple&link=link', 'GP de Cataluña 2017 en Montmeló: horario y dónde ver MotoGP en vivo y en directo', 'El Mundial de Motociclismo se celebra este fin de semana en el circuit de Barcelona – Catalunya en Montmeló', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/10/actualidad/1497102689_005029_1497103086_miniatura_normal.jpg', 27, 273),
('http://deportes.elpais.com/deportes/2017/06/10/actualidad/1497104508_947868.html#?ref=rss&format=simple&link=link', 'Lewis Hamilton iguala las 65 poles de Ayrton Senna y saldrá primero en el GP de Canada', 'El británico superó a Sebastian Vettel, segundo. Alonso fue 12º y Carlos Sainz, 13º', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/10/actualidad/1497104508_947868_1497104680_miniatura_normal.jpg', 27, 271),
('http://deportes.elpais.com/deportes/2017/06/10/actualidad/1497108810_143634.html#?ref=rss&format=simple&link=link', 'Dónde ver el México - Estados Unidos, las eliminatorias para Rusia 2018', 'Consulta los horarios para seguir el derbi de Norteamérica', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/10/actualidad/1497108810_143634_1497109198_miniatura_normal.jpg', 27, 290),
('http://deportes.elpais.com/deportes/2017/06/10/actualidad/1497109381_696867.html#?ref=rss&format=simple&link=link', 'Nadal - Wawrinka: horario y dónde ver la final de Roland Garros 2017 en directo', 'El partido se juega este domingo 11 de junio a partir de las 15.00 (hora española)', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/10/actualidad/1497109381_696867_1497109881_miniatura_normal.jpg', 27, 264),
('http://deportes.elpais.com/deportes/2017/06/10/actualidad/1497111126_709714.html#?ref=rss&format=simple&link=link', 'Macedonia - España: horario y dónde ver la eliminatoria del Mundial de Rusia en directo', 'El partido de clasificación se juega este domingo 11 de junio a las 20:45 en Estadio Filip II de Macedonia', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/10/actualidad/1497111126_709714_1497111320_miniatura_normal.jpg', 27, 289),
('http://deportes.elpais.com/deportes/2017/06/10/actualidad/1497114194_927396.html#?ref=rss&format=simple&link=link', 'Ensayo general con maillot de Richie Porte', 'El líder australiano controla como lo haría en el Tour la etapa del nuevo Alpe d’Huez en la Dauphiné', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/10/actualidad/1497114194_927396_1497114314_miniatura_normal.jpg', 27, 253),
('http://deportes.elpais.com/deportes/2017/06/10/actualidad/1497118960_512121.html#?ref=rss&format=simple&link=link', 'La crisis del baloncesto español aboca a la ACB a una Liga de 20 equipos', 'Méndez de Vigo insta a la Federación a cumplir el acuerdo con el Palencia; Gipuzkoa y Burgos tienen garantizada su plaza y, con las medidas cautelares de los clubes, Betis y Manresa no descenderían', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/10/actualidad/1497118960_512121_1497120178_miniatura_normal.jpg', 27, 249),
('http://deportes.elpais.com/deportes/2017/06/10/actualidad/1497119514_752308.html#?ref=rss&format=simple&link=link', 'Final ACB 2017: Real Madrid - Valencia Basket | Calendario y resultados', 'Consulta las fechas y horarios de los partidos decisivos de la Liga Endesa', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/10/actualidad/1497119514_752308_1497120285_miniatura_normal.jpg', 27, 282),
('http://deportes.elpais.com/deportes/2017/06/10/actualidad/1497119897_033136.html#?ref=rss&format=simple&link=link', 'Getafe-Huesca y Tenerife-Cádiz, eliminatorias por el ascenso a Primera; el UCAM, a 2ªB', 'Almería, Alcorcón y Nàstic se salvan, mientras que el UCAM Murcia desciende a Segunda División B', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/10/actualidad/1497119897_033136_1497126781_miniatura_normal.jpg', 27, 252),
('http://deportes.elpais.com/deportes/2017/06/10/actualidad/1497121446_146607.html#?ref=rss&format=simple&link=link', 'Hamilton se viste de Senna', 'El británico iguala en Canadá las 65 ‘poles’ del brasileño, su ídolo, y arrancará por delante de Sebastian Vettel', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/10/actualidad/1497121446_146607_1497121773_miniatura_normal.jpg', 27, 255),
('http://deportes.elpais.com/deportes/2017/06/10/actualidad/1497122333_941457.html#?ref=rss&format=simple&link=link', 'En Akron, cuna de Curry y LeBron, manda El Rey', 'Las dos estrellas nacieron en la misma pequeña localidad de Ohio, pero James es el héroe local por su contribución a la sociedad', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/10/actualidad/1497122333_941457_1497122606_miniatura_normal.jpg', 27, 250),
('http://deportes.elpais.com/deportes/2017/06/10/actualidad/1497122589_864147.html#?ref=rss&format=simple&link=link', 'Final NBA 2017: Warriors - Cavaliers | Calendario y resultados', 'Consulta las fechas y horarios de los partidos de los playoffs finales entre los Cleveland Cavaliers y los Golden State Warriors', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/10/actualidad/1497122589_864147_1497122943_miniatura_normal.jpg', 27, 281),
('http://deportes.elpais.com/deportes/2017/06/10/actualidad/1497128328_466378.html#?ref=rss&format=simple&link=link', 'Cuando Tiger abría un campo de golf al día', 'El número de golfistas y de lugares de juego desciende en EEUU desde que se inició el declive de Woods', '2017-06-10', 'http://ep00.epimg.net/deportes/imagenes/2017/06/10/actualidad/1497128328_466378_1497128432_miniatura_normal.jpg', 27, 251),
('http://deportes.elpais.com/elpais/2017/06/09/media/1497037637_822802.html#?ref=rss&format=simple&link=link', 'Nadal y Wawrinka, frente a frente', 'El español y el suizo se enfrentan en la final de Roland Garros', '2017-06-10', 'http://ep00.epimg.net/elpais/imagenes/2017/06/09/media/1497037637_822802_1497037685_miniatura_normal.png', 27, 265),
('http://economia.elpais.com/ccaa/2017/06/06/catalunya/1496776267_569547.html#?ref=rss&format=simple&link=link', 'El silencio de Artur Mas', '¿Realmente el ex presidente no sabía nada de las finanzas ni de las actividades de su gran amigo y colaborador Germà Gordó?', '2017-06-10', 'http://ep00.epimg.net/cat/imagenes/2017/06/06/opinion/1496776267_569547_1496776333_miniatura_normal.jpg', 28, 213),
('http://economia.elpais.com/economia/2017/02/17/actualidad/1487342497_292653.html#?ref=rss&format=simple&link=link', 'BLOG | Finanzas a las 9', 'Los profesionales de Afi ofrecen un punto de vista singular sobre la actualidad del sistema financiero', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/02/17/actualidad/1487342497_292653_1488481992_portadilla_normal.jpg', 28, 206),
('http://economia.elpais.com/economia/2017/05/11/actualidad/1494519824_073866.html#?ref=rss&format=simple&link=link', 'Innovación para seguir construyendo', 'El salón Construmat de Barcelona se conjura para sacar al sector de la crisis gracias a la tecnología', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/05/11/actualidad/1494519824_073866_1494520131_miniatura_normal.jpg', 28, 242),
('http://economia.elpais.com/economia/2017/05/18/actualidad/1495121255_811212.html#?ref=rss&format=simple&link=link', 'La feria del autobús se mueve', 'Ifema retrasa FIAA para encajarla mejor en el calendario ferial europeo y reforzar la presencia de un sector en auge', '2017-06-10', '', 28, 240),
('http://economia.elpais.com/economia/2017/05/19/actualidad/1495194529_597197.html#?ref=rss&format=simple&link=link', 'Los vehículos de ocasión llegan al gran escaparate de Madrid', 'Ifema acoge la XXI edición del Salón del Vehículo de Ocasión entre el 19 y el 28 de mayo', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/05/19/actualidad/1495194529_597197_1495194729_miniatura_normal.jpg', 28, 241),
('http://economia.elpais.com/economia/2017/06/01/actualidad/1496328935_173859.html#?ref=rss&format=simple&link=link', 'Aparcamientos al mejor postor', 'Parclick es un ‘marketplace’ que pone en contacto a conductores y propietarios\nde garajes para hallar plazas libres al precio más competitivo posible', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/06/01/actualidad/1496328935_173859_1496329349_miniatura_normal.jpg', 28, 227),
('http://economia.elpais.com/economia/2017/06/01/actualidad/1496329692_869781.html#?ref=rss&format=simple&link=link', 'Consejos con palos en las ruedas', 'Un estudio identifica 10 barreras que dificultan la eficiencia de los órganos\nde administración de las empresas', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/06/01/actualidad/1496329692_869781_1496330011_miniatura_normal.jpg', 28, 228),
('http://economia.elpais.com/economia/2017/06/01/actualidad/1496330891_748682.html#?ref=rss&format=simple&link=link', 'El encuentro del sector nefrológico', 'Ifema acoge el congreso anual de la Asociación Renal Europea y de la Asociación de Diálisis y Trasplantes', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/06/01/actualidad/1496330891_748682_1496331065_miniatura_normal.jpg', 28, 239),
('http://economia.elpais.com/economia/2017/06/02/actualidad/1496402541_236318.html#?ref=rss&format=simple&link=link', '¿De verdad es tan barato volar con las ‘low cost’ a América?', 'Norwegian y Level declaran una guerra de precios a las aerolíneas tradicionales, pero los servicios añadidos que ofrecen, incluso los básicos, son caros', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/06/02/actualidad/1496402541_236318_1496403147_miniatura_normal.jpg', 28, 236),
('http://economia.elpais.com/economia/2017/06/02/actualidad/1496416464_672505.html#?ref=rss&format=simple&link=link', '¿Te has confundido en la declaración de la renta? Así puedes solucionarlo', 'Remediar un error es más sencillo si se hace antes del cierre de la campaña. Aquí todos los pasos', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/06/02/actualidad/1496416464_672505_1496418862_miniatura_normal.jpg', 28, 237),
('http://economia.elpais.com/economia/2017/06/05/actualidad/1496683413_821630.html#?ref=rss&format=simple&link=link', 'El mercado donde todo lo que se vende es reciclado', 'Más de 3.000 personas acuden en Madrid a la tercera edición del Recycling Market, un espacio de venta de productos sostenibles', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/06/05/actualidad/1496683413_821630_1496744504_portadilla_normal.jpg', 28, 238),
('http://economia.elpais.com/economia/2017/06/07/actualidad/1496852268_865538.html#?ref=rss&format=simple&link=link', 'A por la ‘champions’ económica', 'El Real Madrid, que ha perdido el título del equipo más rico, intentará rentabilizar sus éxitos deportivos para arrebatar el liderazgo al Manchester United, aupado al primer puesto por su exitosa estrategia comercial', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/06/07/actualidad/1496852268_865538_1496911371_miniatura_normal.jpg', 28, 192),
('http://economia.elpais.com/economia/2017/06/07/actualidad/1496855106_996045.html#?ref=rss&format=simple&link=link', 'Trabajar al estilo japonés', 'Los modelos productivos y de organización del empleo en el país asiático se diseminan por el mundo con notables resultados', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/06/07/actualidad/1496855106_996045_1496855519_miniatura_normal.jpg', 28, 197),
('http://economia.elpais.com/economia/2017/06/07/actualidad/1496859863_909395.html#?ref=rss&format=simple&link=link', '¿Debe mentir el ministro Guindos?', 'El Popular llevaba un lustro de parches homeopáticos como los que criticó este Gobierno', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/06/07/actualidad/1496859863_909395_1496860257_miniatura_normal.jpg', 28, 208),
('http://economia.elpais.com/economia/2017/06/07/mis_derechos/1496841435_992993.html#?ref=rss&format=simple&link=link', 'Un nuevo tratamiento para la disolución judicial de sociedades', 'La ley pretende evitar que las sociedades puedan continuar el desarrollo de la actividad de forma normal cuando surjan causas legales o estatutarias que les obligan a disolverse', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/06/07/mis_derechos/1496841435_992993_1496841883_miniatura_normal.jpg', 28, 234),
('http://economia.elpais.com/economia/2017/06/08/actualidad/1496913523_770995.html#?ref=rss&format=simple&link=link', 'Europa se acerca a una solución para el euro', 'El destino ha dado a Europa una oportunidad única para poner su casa en orden. Si no la aprovechamos, el aumento del populismo será inevitable', '2017-06-10', '', 28, 193),
('http://economia.elpais.com/economia/2017/06/08/actualidad/1496943892_607259.html#?ref=rss&format=simple&link=link', '¡Gracias, Santander!', 'El banco que dirige Ana Botín asume la gestión del problema y se compromete a cubrir las pérdidas', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/06/08/actualidad/1496943892_607259_1496944000_miniatura_normal.jpg', 28, 207),
('http://economia.elpais.com/economia/2017/06/08/actualidad/1496944711_618627.html#?ref=rss&format=simple&link=link', '9 de junio de 2012: el día que España tuvo que pedir el rescate', 'Hace justo cinco años el Gobierno solicitó ayuda para sanear la banca a sus socios europeos, que pusieron a su disposición 100.000 millones. La crisis del Popular y la debilidad de BMN y Liberbank evidencian que quedan flecos', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/06/08/actualidad/1496944711_618627_1496944992_miniatura_normal.jpg', 28, 203),
('http://economia.elpais.com/economia/2017/06/08/mis_derechos/1496936015_476023.html#?ref=rss&format=simple&link=link', '¿Qué armas legales tenemos para luchar contra el terrorismo yihadista?', 'Después de cada atentado se repiten las mismas reflexiones: ¿cómo se les puede hacer frente? ¿De qué medios disponemos para frenarlos?', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/06/08/mis_derechos/1496936015_476023_1496936729_miniatura_normal.jpg', 28, 233),
('http://economia.elpais.com/economia/2017/06/09/actualidad/1496992136_896807.html#?ref=rss&format=simple&link=link', 'Liberbank se desploma en Bolsa y pierde el 43% de su valor en 10 días', 'El banco no consigue detener el efecto contagio de la crisis del Popular. Este viernes ha caído otro 17,5%', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/06/09/actualidad/1496992136_896807_1497032940_miniatura_normal.jpg', 28, 200),
('http://economia.elpais.com/economia/2017/06/09/actualidad/1497000193_437405.html#?ref=rss&format=simple&link=link', 'Gracias a amigos y familiares, así encuentran los jóvenes trabajo en España', 'El 42% de quienes tienen empleo entre 16 y 34 años lo han encontrado a través de redes de contactos personales', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/01/actualidad/1496302410_347072_1496303076_miniatura_normal.jpg', 28, 202),
('http://economia.elpais.com/economia/2017/06/09/actualidad/1497003183_567267.html#?ref=rss&format=simple&link=link', '¿Qué es lo mejor y lo peor de las aplicaciones de los bancos?', 'Los clientes llevan una oficina virtual en el bolsillo pero algunos de los programas tienen detalles que mejorar', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/06/09/actualidad/1497003183_567267_1497005540_miniatura_normal.jpg', 28, 196),
('http://economia.elpais.com/economia/2017/06/09/actualidad/1497009383_084325.html#?ref=rss&format=simple&link=link', 'El hundimiento del Estado', 'Trump no está a la altura y eso ya tiene consecuencias: desde una mala sanidad hasta la pérdida de credibilidad mundial', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/06/09/actualidad/1497009383_084325_1497009672_miniatura_normal.jpg', 28, 191),
('http://economia.elpais.com/economia/2017/06/09/actualidad/1497016227_000888.html#?ref=rss&format=simple&link=link', 'Telefónica ya ingresa más por datos que por voz', 'Pallete destaca en la junta de accionistas la transformación digital de la compañía y celebra los resultados del \"complejo\" 2016', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/06/09/actualidad/1497016227_000888_1497016863_miniatura_normal.jpg', 28, 205),
('http://economia.elpais.com/economia/2017/06/09/actualidad/1497019476_925908.html#?ref=rss&format=simple&link=link', 'Mercadona invierte otros 17 millones en Sagunto para reforzar su futuro macroalmacén', 'La empresa de supermercados adquirió en diciembre una parcela de 24 millones en Parc Sagunt', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2016/06/23/actualidad/1466691798_811963_1466691964_miniatura_normal.jpg', 28, 199),
('http://economia.elpais.com/economia/2017/06/09/actualidad/1497019872_808875.html#?ref=rss&format=simple&link=link', 'La compra de una vivienda sobre plano tiene premio', 'La adquisición de una casa antes de que arranque la obra sale hasta un 15% más barata en el ciclo de mercado actual', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/06/09/actualidad/1497019872_808875_1497020030_miniatura_normal.jpg', 28, 198),
('http://economia.elpais.com/economia/2017/06/09/actualidad/1497023742_898555.html#?ref=rss&format=simple&link=link', 'El sector bancario español reduce sus jugadores', 'Santander, Caixabank, BBVA, Bankia y Sabadell controlan el 64% de cuota de mercado de créditos en España tras la adquisición del Popular por el primero', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/06/09/actualidad/1497023742_898555_1497024787_miniatura_normal.jpg', 28, 229),
('http://economia.elpais.com/economia/2017/06/09/actualidad/1497026065_881465.html#?ref=rss&format=simple&link=link', 'Trump sigue sin detallar su plan para modernizar las infraestructuras', 'El caos político por la trama rusa nubla la visión del presidente para impulsar el crecimiento económico y el empleo', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/06/09/actualidad/1497026065_881465_1497026250_miniatura_normal.jpg', 28, 204),
('http://economia.elpais.com/economia/2017/06/09/actualidad/1497026822_787437.html#?ref=rss&format=simple&link=link', 'La inacción sale más cara que la acción', 'La decisión de Donald Trump para la salida de EE UU del Acuerdo de París sería incomprensible', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/06/09/actualidad/1497026822_787437_1497029707_miniatura_normal.jpg', 28, 195),
('http://economia.elpais.com/economia/2017/06/09/actualidad/1497030453_435998.html#?ref=rss&format=simple&link=link', 'Renfe y Adif se retiran de la patronal ferroviaria tras un escándalo de revelación de sueldos de los directivos', 'Un anónimo filtró la retribución de la cúpula de Cetren, asociación formada por las propias empresas a las que certifica', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/06/09/actualidad/1497030453_435998_1497030566_miniatura_normal.jpg', 28, 190),
('http://economia.elpais.com/economia/2017/06/09/actualidad/1497031942_443593.html#?ref=rss&format=simple&link=link', 'Las demandas contra el Popular pueden superar los 1.500 millones', 'Además de la ampliación de capital con acciones, vendió convertibles y deuda subordinada en la red', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/06/09/actualidad/1497031942_443593_1497032042_miniatura_normal.jpg', 28, 189),
('http://economia.elpais.com/economia/2017/06/10/actualidad/1497109230_871796.html#?ref=rss&format=simple&link=link', 'CAF invertirá 60 millones hasta 2018, el doble del beneficio de 2016', 'La Junta General aprueba un dividendo de 0,58 euros brutos por acción que eleva al 10% el retribuido con cargo a 2016', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/06/10/actualidad/1497109230_871796_1497109683_miniatura_normal.jpg', 28, 194),
('http://economia.elpais.com/economia/2017/06/10/actualidad/1497113055_882296.html#?ref=rss&format=simple&link=link', 'Crisis del Popular: ¿cómo se puede acabar con un banco de 91 años en una noche?', 'La pérdida de confianza en el Popular se reflejó primero en la cotización, pero se convirtió en una mortal fuga de depósitos que el presidente no fue capaz de frenar', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/06/10/actualidad/1497113055_882296_1497114137_miniatura_normal.jpg', 28, 188),
('http://economia.elpais.com/elpais/2017/04/27/talento_digital/1493311116_497929.html#?ref=rss&format=simple&link=link', 'Los mapas que sabrán cuándo mueves el brazo', 'Los sistemas de navegación son una pieza clave en el desarrollo del coche autónomo. La cartografía 3D y de interiores amplia sus posibilidades para ofrecer nuevos servicios', '2017-06-10', 'http://ep00.epimg.net/elpais/imagenes/2017/04/27/talento_digital/1493311116_497929_1493321013_miniatura_normal.jpg', 28, 231),
('http://economia.elpais.com/elpais/2017/05/02/talento_digital/1493742496_841032.html#?ref=rss&format=simple&link=link', '¿Me imprimes un pisito?', 'La impresión 3D para construir viviendas es ya una realidad y puede ser clave para edificar en suelo extraterrestre', '2017-06-10', 'http://ep00.epimg.net/elpais/imagenes/2017/05/02/talento_digital/1493742496_841032_1493745125_miniatura_normal.jpg', 28, 230),
('http://economia.elpais.com/elpais/2017/05/30/opinion/1496169543_500652.html#?ref=rss&format=simple&link=link', 'El abono intelectual del populismo', 'El populista manipula los peores instintos del ciudadano. Arraiga en ambientes viciados por quienes alimentan una visión maniquea de la realidad —adornada con elementos plausibles— que hacen creíble su discurso', '2017-06-10', 'http://ep00.epimg.net/elpais/imagenes/2017/05/30/opinion/1496169543_500652_1496846465_miniatura_normal.jpg', 28, 211),
('http://economia.elpais.com/elpais/2017/05/31/fotorrelato/1496243925_526733.html#?ref=rss&format=simple&link=link', 'Del vapor al gas natural', 'Un breve repaso a la historia de la navegación, desde las barcas con remos, hasta el primer ferri con motor de gas natural para barcos de pasajeros en España', '2017-06-10', 'http://ep00.epimg.net/elpais/imagenes/2017/05/31/fotorrelato/1496243925_526733_1496252509_miniatura_normal.jpg', 28, 243),
('http://economia.elpais.com/elpais/2017/06/07/opinion/1496853982_978651.html#?ref=rss&format=simple&link=link', 'Popular, salvación por vía de urgencia', 'La compra por el Santander es la solución más razonable en una situación al borde del colapso', '2017-06-10', 'http://ep00.epimg.net/elpais/imagenes/2017/06/07/opinion/1496853982_978651_1496854105_miniatura_normal.jpg', 28, 212),
('http://economia.elpais.com/elpais/2017/06/08/opinion/1496942117_733319.html#?ref=rss&format=simple&link=link', 'Insostenible Montoro', 'La anulación de la amnistía fiscal deja sin autoridad al ministro de Hacienda', '2017-06-10', 'http://ep00.epimg.net/elpais/imagenes/2017/06/08/opinion/1496942117_733319_1496942346_miniatura_normal.jpg', 28, 210),
('http://economia.elpais.com/elpais/2017/06/09/opinion/1497007472_616420.html#?ref=rss&format=simple&link=link', 'Coletazos del dragón', 'Donald Trump encarna el ego herido de un Occidente que pierde la hegemonía frente a Asia', '2017-06-10', 'http://ep00.epimg.net/elpais/imagenes/2017/06/09/opinion/1497007472_616420_1497007666_miniatura_normal.jpg', 28, 209),
('http://economia.elpais.com/internacional/2017/06/06/actualidad/1496751025_253772.html#?ref=rss&format=simple&link=link', 'El acceso a la universidad en China no es igual para todos', 'El examen actual es considerado como el método más equitativo, pero las diferencias entre alumnos empiezan desde su lugar de nacimiento', '2017-06-10', 'http://ep00.epimg.net/internacional/imagenes/2017/06/06/actualidad/1496751025_253772_1496810734_miniatura_normal.jpg', 28, 235),
('http://elpais.com/ccaa/2017/05/31/catalunya/1496220644_483613.html#?ref=rss&format=simple&link=link', 'Puigdemont exige a Rajoy que aclare cómo impedirá el referéndum', 'El presidente de la Generalitat asegura que las \"amenazas\" solo \"le animan\" a seguir adelante', '2017-06-10', 'http://ep00.epimg.net/ccaa/imagenes/2017/05/31/catalunya/1496220644_483613_1496225358_miniatura_normal.jpg', 16, 151),
('http://elpais.com/ccaa/2017/06/01/catalunya/1496294355_866563.html#?ref=rss&format=simple&link=link', 'El nuevo reglamento del Parlament, a punto', 'Junts pel Sí y la CUP cerrarán este jueves por la tarde el acuerdo que facilitará la aprobación de la ley de ruptura', '2017-06-10', 'http://ep00.epimg.net/ccaa/imagenes/2017/06/01/catalunya/1496294355_866563_1496294582_miniatura_normal.jpg', 16, 150),
('http://elpais.com/ccaa/2017/06/02/catalunya/1496422127_963598.html#?ref=rss&format=simple&link=link', 'Puigdemont se abre ahora a ir al Congreso a debatir el referéndum', 'El Gobierno catalán quiere asegurarse que tiene garantías de negociación y que no se repetirá un capítulo como el del \'Plan Ibarretxe\'', '2017-06-10', 'http://ep00.epimg.net/ccaa/imagenes/2016/12/29/catalunya/1483006825_524100_1483006932_miniatura_normal.jpg', 16, 146),
('http://elpais.com/ccaa/2017/06/07/catalunya/1496844484_806118.html#?ref=rss&format=simple&link=link', 'Plantón a un profesor de ESO por sus comentarios homófobos', 'Más de un centenar de alumnos del Instituto Samuel Gili i Gaya se manifiestan contra el docente y Enseñanza abre una inspección', '2017-06-10', 'http://ep00.epimg.net/ccaa/imagenes/2017/06/07/catalunya/1496844484_806118_1496844672_miniatura_normal.jpg', 16, 177),
('http://elpais.com/ccaa/2017/06/07/catalunya/1496846230_948330.html#?ref=rss&format=simple&link=link', 'La Seguridad Social destapa un gran fraude en la sanidad pública catalana', 'La Inspección reclama ocho millones a tres empresas de rehabilitación por prestar la asistencia con falsos autónomos', '2017-06-10', 'http://ep00.epimg.net/ccaa/imagenes/2017/06/07/catalunya/1496846230_948330_1497031270_miniatura_normal.jpg', 28, 201),
('http://elpais.com/ccaa/2017/06/08/catalunya/1496904247_576504.html#?ref=rss&format=simple&link=link', 'Guardiola dice que es un “privilegio” que el Parlament le pida leer el manifiesto', '“Mas y Puigdemont son gente muy valiente que se la juega para llevar esto a cabo\", afirma el exentrenador del Barça', '2017-06-10', 'http://ep00.epimg.net/ccaa/imagenes/2017/06/07/catalunya/1496834513_701791_1496834577_miniatura_normal.jpg', 16, 148),
('http://elpais.com/ccaa/2017/06/08/catalunya/1496949839_194428.html#?ref=rss&format=simple&link=link', 'La Policía registra las casas de los hermanos Cierco en Andorra', 'Los Pujol denunciaron a los banqueros por facilitar información de la familia a España', '2017-06-10', 'http://ep00.epimg.net/ccaa/imagenes/2017/06/08/catalunya/1496949839_194428_1496950105_miniatura_normal.jpg', 16, 166),
('http://elpais.com/ccaa/2017/06/08/valencia/1496919559_786362.html#?ref=rss&format=simple&link=link', 'El plástico invade el Mediterráneo', 'Greenpeace inicia en Valencia una campaña en la cuenca mediterránea contra la contaminación marina por este material', '2017-06-10', 'http://ep00.epimg.net/ccaa/imagenes/2017/06/08/valencia/1496919559_786362_1496919955_miniatura_normal.jpg', 16, 182),
('http://elpais.com/ccaa/2017/06/09/catalunya/1496992021_200661.html#?ref=rss&format=simple&link=link', 'Puigdemont anuncia para el 1 de octubre el referéndum sobre la independencia', '\"¿Quiere que Cataluña sea un Estado independiente en forma de república?\" es la pregunta', '2017-06-10', 'http://ep00.epimg.net/ccaa/imagenes/2017/06/09/catalunya/1496992021_200661_1496998998_miniatura_normal.jpg', 16, 124),
('http://elpais.com/cincodias/2017/06/08/companias/1496938064_650203.html#?ref=rss&format=simple&link=link', 'Saracho: “Hemos fracasado. No repetiré nada parecido en mi vida”', 'El expresidente de Popular reconoce que la situación del banco \"era insostenible e imposible mantener su valor\"\nEl directivo ha colgado una entrevista en la intranet de la entidad a la que ha tenido acceso Cinco Días', '2017-06-10', 'http://ep00.epimg.net/cincodias/imagenes/2017/06/08/companias/1496938064_650203_1496938200_miniatura_normal.jpg', 28, 219),
('http://elpais.com/cincodias/2017/06/08/mercados/1496950589_822175.html#?ref=rss&format=simple&link=link', 'Aquí están los fondos de inversión y las sicavs dañados por la caída de Popular', 'Casi 60 carteras han informado ya a la CNMV reducciones superiores al 1% de su valor\nEl goteo de firmas continuará en los próximos días', '2017-06-10', 'http://ep00.epimg.net/cincodias/imagenes/2017/06/08/mercados/1496950589_822175_1497032053_miniatura_normal.jpg', 28, 216),
('http://elpais.com/cincodias/2017/06/08/mercados/1496952745_332868.html#?ref=rss&format=simple&link=link', 'Así se harán de oro los bajistas que apostaron contra Popular', 'Varios intermediarios de contratos por diferencias (CFD) liquidan los títulos valorados a 0 euros\nBME también ha liquidado las posiciones en las opciones: los que apostaron por caídas ganan el máximo', '2017-06-10', 'http://ep00.epimg.net/cincodias/imagenes/2017/06/08/mercados/1496952745_332868_1496952889_miniatura_normal.jpg', 28, 217),
('http://elpais.com/cincodias/2017/06/09/companias/1497004378_848818.html#?ref=rss&format=simple&link=link', 'El Gobierno aprueba nuevas restricciones para el tabaco', 'La medida incluye el nuevo empaquetado con más alertas\nLa Mesa del Tabaco dice que \"España está en el límite de la regulación\"', '2017-06-10', 'http://ep00.epimg.net/cincodias/imagenes/2017/06/09/companias/1497004378_848818_1497004994_miniatura_normal.jpg', 28, 218),
('http://elpais.com/cincodias/2017/06/09/mercados/1497022181_033232.html#?ref=rss&format=simple&link=link', '¿Qué lecciones deja Popular a ahorradores e inversores en bancos?', 'La banca ya se rige como cualquier otra empresa en caso de quiebra\nAccionistas y tenedores de deuda pueden llegar a perderlo todo', '2017-06-10', 'http://ep00.epimg.net/cincodias/imagenes/2017/06/09/mercados/1497022181_033232_1497023024_miniatura_normal.jpg', 28, 214),
('http://elpais.com/cincodias/2017/06/09/mercados/1497027830_228257.html#?ref=rss&format=simple&link=link', 'Así quedan los bancos españoles tras el movimiento de Santander', 'Botín asume más riesgos pero un liderazgo en pymes que deberá aprender a conservar\nSu saneamiento de Popular eleva la presión sobre el sector para la venta de los activos inmobiliarios', '2017-06-10', 'http://ep00.epimg.net/cincodias/imagenes/2017/06/09/mercados/1497027830_228257_1497033636_miniatura_normal.jpg', 28, 215),
('http://elpais.com/economia/2017/06/02/actualidad/1496427341_030344.html#?ref=rss&format=simple&link=link', 'Una comunidad conectada por enchufes', 'Durante la primera etapa andaluza de la vuelta eléctrica a España, el equipo Endesa repostó en Motril, en un punto de recarga privado al que puede acceder, previa llamada, todo el que necesite energía', '2017-06-10', 'http://ep00.epimg.net/economia/imagenes/2017/06/02/actualidad/1496427341_030344_1496852676_miniatura_normal.jpg', 28, 232),
('http://elpais.com/elpais/2017/06/08/la_voz_de_inaki/1496906510_875211.html#?ref=rss&format=simple&link=link', 'Reino Unido: 42-37', 'El día que May anunció las elecciones, las encuestas le daban una ventaja de 20 puntos; 50 días después las distancias se han reducido', '2017-06-10', 'http://ep00.epimg.net/elpais/imagenes/2017/06/08/la_voz_de_inaki/1496906510_875211_1496906703_miniatura_normal.jpg', 16, 187),
('http://elpais.com/politica/2017/06/04/actualidad/1496590042_747261.html#?ref=rss&format=simple&link=link', '“¿Fuma? ¿Se ha sentido una mujer maltratada?”', 'La Comunidad Valenciana generaliza un cuestionario para descubrir violencia de género entre las mujeres que van al médico de cabecera. En año y medio han detectado 3.000 casos', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/04/actualidad/1496590042_747261_1496590214_miniatura_normal.jpg', 16, 181),
('http://elpais.com/politica/2017/06/09/actualidad/1497008268_898489.html#?ref=rss&format=simple&link=link', 'Euskadi quiere evitar que las discotecas discriminen por sexo', 'Un borrador de reglamento prohíbe que se den entradas gratis o a menor precio a las mujeres', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/09/actualidad/1497008268_898489_1497011183_miniatura_normal.jpg', 16, 139),
('http://elpais.com/retina/2017/05/30/tendencias/1496145669_471728.html#?ref=rss&format=simple&link=link', '¿Qué viene detrás de Wannacry? Más ‘ransomware’ y la sombra del ‘biohacking’', 'La información digitalizada cada vez es más sensible. Sam Balaji, el gurú de la gestión de riesgos de Deloitte, nos cuenta a qué nos enfrentaremos próximamente.', '2017-06-10', 'http://ep00.epimg.net/retina/imagenes/2017/05/30/tendencias/1496145669_471728_1496145892_miniatura_normal.jpg', 28, 226),
('http://elpais.com/retina/2017/05/30/tendencias/1496154380_977310.html#?ref=rss&format=simple&link=link', 'El ‘big data’ ayuda a tomar decisiones, pero lo importante es la intuición', 'Muchas empresas basan sus planes de actuación en lo que dicen los datos, pero a veces conviene confiar en el sentido común.', '2017-06-10', 'http://ep00.epimg.net/retina/imagenes/2017/05/30/tendencias/1496154380_977310_1496155617_miniatura_normal.jpg', 28, 225),
('http://elpais.com/retina/2017/05/31/tendencias/1496249565_622928.html#?ref=rss&format=simple&link=link', 'Las ‘fintech’ miran al futuro mientras los bancos zozobran', 'EL PAÍS RETINA reúne a cinco representantes de empresas ‘fintech’ para hablar de los retos del sector. Su optimismo se apuntala en el maná de los ‘millennials’.', '2017-06-10', 'http://ep00.epimg.net/retina/imagenes/2017/05/31/tendencias/1496249565_622928_1496249923_miniatura_normal.jpg', 28, 220),
('http://elpais.com/retina/2017/06/05/fotorrelato/1496663362_879121.html#?ref=rss&format=simple&link=link', 'Ya éramos cíborgs y no lo sabíamos', '¿Somos organismos cibernéticos? Te contamos siete casos en los que el hombre ya funciona como Darth Vader.', '2017-06-10', 'http://ep00.epimg.net/retina/imagenes/2017/06/05/fotorrelato/1496663362_879121_1496851173_miniatura_normal.jpg', 28, 221),
('http://elpais.com/retina/2017/06/06/tendencias/1496744837_749365.html#?ref=rss&format=simple&link=link', 'La ciberseguridad mundial mejoraría si velasen por ella más mujeres', 'Solo el 11% de los puestos de seguridad digital a nivel mundial están ocupados por ellas, que aportarían más creatividad, perseverancia y lado humano', '2017-06-10', 'http://ep00.epimg.net/retina/imagenes/2017/06/06/tendencias/1496744837_749365_1496850397_miniatura_normal.jpg', 28, 222),
('http://elpais.com/retina/2017/06/07/innovacion/1496827847_765479.html#?ref=rss&format=simple&link=link', 'Bruselas: España crea ‘startups’, pero no sabe sacarles rendimiento', 'España, el quinto país en el ranking de ecosistemas de startups. Con el \'brexit\' perderemos al país que genera una de cada tres \'startups\' escalables, según Bruselas.', '2017-06-10', 'http://ep00.epimg.net/retina/imagenes/2017/06/07/innovacion/1496827847_765479_1496828194_miniatura_normal.jpg', 28, 224),
('http://elpais.com/retina/2017/06/07/tendencias/1496830523_914456.html#?ref=rss&format=simple&link=link', 'El PAÍS y Google, juntos en Retina para la transformación digital', 'La empresa americana, referente en innovación y nuevas tecnologías, se incorpora como colaborador de Retina', '2017-06-10', 'http://ep00.epimg.net/retina/imagenes/2017/06/07/tendencias/1496830523_914456_1496830728_miniatura_normal.jpg', 28, 223);
INSERT INTO `articles_rss` (`link`, `title`, `description`, `pub_date`, `cover`, `rss_id`, `num_entry`) VALUES
('http://politica.elpais.com/politica/2017/06/02/actualidad/1496397151_082775.html#?ref=rss&format=simple&link=link', 'La Fiscalía pretende que Mas reintegre los 5,12 millones que costó la consulta ilegal del 9-N', 'El ministerio público ve “malversación contable” y pide al Tribunal de Cuentas que investigue al expresident y a los consejeros Homs, Ortega y Rigau', '2017-06-10', 'http://ep00.epimg.net/ccaa/imagenes/2017/02/05/catalunya/1486317027_843507_1486317112_miniatura_normal.jpg', 16, 149),
('http://politica.elpais.com/politica/2017/06/02/actualidad/1496407760_313194.html#?ref=rss&format=simple&link=link', 'La Audiencia Nacional confirma la prisión provisional de Ignacio González', 'La Sección Cuarta ve riesgo de fuga y reiteración delictiva del expresidente de la Comunidad de Madrid', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/02/actualidad/1496407760_313194_1496407829_miniatura_normal.jpg', 16, 162),
('http://politica.elpais.com/politica/2017/06/05/actualidad/1496679897_440609.html#?ref=rss&format=simple&link=link', 'Rivera acordó con Rajoy proteger al máximo a los funcionarios en Cataluña', 'Conclusión de la ronda de contactos de los responsables sindicales del CSIF con los líderes de PP, Ciudadanos y PSOE', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/05/actualidad/1496679897_440609_1496690275_miniatura_normal.jpg', 16, 147),
('http://politica.elpais.com/politica/2017/06/05/diario_de_espana/1496686371_690963.html#?ref=rss&format=simple&link=link', 'Cuando llevar el velo islámico te deja sin trabajo', 'Mujeres musulmanas residentes en España reivindican que la decisión de usar hiyab no condicione su vida laboral', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/05/diario_de_espana/1496686371_690963_1496686643_miniatura_normal.jpg', 16, 179),
('http://politica.elpais.com/politica/2017/06/06/actualidad/1496733126_767310.html#?ref=rss&format=simple&link=link', 'La doctora Pinto identifica “sin género de dudas” a Villarejo como autor de su apuñalamiento', 'La víctima señala al comisario jubilado como la persona que la asaltó cuando recogía a su hijo', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/06/actualidad/1496733126_767310_1496927076_miniatura_normal.jpg', 16, 165),
('http://politica.elpais.com/politica/2017/06/06/actualidad/1496733334_962776.html#?ref=rss&format=simple&link=link', 'El juez procesa al expresidente de Murcia por la Púnica', 'Pedro Antonio Sánchez asegura que solo se reunió una vez con los conseguidores de la trama y después de que estos lo solicitaran en múltiples ocasiones', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/06/actualidad/1496733334_962776_1496738932_miniatura_normal.jpg', 16, 164),
('http://politica.elpais.com/politica/2017/06/06/actualidad/1496743027_196639.html#?ref=rss&format=simple&link=link', '‘Spinner’, el juguete del que todos hablan', 'EL PAÍS lanza una nueva colección con cuatro modelos diferentes del entretenimiento de moda, a la venta este fin de semana con el periódico', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/06/actualidad/1496743027_196639_1496938800_miniatura_normal.jpg', 16, 186),
('http://politica.elpais.com/politica/2017/06/06/actualidad/1496743349_854994.html#?ref=rss&format=simple&link=link', 'El Rey inaugura el pabellón de España en la Expo Internacional de Astaná', 'La propuesta española se centra en las energías renovables y su investigación y desarrollo', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/06/actualidad/1496743349_854994_1496744541_miniatura_normal.jpg', 16, 141),
('http://politica.elpais.com/politica/2017/06/06/actualidad/1496748322_797924.html#?ref=rss&format=simple&link=link', 'El Poder Judicial archiva la investigación sobre si el juez Velasco pidió trabajo para su mujer a Ignacio González', 'La autoridad disciplinaria del Poder Judicial considera que la denuncia está basada en informaciones periodísticas \"carentes de sustento\"', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/06/actualidad/1496748322_797924_1496748855_miniatura_normal.jpg', 16, 163),
('http://politica.elpais.com/politica/2017/06/06/actualidad/1496757234_648644.html#?ref=rss&format=simple&link=link', 'De la Mata da seis meses a la fiscalía para acabar la investigación del ‘caso Gürtel’', 'El juez de la Audiencia Nacional rechaza la prórroga de un año que pidió Anticorrupción', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/06/actualidad/1496757234_648644_1496757470_miniatura_normal.jpg', 16, 159),
('http://politica.elpais.com/politica/2017/06/06/actualidad/1496769450_153013.html#?ref=rss&format=simple&link=link', 'Los grupos imponen al PP que Bárcenas abra la comisión de investigación', 'Mariano Rajoy será el último que hable en el Congreso sobre la presunta financiación ilegal del PP', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/06/actualidad/1496769450_153013_1496769718_miniatura_normal.jpg', 16, 153),
('http://politica.elpais.com/politica/2017/06/06/actualidad/1496772500_235082.html#?ref=rss&format=simple&link=link', 'Rajoy prepara a fondo la moción de censura de Pablo Iglesias', 'El presidente aún no ha decidido si responderá él mismo al líder de Podemos', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/06/actualidad/1496772500_235082_1496773624_miniatura_normal.jpg', 16, 157),
('http://politica.elpais.com/politica/2017/06/06/actualidad/1496775880_283649.html#?ref=rss&format=simple&link=link', 'Siete jóvenes denuncian que un dron les grabó mientras tomaban el sol desnudas en un barco en Mallorca', 'La Guardia Civil ha identificado a los autores que filmaron las imágenes desde un yate de lujo cercano', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/06/actualidad/1496775880_283649_1496778384_miniatura_normal.jpg', 16, 175),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496787236_169838.html#?ref=rss&format=simple&link=link', 'El español Echeverría, un héroe entre los muertos en el ataque de Londres', 'Las hermanas de la víctima han confirmado su fallecimiento a través de Facebook', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496787236_169838_1496788326_miniatura_normal.jpg', 16, 170),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496836140_810677.html#?ref=rss&format=simple&link=link', 'El mapa de los accidentes de bicicleta en las carreteras', 'Cuatro provincias concentran más del 25% de los siniestros, según los datos de la DGT', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496836140_810677_1496842876_miniatura_normal.png', 16, 132),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496837609_528560.html#?ref=rss&format=simple&link=link', 'El Pacto de Estado contra la violencia de género “reforzará el Código Penal”', 'Sanidad ha firmado acuerdos con cuatro compañías de móviles para borrar el rastro del 016 y con las farmacias para que alerten si detectan casos de maltrato', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496837609_528560_1496852575_miniatura_normal.jpg', 16, 184),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496850207_106214.html#?ref=rss&format=simple&link=link', 'La muerte de uno de los abuelos eleva a cinco los fallecidos en el incendio de Bilbao', 'El abogado Marcos García Montes acusará al Ayuntamiento por homicidio imprudente, lesiones y negligencias', '2017-06-10', 'http://ep00.epimg.net/ccaa/imagenes/2017/05/27/paisvasco/1495867011_125921_1495877705_miniatura_normal.jpg', 16, 174),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496851164_631122.html#?ref=rss&format=simple&link=link', 'Fiscales progresistas se quejan de que Justicia “censura” sus cursos de formación', 'La UPF considera que la “revisión de contenidos” de sus ponencias que hace el ministerio vulnera la autonomía de la fiscalía', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496851164_631122_1496851356_miniatura_normal.jpg', 16, 169),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496853817_944655.html#?ref=rss&format=simple&link=link', 'Los radares que anunció la DGT y nunca han llegado', 'Tráfico nunca compró los cinemómetros para las motos de la Guardia Civil que destacó el pasado verano en su plan para reducir la siniestralidad', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496853817_944655_1496931638_miniatura_normal.jpg', 16, 178),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496857466_223951.html#?ref=rss&format=simple&link=link', 'Pacientes y sanitarios aplauden las donaciones de Amancio Ortega', 'La Federación en Defensa de la Sanidad Pública critica que condiciona la organización del sistema', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496857466_223951_1496858747_miniatura_normal.jpg', 16, 180),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496857971_163957.html#?ref=rss&format=simple&link=link', '“La última vez que vi a Ignacio estaba consciente, en el suelo y con el patín en la mano”', 'Uno de los dos amigos que estaba con el español fallecido en el atentado de Londres narra cómo ocurrió el ataque', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496857971_163957_1496860228_miniatura_normal.jpg', 16, 140),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496859711_899818.html#?ref=rss&format=simple&link=link', 'Siete folios del ‘caso Púnica’ contra el comisario Villarejo', 'La doctora que denunció a López Madrid por acoso pide sumar a la causa documentos del sumario de corrupción', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496859711_899818_1496861370_miniatura_normal.jpg', 16, 158),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496867404_902889.html#?ref=rss&format=simple&link=link', 'Muere un policía durante una persecución de contrabandistas en La Línea', 'El agente ha fallecido en un accidente mientras trataba de capturar a un vehículo sospechoso, según el alcalde', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496867404_902889_1496874063_miniatura_normal.jpg', 16, 172),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496904169_790823.html#?ref=rss&format=simple&link=link', 'El juez del ‘caso Auditorio’ critica las “fabulosas confabulaciones” de las acusaciones', 'El magistrado Pérez-Templano apunta a un próximo archivo de la causa que obligó a dimitir de la presidencia de Murcia al popular Pedro Antonio Sánchez.', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496904169_790823_1496905103_miniatura_normal.jpg', 16, 167),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496912401_419080.html#?ref=rss&format=simple&link=link', '10 millones de euros para los CIE', 'Apenas el 23% de las repatriaciones de 2016 se hizo desde los centros de internamiento de extranjeros. Tres de cada cuatro internos procedían directamente de una patera', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496912401_419080_1496912909_miniatura_normal.jpg', 16, 176),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496913111_575299.html#?ref=rss&format=simple&link=link', 'El “discurso del odio” invade la Red, según un informe de Interior', 'El 42,3% de las amenazas e injurias se producen en Internet', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496913111_575299_1496919224_miniatura_normal.jpg', 16, 144),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496914392_153334.html#?ref=rss&format=simple&link=link', 'Un juez manda al banquillo a ‘Kichi’, pese a que la fiscalía pide su absolución', 'El alcalde de Cádiz se sentará en el banquillo acusado de injurias tras apuntar que el PP suministró agua contaminada', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496914392_153334_1496914530_miniatura_normal.jpg', 16, 168),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496919122_787115.html#?ref=rss&format=simple&link=link', 'La AVT impulsa una respuesta conjunta europea para las víctimas de terrorismo', 'La asociación española promueve la asistencia inmediata, integral y coordinada para atentados con \"evidente componente de transnacionalidad\"', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496919122_787115_1496919771_miniatura_normal.jpg', 16, 183),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496928337_167799.html#?ref=rss&format=simple&link=link', 'Colombia incauta 262.000 euros al ‘número dos’ del caso Lezo', 'La Audiencia rechaza poner en libertad a Edmundo Rodríguez Sobrino, testaferro de Ignacio González', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496928337_167799_1496929120_miniatura_normal.jpg', 16, 160),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496930009_671212.html#?ref=rss&format=simple&link=link', 'Juntos desde 1976', 'EL PAÍS homenajea a los suscriptores que acompañan al diario desde su llegada a los quioscos, hace 41 años', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496930009_671212_1496943055_miniatura_normal.jpg', 16, 185),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496933024_470959.html#?ref=rss&format=simple&link=link', 'El Constitucional anula la amnistía fiscal y deja en evidencia a Montoro', 'La sentencia apenas tiene efectos prácticos, pero supone un duro varapalo al Ejecutivo de Rajoy', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496933024_470959_1496933420_miniatura_normal.jpg', 16, 135),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496933576_152714.html#?ref=rss&format=simple&link=link', 'El juez Velasco seguirá al frente de los casos Lezo y Púnica hasta que llegue García Castellón', 'El titular del juzgado de instrucción 6 de la Audiencia Nacional se incorporará a mediados de julio', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496933576_152714_1496933694_miniatura_normal.jpg', 16, 161),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496938703_348757.html#?ref=rss&format=simple&link=link', 'Detenido en Ibiza un británico sospechoso de descuartizar a una bailarina en Tailandia', 'La Audiencia Nacional ha decretado su ingreso en prisión hasta que sea extraditado', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496938703_348757_1496939391_miniatura_normal.jpg', 16, 173),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496939795_712768.html#?ref=rss&format=simple&link=link', 'El héroe que durante años luchó contra el terrorismo', 'Ignacio Echeverría dedicó su vida profesional a vigilar posibles operaciones bancarias para financiar terrorismo. Así es un héroe a través de los ojos de amigos y familiares', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496939795_712768_1496939908_miniatura_normal.jpg', 16, 171),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496940383_373196.html#?ref=rss&format=simple&link=link', 'Aznar agrava la tensión entre el PP y Ciudadanos con sus guiños a Rivera', 'El expresidente invita al socio de investidura de Rajoy a dar una conferencia', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496940383_373196_1496940627_miniatura_normal.jpg', 16, 155),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496944920_900334.html#?ref=rss&format=simple&link=link', 'La polémica celda 61 de la cárcel de Palencia', 'Un sindicato denuncia que Prisiones tuvo a cinco reclusos sospechosos de portar droga en su organismo durante días en una celda sin agua corriente', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496944920_900334_1496947347_miniatura_normal.jpg', 16, 145),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496945334_897059.html#?ref=rss&format=simple&link=link', 'Ábalos: “Desde la izquierda queremos ganar el centroizquierda”', 'Sánchez le quiere al frente de la organización del PSOE pero no ha decidido si dejará del todo la responsabilidad parlamentaria', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496945334_897059_1496945420_miniatura_normal.jpg', 16, 152),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496951773_538450.html#?ref=rss&format=simple&link=link', 'Navarra, el reto de la convivencia', 'La presidenta, Uxue Barkos, cumple dos años al frente del Gobierno de una comunidad dividida', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496951773_538450_1496952133_miniatura_normal.jpg', 16, 142),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496952815_316802.html#?ref=rss&format=simple&link=link', 'El incremento de coches patera colapsa Ceuta', 'De los 12.000 vehículos que transitan a diario por el paso fronterizo, el 85% van cargados de mercancías para su importación irregular', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496952815_316802_1496953363_miniatura_normal.jpg', 16, 143),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496955346_018869.html#?ref=rss&format=simple&link=link', 'El PP neutraliza la moción de Podemos contra Cifuentes', 'Los populares lograron desactivar el debate con su versión más bronca', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496955346_018869_1496955572_miniatura_normal.jpg', 16, 156),
('http://politica.elpais.com/politica/2017/06/09/actualidad/1496992936_530477.html#?ref=rss&format=simple&link=link', 'El padre de Ignacio Echeverría ensalza a los amigos de su hijo en una carta', 'El cuerpo del español, muerto al defender a una mujer en el ataque de Londres, llegará este sábado a Madrid', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/09/actualidad/1496992936_530477_1496994275_miniatura_normal.jpg', 16, 128),
('http://politica.elpais.com/politica/2017/06/09/actualidad/1496994693_323874.html#?ref=rss&format=simple&link=link', 'El PSOE promueve la reprobación de Montoro', 'El PP admite ahora “fallos y errores” en la amnistía fiscal exprés de Montoro', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/09/actualidad/1496994693_323874_1496994928_miniatura_normal.jpg', 16, 154),
('http://politica.elpais.com/politica/2017/06/09/actualidad/1496996665_358596.html#?ref=rss&format=simple&link=link', 'El PP cree que Rajoy intervendrá en la moción de censura de Podemos', 'Los populares se preparan para un debate duro sobre corrupción y confían en la capacidad parlamentaria de su líder', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/09/actualidad/1496996665_358596_1496996793_miniatura_normal.jpg', 16, 136),
('http://politica.elpais.com/politica/2017/06/09/actualidad/1497005855_347783.html#?ref=rss&format=simple&link=link', 'Susana Díaz relanza las políticas de sanidad, educación y empleo con el cambio de Gobierno', 'La presidenta andaluza presenta un nuevo Ejecutivo tras renovar seis consejerías', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/09/actualidad/1497005855_347783_1497008064_miniatura_normal.jpg', 16, 134),
('http://politica.elpais.com/politica/2017/06/09/actualidad/1497009799_291689.html#?ref=rss&format=simple&link=link', 'El Gobierno nombra a Paz Esteban ‘número dos’ del servicio secreto CNI', 'La nueva secretaria general sustituye a Beatriz Méndez de Vigo y es la quinta mujer que ocupa este cargo desde 2002', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/09/actualidad/1497009799_291689_1497012093_noticia_normal.jpg', 16, 138),
('http://politica.elpais.com/politica/2017/06/09/actualidad/1497010483_875946.html#?ref=rss&format=simple&link=link', 'Los cigarrillos electrónicos también llevarán advertencias sanitarias', 'El Gobierno prohíbe los paquetes de menos de 20 cigarrillos y el tabaco con aromas especiales', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/09/actualidad/1497010483_875946_1497011549_miniatura_normal.jpg', 16, 129),
('http://politica.elpais.com/politica/2017/06/09/actualidad/1497015156_690429.html#?ref=rss&format=simple&link=link', 'Las dianas vuelven a Euskadi', 'Varias sedes del PP y del PSE aparecen con dianas amenazantes seis años después del fin de ETA', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/09/actualidad/1497015156_690429_1497015525_miniatura_normal.jpg', 16, 137),
('http://politica.elpais.com/politica/2017/06/09/actualidad/1497016078_666550.html#?ref=rss&format=simple&link=link', 'Marina Castaño se sentará en el banquillo frente a un jurado popular', 'La juez rechaza los últimos recursos a los que se aferraba la viuda de Cela', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/09/actualidad/1497016078_666550_1497020998_miniatura_normal.jpg', 16, 131),
('http://politica.elpais.com/politica/2017/06/09/actualidad/1497026126_358165.html#?ref=rss&format=simple&link=link', 'Ascensión Mendieta recupera a los 91 años los restos de su padre, fusilado en 1939', 'Los restos han sido identificados por ADN después de que una juez argentina ordenara buscarle en dos fosas de Guadalajara', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/09/actualidad/1497026126_358165_1497027455_miniatura_normal.jpg', 16, 126),
('http://politica.elpais.com/politica/2017/06/09/actualidad/1497029973_172160.html#?ref=rss&format=simple&link=link', 'El Gobierno pacta con PSOE y Rivera no sobreactuar con Cataluña', 'La vicepresidenta consensuó con Iceta y Villegas la respuesta medida del ejecutivo a la declaración unilateral y verbal que fijó la fecha del referéndum', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/09/actualidad/1497029973_172160_1497031687_miniatura_normal.jpg', 16, 291),
('http://politica.elpais.com/politica/2017/06/09/actualidad/1497032541_767935.html#?ref=rss&format=simple&link=link', 'Historia de un desafío en cinco actos', 'La Generalitat marca un nuevo horizonte de ruptura tras un lustro de hechos consumados fuera de la ley', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/09/actualidad/1497032541_767935_1497032638_miniatura_normal.jpg', 16, 123),
('http://politica.elpais.com/politica/2017/06/09/actualidad/1497033021_778764.html#?ref=rss&format=simple&link=link', 'El salario mínimo no entra en la cárcel', 'El 23,9% de los reclusos tiene un empleo remunerado en prisión, pero la mitad de ellos gana menos de 200 euros', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/09/actualidad/1497033021_778764_1497033629_noticia_normal.png', 16, 127),
('http://politica.elpais.com/politica/2017/06/09/actualidad/1497034672_759170.html#?ref=rss&format=simple&link=link', 'La Audiencia rechaza apartar a los policías del ‘caso Nicolay’', 'El comisario Villarejo y otros dos imputados pedían anular sus pesquisas', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/09/actualidad/1497034672_759170_1497035305_miniatura_normal.jpg', 16, 130),
('http://politica.elpais.com/politica/2017/06/10/actualidad/1497079516_154480.html#?ref=rss&format=simple&link=link', 'Llega a España el cuerpo de Ignacio Echeverría', 'La autopsia revela que la causa de su muerte fue “una puñalada en la espalda”', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/10/actualidad/1497079516_154480_1497107998_miniatura_normal.jpg', 16, 125),
('http://politica.elpais.com/politica/2017/06/10/actualidad/1497084656_192398.html#?ref=rss&format=simple&link=link', 'La exministra Cristina Narbona acepta presidir el PSOE', 'La que fue responsable de la cartera de Medio Ambiente abandonará su puesto actual en el Consejo de Seguridad Nuclear', '2017-06-10', 'http://ep00.epimg.net/politica/imagenes/2017/06/10/actualidad/1497084656_192398_1497085031_miniatura_normal.jpg', 16, 133);

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
  `link_image` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `channel`
--

INSERT INTO `channel` (`channel_id`, `link`, `title`, `last_build_date`, `language`, `description`, `copyright`, `title_image`, `url_image`, `link_image`) VALUES
(1, 'http://localhost:8080/', 'DsNews', '2017-06-09', 'ES', 'Periodico digital DsNews', 'Dsnews 2017 TOdos los derechos Reservados', 'Logo DsNews', 'http://localhost:8080/DSNews/recursos/images/logo.png', 'http://localhost:8080/DSNews/recursos/images/logo.png');

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
-- Estructura de tabla para la tabla `newspapers`
--

DROP TABLE IF EXISTS `newspapers`;
CREATE TABLE `newspapers` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `newspapers`
--

INSERT INTO `newspapers` (`id`, `name`, `logo`) VALUES
(1, 'El pais', 'http://s03.s3c.es/imag/_v0/640x300/c/e/b/elpaislogogrande.jpg'),
(2, 'La vanguardia', 'http://crucigramasapp.com/static/img/lavanguardia.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rss_feeds`
--

DROP TABLE IF EXISTS `rss_feeds`;
CREATE TABLE `rss_feeds` (
  `id` int(11) NOT NULL,
  `link` text COLLATE utf8_spanish_ci NOT NULL,
  `section_id` int(11) NOT NULL,
  `newspaper_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `rss_feeds`
--

INSERT INTO `rss_feeds` (`id`, `link`, `section_id`, `newspaper_id`) VALUES
(16, 'http://ep00.epimg.net/rss/politica/portada.xml', 1, 1),
(27, 'http://ep00.epimg.net/rss/deportes/portada.xml', 7, 1),
(28, 'http://ep00.epimg.net/rss/economia/portada.xml', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sections`
--

DROP TABLE IF EXISTS `sections`;
CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `sections`
--

INSERT INTO `sections` (`id`, `name`, `description`) VALUES
(1, 'Nacional', 'Seccion naccional'),
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
-- Indices de la tabla `articles_desoft`
--
ALTER TABLE `articles_desoft`
  ADD PRIMARY KEY (`guid`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `channel_id` (`channel_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indices de la tabla `articles_rss`
--
ALTER TABLE `articles_rss`
  ADD PRIMARY KEY (`link`),
  ADD KEY `id_rss` (`rss_id`);

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
-- Indices de la tabla `newspapers`
--
ALTER TABLE `newspapers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rss_feeds`
--
ALTER TABLE `rss_feeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `newspaper_id` (`newspaper_id`);

--
-- Indices de la tabla `sections`
--
ALTER TABLE `sections`
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
-- AUTO_INCREMENT de la tabla `articles_desoft`
--
ALTER TABLE `articles_desoft`
  MODIFY `guid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de la tabla `channel`
--
ALTER TABLE `channel`
  MODIFY `channel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `newspapers`
--
ALTER TABLE `newspapers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `rss_feeds`
--
ALTER TABLE `rss_feeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `sections`
--
ALTER TABLE `sections`
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
-- Filtros para la tabla `articles_desoft`
--
ALTER TABLE `articles_desoft`
  ADD CONSTRAINT `articles_desoft_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `articles_desoft_ibfk_2` FOREIGN KEY (`channel_id`) REFERENCES `channel` (`channel_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articles_desoft_ibfk_3` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `articles_rss`
--
ALTER TABLE `articles_rss`
  ADD CONSTRAINT `articles_rss_ibfk_1` FOREIGN KEY (`rss_id`) REFERENCES `rss_feeds` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `articles_desoft` (`guid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `rss_feeds`
--
ALTER TABLE `rss_feeds`
  ADD CONSTRAINT `rss_feeds_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rss_feeds_ibfk_2` FOREIGN KEY (`newspaper_id`) REFERENCES `newspapers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
