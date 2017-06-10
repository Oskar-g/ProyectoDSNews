-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-06-2017 a las 23:27:07
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
(22, 'fasdasd', 'fasdasd', '<p>fasdasdasdasdasdasd</p>', '2017-06-09', 'fasdasdasd', 'asd', 1, 1, 1),
(24, 'china china china ', 'chiquitina tina tinaaa', '<p><strong>asasfasd</strong></p>\r\n<p><em><strong>fasdasd</strong></em></p>', '2017-06-10', 'Chicles de la esterilidad ya a la venta', '', 2, 1, 2),
(27, 'fasdasdaaaa', 'fasdasd', '<p>gdafgdfdfghdhd</p>', '2017-06-10', 'hdfghdghd', '', 2, 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles_rss`
--

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
('http://deportes.elpais.com/deportes/2017/05/28/actualidad/1495988544_872256.html#?ref=rss&format=simple&link=link', 'Aquí no se rinde nadie', '\'¿Quién dijo rendirse?\' concentra una larga conversación entre Fernando Torres y Carlos Matallanas sobre fútbol y la ELA', '2017-05-28', 'http://ep00.epimg.net/deportes/imagenes/2017/05/28/actualidad/1495988544_872256_1495988762_miniatura_normal.jpg', 27, 22),
('http://deportes.elpais.com/deportes/2017/05/28/actualidad/1495999674_230237.html#?ref=rss&format=simple&link=link', 'La revelación Gaviria sacude el Giro', 'Colombia lanza al estrellato a otro ciclista, un sprinter que rompe con la imagen de los escarabajos escaladores de toda la vida', '2017-05-28', 'http://ep00.epimg.net/deportes/imagenes/2017/05/28/actualidad/1495999674_230237_1495999889_miniatura_normal.jpg', 27, 14),
('http://deportes.elpais.com/deportes/2017/05/30/actualidad/1496139328_921199.html#?ref=rss&format=simple&link=link', 'El ‘loco’ que corre para atrás', 'El mexicano Diego Polino termina el Ironman de Lanzarote con una maratón de espaldas en cinco horas', '2017-05-30', 'http://ep00.epimg.net/deportes/imagenes/2017/05/30/actualidad/1496139328_921199_1496139446_miniatura_normal.jpg', 27, 15),
('http://deportes.elpais.com/deportes/2017/06/01/actualidad/1496339083_075131.html#?ref=rss&format=simple&link=link', 'Valverde da el perfil', 'El técnico superó más requisitos que nadie en la lista que creó la comisión deportiva', '2017-06-02', 'http://ep00.epimg.net/deportes/imagenes/2017/06/01/actualidad/1496339083_075131_1496339191_miniatura_normal.jpg', 27, 32),
('http://deportes.elpais.com/deportes/2017/06/03/actualidad/1496515090_043921.html#?ref=rss&format=simple&link=link', 'Volver a empezar, volver a ganar', 'Una generación de madridistas nacida a partir de 1981 no sabe lo que es perder una final de Champions', '2017-06-04', 'http://ep00.epimg.net/deportes/imagenes/2017/06/03/actualidad/1496515090_043921_1496525321_miniatura_normal.jpg', 27, 40),
('http://deportes.elpais.com/deportes/2017/06/04/actualidad/1496568361_016479.html#?ref=rss&format=simple&link=link', 'La sorpresa perdida del viejo tenis', 'Toni Nadal relata desde París sus experiencias, en exclusiva, para los lectores de EL PAÍS', '2017-06-05', 'http://ep00.epimg.net/deportes/imagenes/2017/06/04/actualidad/1496568361_016479_1496606047_miniatura_normal.jpg', 27, 42),
('http://deportes.elpais.com/deportes/2017/06/04/actualidad/1496587736_243293.html#?ref=rss&format=simple&link=link', '¿El Madrid no existe?', 'Nos gusta pensar que quienes viven como si el fútbol no existiese, y creen que la Champions es un relato escrito sin contrastar si realmente pasó o es un rumor, fingen', '2017-06-04', 'http://ep00.epimg.net/deportes/imagenes/2017/06/04/actualidad/1496587736_243293_1496587908_miniatura_normal.jpg', 27, 41),
('http://deportes.elpais.com/deportes/2017/06/04/actualidad/1496589852_737965.html#?ref=rss&format=simple&link=link', 'Real Zidane Club de Fútbol', 'Ha logrado mucho más que dos Copas de Europa, una Liga, un Mundialito y una Supercopa Europea: ha hecho del vestuario su parroquia', '2017-06-04', 'http://ep00.epimg.net/deportes/imagenes/2017/06/04/actualidad/1496589852_737965_1496645144_miniatura_normal.jpg', 27, 43),
('http://deportes.elpais.com/deportes/2017/06/04/actualidad/1496596635_118171.html#?ref=rss&format=simple&link=link', 'No bastó con tres goles de Puskas', 'El Real Madrid solo ha perdido tres finales de Copa de Europa. La que más dolió fue la del Benfica en 1962', '2017-06-05', 'http://ep00.epimg.net/deportes/imagenes/2017/06/04/actualidad/1496596635_118171_1496596838_miniatura_normal.jpg', 27, 25),
('http://deportes.elpais.com/deportes/2017/06/04/actualidad/1496598560_371865.html#?ref=rss&format=simple&link=link', 'El nuevo ciclo del Real Madrid', 'Asensio, que marcó en el primer y el último partido del año, encarna el futuro de un Madrid que mezlca su talento y el de Isco con la veteranía y experiencia de Ramos y Cristiano', '2017-06-05', 'http://ep00.epimg.net/deportes/imagenes/2017/06/04/actualidad/1496598560_371865_1496601701_miniatura_normal.jpg', 27, 24),
('http://deportes.elpais.com/deportes/2017/06/04/actualidad/1496603217_401643.html#?ref=rss&format=simple&link=link', '“A dónde vas, Casemiro”', '“Dadme cinco partidos y demostraré que puedo ser titular”, dijo en 2013 ante la sorpresa del cuerpo técnico', '2017-06-05', 'http://ep00.epimg.net/deportes/imagenes/2017/06/04/actualidad/1496603217_401643_1496606481_miniatura_normal.jpg', 27, 23),
('http://deportes.elpais.com/deportes/2017/06/04/actualidad/1496608413_898116.html#?ref=rss&format=simple&link=link', 'Yo vi jugar a Luka Modric', 'En aquella memorable segunda parte, el croata se metió el partido en el bolsillo e hizo con él lo que quiso', '2017-06-06', 'http://ep00.epimg.net/deportes/imagenes/2017/06/04/actualidad/1496608413_898116_1496608576_miniatura_normal.jpg', 27, 44),
('http://deportes.elpais.com/deportes/2017/06/04/actualidad/1496611721_083813.html#?ref=rss&format=simple&link=link', 'La celebración de la Doudécima: Liga, Champions y ¿Balón de Oro?', 'El Madrid ofrece el doblete a su afición, que postula al portugués como ganador del máximo galardón individual', '2017-06-05', 'http://ep00.epimg.net/deportes/imagenes/2017/06/04/actualidad/1496611721_083813_1496659028_miniatura_normal.jpg', 27, 26),
('http://deportes.elpais.com/deportes/2017/06/05/actualidad/1496651478_050335.html#?ref=rss&format=simple&link=link', 'La duodécima desde dentro: del gol de Cristiano Jr. a los vídeos de Sergio Ramos', 'Las imágenes más personales difundidas en las redes sociales por los jugadores del Real Madrid', '2017-06-05', 'http://ep00.epimg.net/deportes/imagenes/2017/06/05/actualidad/1496651478_050335_1496658307_miniatura_normal.jpg', 27, 27),
('http://deportes.elpais.com/deportes/2017/06/05/actualidad/1496665593_158976.html#?ref=rss&format=simple&link=link', 'Draft de la Liga MX 2017: Altas y bajas', 'Así se ha desarrollado el régimen de transferencias del fútbol mexicano', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/05/actualidad/1496665593_158976_1496884572_miniatura_normal.jpg', 27, 45),
('http://deportes.elpais.com/deportes/2017/06/05/actualidad/1496682488_523803.html#?ref=rss&format=simple&link=link', 'Delfí Geli: “Debemos gestionar con rigor para que esto no sea flor de un día”', 'El exfutbolista y presidente del Girona reflexiona sobre el ascenso de su equipo', '2017-06-06', 'http://ep00.epimg.net/deportes/imagenes/2017/06/05/actualidad/1496682488_523803_1496771410_miniatura_normal.jpg', 27, 36),
('http://deportes.elpais.com/deportes/2017/06/05/actualidad/1496683564_022546.html#?ref=rss&format=simple&link=link', 'Viñales y el valor de saber cuándo y cómo arriesgar, en Le Mans o Mugello', 'El piloto de Yamaha, muy agresivo en los finales de carrera, aprende a ser segundo', '2017-06-05', 'http://ep00.epimg.net/deportes/imagenes/2017/06/05/actualidad/1496683564_022546_1496684956_miniatura_normal.jpg', 27, 28),
('http://deportes.elpais.com/deportes/2017/06/05/actualidad/1496688068_254141.html#?ref=rss&format=simple&link=link', '“Valverde lo hará muy bien”', 'Guardiola, Begiristain y Koeman defienden la apuesta del Barça y marcan distancia con el Madrid de Zidane', '2017-06-05', 'http://ep00.epimg.net/deportes/imagenes/2017/06/05/actualidad/1496688068_254141_1496689564_miniatura_normal.jpg', 27, 34),
('http://deportes.elpais.com/deportes/2017/06/05/actualidad/1496689765_085229.html#?ref=rss&format=simple&link=link', 'Pepe: “Hay cosas de Zidane que no entiendo”', 'El central portugués, al que el club dijo ayer que quería organizarle una despedida, se queja en una entrevista en la COPE del trato recibido', '2017-06-06', 'http://ep00.epimg.net/deportes/imagenes/2017/06/05/actualidad/1496689765_085229_1496690378_miniatura_normal.jpg', 27, 33),
('http://deportes.elpais.com/deportes/2017/06/05/actualidad/1496693493_895314.html#?ref=rss&format=simple&link=link', 'Darvin Chávez, del olimpo al desempleo', 'Uno de los futbolistas campeones de los Juegos Olímpicos en Londres 2012 acude al régimen de transferencias en busca de un club que le contrate', '2017-06-06', 'http://ep00.epimg.net/deportes/imagenes/2017/06/05/actualidad/1496693493_895314_1496694422_miniatura_normal.jpg', 27, 16),
('http://deportes.elpais.com/deportes/2017/06/06/actualidad/1496749961_391870.html#?ref=rss&format=simple&link=link', 'El Supremo falla contra Marta Domínguez y ratifica la legalidad del pasaporte biológico', 'El tribunal rechaza un recurso de la exatleta, que alegaba que la toma de muestras sanguíneas vulneraba "su derecho a la intimidad”', '2017-06-06', 'http://ep00.epimg.net/deportes/imagenes/2017/06/06/actualidad/1496749961_391870_1496750444_miniatura_normal.jpg', 27, 17),
('http://deportes.elpais.com/deportes/2017/06/06/actualidad/1496753084_364551.html#?ref=rss&format=simple&link=link', 'Nadal accede a las semifinales por abandono de Carreño', 'El asturiano se retira por una lesión abdominal, cuando ya había cedido el primer parcial ante el balear, que se batirá el viernes por un puesto en la final con el austriaco Thiem (7-6, 6-3 y 6-0 a Djokovic)', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/06/actualidad/1496753084_364551_1496830197_miniatura_normal.jpg', 27, 1),
('http://deportes.elpais.com/deportes/2017/06/06/actualidad/1496764041_442410.html#?ref=rss&format=simple&link=link', 'El Barcelona busca actores principales', 'El club acometerá dos o tres fichajes de primer orden, que no consultará con Valverde, y otros tantos para completar la plantilla', '2017-06-07', 'http://ep00.epimg.net/deportes/imagenes/2017/06/06/actualidad/1496764041_442410_1496764135_miniatura_normal.jpg', 27, 35),
('http://deportes.elpais.com/deportes/2017/06/06/actualidad/1496772680_917633.html#?ref=rss&format=simple&link=link', 'La ACB, un mapa pendiente de Palencia', 'La composición definitiva de la Liga está a expensas de la resolución del ‘ascenso en diferido’ del equipo castellano', '2017-06-06', 'http://ep00.epimg.net/deportes/imagenes/2017/06/06/actualidad/1496772680_917633_1496772929_miniatura_normal.jpg', 27, 20),
('http://deportes.elpais.com/deportes/2017/06/06/actualidad/1496774677_791073.html#?ref=rss&format=simple&link=link', 'El Iberostar Tenerife ‘renueva’ con la FIBA', 'El equipo canario volverá a competir en la Basketball Champions League (BCL), competición de la que es campeón', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/06/actualidad/1496774677_791073_1496774796_miniatura_normal.jpg', 27, 19),
('http://deportes.elpais.com/deportes/2017/06/07/actualidad/1496822244_698187.html#?ref=rss&format=simple&link=link', 'España y Colombia empatan 2-2 en el amistoso en Murcia', 'Morata, en el minuto 87, iguala el partido para la selección de Lopetegui', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/07/actualidad/1496822244_698187_1496866566_miniatura_normal.jpg', 27, 3),
('http://deportes.elpais.com/deportes/2017/06/07/actualidad/1496824758_595452.html#?ref=rss&format=simple&link=link', 'Dominic Thiem, el fenómeno silencioso', 'Con un perfil mediático bajo, el austriaco está llamado a heredar el dominio en la tierra de Nadal, al que se medirá el viernes en las semifinales: "Está física y mentalmente preparado", advierte su entrenador', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/07/actualidad/1496824758_595452_1496845874_miniatura_normal.jpg', 27, 37),
('http://deportes.elpais.com/deportes/2017/06/07/actualidad/1496826818_729600.html#?ref=rss&format=simple&link=link', 'El Barcelona destituye a Bartzokas', 'El club azulgrana despide al técnico debido a su decepcionante temporada', '2017-06-07', 'http://ep00.epimg.net/deportes/imagenes/2017/06/07/actualidad/1496826818_729600_1496827206_miniatura_normal.jpg', 27, 49),
('http://deportes.elpais.com/deportes/2017/06/07/actualidad/1496834792_635199.html#?ref=rss&format=simple&link=link', 'Thiem tumba a Djokovic y amenaza a Nadal', 'El austriaco derrota por primera vez al serbio (7-6, 6-3 y 6-0) y aterriza ante el balear, al que venció hace tres semanas en los cuartos de Roma. "Le pega extremadamente duro a la bola", le elogia el mallorquín', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/07/actualidad/1496834792_635199_1496834903_miniatura_normal.jpg', 27, 2),
('http://deportes.elpais.com/deportes/2017/06/07/actualidad/1496847609_764914.html#?ref=rss&format=simple&link=link', 'Contador recobra el pulso contrarreloj y puede con Froome en la Dauphiné', 'Victoria de Richie Porte y tercer puesto de Alejandro Valverde, el mejor español', '2017-06-07', 'http://ep00.epimg.net/deportes/imagenes/2017/06/07/actualidad/1496847609_764914_1496849235_miniatura_normal.jpg', 27, 18),
('http://deportes.elpais.com/deportes/2017/06/07/actualidad/1496850143_150622.html#?ref=rss&format=simple&link=link', 'Márquez y Pedrosa, de paseo en globo: “Esto está demasiado alto”', 'Los pilotos del equipo Repsol Honda sobrevuelan Montmeló antes de subirse a la moto en el gran premio de Cataluña', '2017-06-07', 'http://ep00.epimg.net/deportes/imagenes/2017/06/07/actualidad/1496850143_150622_1496855480_miniatura_normal.jpg', 27, 29),
('http://deportes.elpais.com/deportes/2017/06/07/actualidad/1496851019_637356.html#?ref=rss&format=simple&link=link', 'Final NBA 2017: Warriors - Cavaliers | Calendario y resultados', 'Consulta las fechas y horarios de los partidos de los playoffs finales entre los Cleveland Cavaliers y los Golden State Warriors', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/07/actualidad/1496851019_637356_1496851131_miniatura_normal.jpg', 27, 21),
('http://deportes.elpais.com/deportes/2017/06/07/actualidad/1496852913_562538.html#?ref=rss&format=simple&link=link', 'El fútbol y las secciones del Barça se quedan en blanco en Europa', 'El club considera que las diferencias fiscales con los rivales, la NBA y el poder económico de algunos magnates limitan la competitividad de sus equipos', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/07/actualidad/1496852913_562538_1496854541_miniatura_normal.jpg', 27, 51),
('http://deportes.elpais.com/deportes/2017/06/07/actualidad/1496853364_137661.html#?ref=rss&format=simple&link=link', 'El Barcelona defiende la “rigurosidad y honorabilidad” del contrato con Qatar', 'El club ingresó 171 millones de euros entre 2010 y 2016 por el patrocinio del Estado árabe', '2017-06-07', 'http://ep00.epimg.net/deportes/imagenes/2017/06/07/actualidad/1496853364_137661_1496853599_miniatura_normal.jpg', 27, 50),
('http://deportes.elpais.com/deportes/2017/06/07/actualidad/1496862028_650925.html#?ref=rss&format=simple&link=link', '“¿Pero qué coño haces? ¡Tengo que marcar el cuarto!”', 'El sumario del Barcelona B-Eldense (12-0) destapa un vestuario alicantino roto por las apuestas y un cruce de acusaciones de corrupción, e implica también al Cornellà', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/07/actualidad/1496862028_650925_1496862226_miniatura_normal.jpg', 27, 8),
('http://deportes.elpais.com/deportes/2017/06/07/actualidad/1496863575_652109.html#?ref=rss&format=simple&link=link', 'España y Colombia quedan en paz', 'Un gol de Morata en el minuto 87 del partido evita la primera derrota de la era Lopetegui', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/07/actualidad/1496863575_652109_1496871255_miniatura_normal.jpg', 27, 6),
('http://deportes.elpais.com/deportes/2017/06/07/actualidad/1496864417_880282.html#?ref=rss&format=simple&link=link', 'Pitos redoblados contra Piqué', 'La Condomina atormenta al central del Barça en una deriva que no se aplaca', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/07/actualidad/1496864417_880282_1496871667_miniatura_normal.jpg', 27, 7),
('http://deportes.elpais.com/deportes/2017/06/07/actualidad/1496869406_644977.html#?ref=rss&format=simple&link=link', 'El robo del bombo de Manolo', 'El popular hincha de la selección española denuncia que han forzado su coche y le han sustraído el famoso instrumento', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/07/actualidad/1496869406_644977_1496869550_miniatura_normal.jpg', 27, 5),
('http://deportes.elpais.com/deportes/2017/06/07/actualidad/1496869681_116623.html#?ref=rss&format=simple&link=link', 'El Sevilla ficha a Berizzo', 'El club andaluz abre una nueva etapa con otro entrenador argentino, avalado por su etapa en el Celta y el margen de crecimiento que puede lograr en la entidad hispalense', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/07/actualidad/1496869681_116623_1496870149_miniatura_normal.jpg', 27, 46),
('http://deportes.elpais.com/deportes/2017/06/07/actualidad/1496869854_310403.html#?ref=rss&format=simple&link=link', 'La selección mexicana de fútbol americano que pidió dinero en la calle para jugar un Mundial', 'El equipo exclusivo de mujeres de México debe solventar sus propios gastos para competir, por primera vez, a nivel internacional', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/07/actualidad/1496869854_310403_1496870143_miniatura_normal.jpg', 27, 10),
('http://deportes.elpais.com/deportes/2017/06/08/actualidad/1496875199_519815.html#?ref=rss&format=simple&link=link', 'Costa: “Conte no me quiere. Estoy en el mercado”', 'El delantero anuncia que el técnico del Chelsea le ha dicho que no cuenta con él', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/08/actualidad/1496875199_519815_1496875314_miniatura_normal.jpg', 27, 9),
('http://deportes.elpais.com/deportes/2017/06/08/actualidad/1496887911_379833.html#?ref=rss&format=simple&link=link', 'El sprint de Durant y los Warriors funde los alardes de Irving y LeBron', 'Golden State endosa un 0-11 final a Cleveland (113-118) y acaricia el anillo (3-0)', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/08/actualidad/1496887911_379833_1496897145_miniatura_normal.jpg', 27, 54),
('http://deportes.elpais.com/deportes/2017/06/08/actualidad/1496904724_459034.html#?ref=rss&format=simple&link=link', 'Nadal - Thiem: horario y dónde ver la semifinal de Roland Garros en directo', 'El partido se juega este viernes 9 de nuevo a partir de las no antes de las 15.30 (hora española)', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/08/actualidad/1496904724_459034_1496904816_miniatura_normal.jpg', 27, 38),
('http://deportes.elpais.com/deportes/2017/06/08/actualidad/1496909334_910808.html#?ref=rss&format=simple&link=link', 'GP de Cataluña 2017 en Montmeló: horario y dónde ver MotoGP en vivo y en directo', 'El Mundial de Motociclismo se celebra este fin de semana en el circuit de Barcelona – Catalunya en Montmeló', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/08/actualidad/1496909334_910808_1496909633_miniatura_normal.jpg', 27, 30),
('http://deportes.elpais.com/deportes/2017/06/08/actualidad/1496911182_484962.html#?ref=rss&format=simple&link=link', 'GP de Canadá de F1 2017: horarios y dónde ver la carrera en vivo y en directo', 'La carrera del Mundial de Fórmula 1 se celebra el 11 de junio en el circuito de Gilles Villeneuve', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/08/actualidad/1496911182_484962_1496911782_miniatura_normal.jpg', 27, 31),
('http://deportes.elpais.com/deportes/2017/06/08/actualidad/1496913537_429238.html#?ref=rss&format=simple&link=link', 'El Madrid de las 12 copas', 'La imagen de Florentino Pérez con los trofeos es la representación de un equipo construido para ganar', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/08/actualidad/1496913537_429238_1496914058_miniatura_normal.jpg', 27, 53),
('http://deportes.elpais.com/deportes/2017/06/08/actualidad/1496920308_414945.html#?ref=rss&format=simple&link=link', 'Así recuperó la Armada el bombo de Manolo', 'El popular hincha de la selección española había denunciado un día antes el robo del instrumento', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/07/actualidad/1496869406_644977_1496869550_miniatura_normal.jpg', 27, 48),
('http://deportes.elpais.com/deportes/2017/06/08/actualidad/1496920609_348276.html#?ref=rss&format=simple&link=link', 'Mattia Pasini, triunfar con una discapacidad', 'El piloto italiano volvió a ganar después de siete años de sequía y con una moto adaptada', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/08/actualidad/1496920609_348276_1496924940_miniatura_normal.jpg', 27, 60),
('http://deportes.elpais.com/deportes/2017/06/08/actualidad/1496922159_040762.html#?ref=rss&format=simple&link=link', 'El Real Madrid convoca elecciones a presidente', 'El club anuncia el inicio del proceso sin concretar todavía la fecha de la votación', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/08/actualidad/1496922159_040762_1496923641_miniatura_normal.jpg', 27, 56),
('http://deportes.elpais.com/deportes/2017/06/08/actualidad/1496923723_767790.html#?ref=rss&format=simple&link=link', 'Nadal ahorra combustible', 'Con solo 7h 54m en cinco partidos, el balear es el semifinalista que menos tiempo ha invertido en la pista. Le superan tanto su rival, Thiem (9h 39m), como Murray (13h 43m) y Wawrinka (10h 43m)', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/08/actualidad/1496923723_767790_1496927642_miniatura_normal.jpg', 27, 39),
('http://deportes.elpais.com/deportes/2017/06/08/actualidad/1496926918_200622.html#?ref=rss&format=simple&link=link', 'México vs Honduras en vivo, eliminatorias mundialistas Rusia 2018', 'Sigue en directo este encuentro clasificatorio para la Copa Mundial', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/08/actualidad/1496926918_200622_1496927751_miniatura_normal.jpg', 27, 12),
('http://deportes.elpais.com/deportes/2017/06/08/actualidad/1496930896_611543.html#?ref=rss&format=simple&link=link', 'Thiem ha venido para quedarse', 'Toni Nadal relata desde París sus experiencias, en exclusiva, para los lectores de EL PAÍS', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/08/actualidad/1496930896_611543_1496931222_miniatura_normal.jpg', 27, 65),
('http://deportes.elpais.com/deportes/2017/06/08/actualidad/1496936130_575661.html#?ref=rss&format=simple&link=link', '“¡No puedes montar un amaño sin contar con quienes lo tienen que hacer!”', 'El sumario del caso Eldense contiene escenas delirantes tras un partido amañado con el Cornellà que no acabó como debía porque no todos lo sabían', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/08/actualidad/1496936130_575661_1496944594_miniatura_normal.jpg', 27, 63),
('http://deportes.elpais.com/deportes/2017/06/08/actualidad/1496936327_198380.html#?ref=rss&format=simple&link=link', 'Carlos Moyà: “Con Nadal el azar no existe”', 'El técnico radiografía el gran estado de forma del balear, quien hoy (15.30) encara a Thiem en las semifinales. Incide en la derecha, la ausencia de lesiones y la capacidad de superación del tenista', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/08/actualidad/1496936327_198380_1496948439_miniatura_normal.jpg', 27, 66),
('http://deportes.elpais.com/deportes/2017/06/08/actualidad/1496941108_296917.html#?ref=rss&format=simple&link=link', 'Tite: “Mi ideal de equipo es el Madrid de Ancelotti”', 'El seleccionador de Brasil repasa su trayectoria al frente de la Canarinha y se confiesa admirador del exentrenador del Madrid', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/08/actualidad/1496941108_296917_1496941540_miniatura_normal.jpg', 27, 62),
('http://deportes.elpais.com/deportes/2017/06/08/actualidad/1496942242_388310.html#?ref=rss&format=simple&link=link', 'Fernando Alonso decidirá en septiembre si sigue o no en la F-1', '"Para continuar tengo que ganar", afirma el piloto, de regreso al Mundial después de competir en las 500 Millas de Indianápolis', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/08/actualidad/1496942242_388310_1496942359_miniatura_normal.jpg', 27, 64),
('http://deportes.elpais.com/deportes/2017/06/08/actualidad/1496942406_791492.html#?ref=rss&format=simple&link=link', 'El director deportivo con la perspectiva de un portero', 'Zubizarreta, Monchi, Olabe, Garagarza, Emery y Pochettino participan en un debate sobre “el corazón de un club”', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/08/actualidad/1496942406_791492_1496942669_miniatura_normal.jpg', 27, 52),
('http://deportes.elpais.com/deportes/2017/06/08/actualidad/1496942533_326891.html#?ref=rss&format=simple&link=link', 'Dubljevic: “Un título con el Valencia Basket vale como mil del Real Madrid”', 'El pívot montenegrino ambiciona la primera Liga de los taronja mientras el conjunto de Laso busca un triplete que no logra desde 1986. Hoy, primer asalto de la final (20.30, Movistar #0)', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/08/actualidad/1496942533_326891_1496943491_miniatura_normal.jpg', 27, 59),
('http://deportes.elpais.com/deportes/2017/06/08/actualidad/1496944613_250076.html#?ref=rss&format=simple&link=link', 'La selección femenina de baloncesto pone rumbo al Eurobasket', 'Las subcampeonas olímpicas y mundiales, patrocinadas por CaixaBank, buscan refrendar su exitosa secuencia de medallas en el torneo que comienza el viernes en la República Checa', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/08/actualidad/1496944613_250076_1496945858_miniatura_normal.jpg', 27, 58),
('http://deportes.elpais.com/deportes/2017/06/08/actualidad/1496945238_274934.html#?ref=rss&format=simple&link=link', 'Promovida una moción de censura en el Barcelona', 'Benedito, candidato a la presidencia del club en las elecciones de 2010 y 2015, inicia una campaña para saber si es posible reunir entre 16.000 y 17.000 firmas de apoyo', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/08/actualidad/1496945238_274934_1496945552_miniatura_normal.jpg', 27, 55),
('http://deportes.elpais.com/deportes/2017/06/08/actualidad/1496946912_456602.html#?ref=rss&format=simple&link=link', 'Europa retoma su cerrada clasificación para el Mundial de Rusia', 'Francia, Alemania y Polonia pueden situarse al filo de lograr el pasaporte mientras Holanda y Gales, que jugará sin Bale en terreno serbio, apenas tienen margen de error', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/08/actualidad/1496946912_456602_1496947536_miniatura_normal.jpg', 27, 57),
('http://deportes.elpais.com/deportes/2017/06/08/la_bitacora_de_leontxo/1496908568_067804.html#?ref=rss&format=simple&link=link', 'Los trucos de IBM contra Kaspárov', 'El excampeón del mundo revive su histórica derrota ante Deep Blue (1997) en un libro emotivo y revelador', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/08/la_bitacora_de_leontxo/1496908568_067804_1496909309_miniatura_normal.jpg', 27, 11),
('http://deportes.elpais.com/deportes/2017/06/08/runrun_de_mercado/1496937602_293178.html#?ref=rss&format=simple&link=link', 'Morata y Diego Costa, ¿dónde jugarán los dos ‘9’ de España?', 'El delantero del Madrid no confirma su continuidad y suena para Milan y United mientras que el hispano-brasileño ya ha asegurado que no seguirá en el Chelsea la próxima temporada', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/08/runrun_de_mercado/1496937602_293178_1496937753_miniatura_normal.jpg', 27, 13),
('http://deportes.elpais.com/elpais/2017/06/07/album/1496865087_066478.html#?ref=rss&format=simple&link=link', 'España - Colombia, las imágenes del partido amistoso', 'Los jugadores de Lopetegui se enfrentan a la selección de Colombia en Murcia', '2017-06-08', 'http://ep00.epimg.net/elpais/imagenes/2017/06/07/album/1496865087_066478_1496866235_miniatura_normal.jpg', 27, 4),
('http://elpais.com/ccaa/2017/05/31/catalunya/1496220644_483613.html#?ref=rss&format=simple&link=link', 'Puigdemont exige a Rajoy que aclare cómo impedirá el referéndum', 'El presidente de la Generalitat asegura que las "amenazas" solo "le animan" a seguir adelante', '2017-05-31', 'http://ep00.epimg.net/ccaa/imagenes/2017/05/31/catalunya/1496220644_483613_1496225358_miniatura_normal.jpg', 16, 37),
('http://elpais.com/ccaa/2017/06/01/catalunya/1496294355_866563.html#?ref=rss&format=simple&link=link', 'El nuevo reglamento del Parlament, a punto', 'Junts pel Sí y la CUP cerrarán este jueves por la tarde el acuerdo que facilitará la aprobación de la ley de ruptura', '2017-06-01', 'http://ep00.epimg.net/ccaa/imagenes/2017/06/01/catalunya/1496294355_866563_1496294582_miniatura_normal.jpg', 16, 38),
('http://elpais.com/ccaa/2017/06/02/catalunya/1496422127_963598.html#?ref=rss&format=simple&link=link', 'Puigdemont se abre ahora a ir al Congreso a debatir el referéndum', 'El Gobierno catalán quiere asegurarse que tiene garantías de negociación y que no se repetirá un capítulo como el del \'Plan Ibarretxe\'', '2017-06-03', 'http://ep00.epimg.net/ccaa/imagenes/2016/12/29/catalunya/1483006825_524100_1483006932_miniatura_normal.jpg', 16, 42),
('http://elpais.com/ccaa/2017/06/07/catalunya/1496834513_701791.html#?ref=rss&format=simple&link=link', 'Pep Guardiola leerá el manifiesto en el acto independentista en Barcelona', 'Las entidades ANC, Òmnium Cultural y AMI convocan a "los demócratas" a movilizarse por el referéndum este domingo', '2017-06-07', 'http://ep00.epimg.net/ccaa/imagenes/2017/06/07/catalunya/1496834513_701791_1496834577_miniatura_normal.jpg', 16, 40),
('http://elpais.com/ccaa/2017/06/07/catalunya/1496844484_806118.html#?ref=rss&format=simple&link=link', 'Plantón a un profesor de ESO por sus comentarios homófobos', 'Más de un centenar de alumnos del Instituto Samuel Gili i Gaya se manifiestan contra el docente y Enseñanza abre una inspección', '2017-06-08', 'http://ep00.epimg.net/ccaa/imagenes/2017/06/07/catalunya/1496844484_806118_1496844672_miniatura_normal.jpg', 16, 44),
('http://elpais.com/ccaa/2017/06/08/catalunya/1496904247_576504.html#?ref=rss&format=simple&link=link', 'Guardiola dice que es un “privilegio” que el Parlament le pida leer el manifiesto', '“Mas y Puigdemont son gente muy valiente que se la juega para llevar esto a cabo", afirma el exentrenador del Barça', '2017-06-08', 'http://ep00.epimg.net/ccaa/imagenes/2017/06/07/catalunya/1496834513_701791_1496834577_miniatura_normal.jpg', 16, 50),
('http://elpais.com/ccaa/2017/06/08/valencia/1496919559_786362.html#?ref=rss&format=simple&link=link', 'El plástico invade el Mediterráneo', 'Greenpeace inicia en Valencia una campaña en la cuenca mediterránea contra la contaminación marina por este material', '2017-06-08', 'http://ep00.epimg.net/ccaa/imagenes/2017/06/08/valencia/1496919559_786362_1496919955_miniatura_normal.jpg', 16, 49),
('http://elpais.com/deportes/2017/06/08/actualidad/1496895745_936371.html#?ref=rss&format=simple&link=link', 'Keylor Navas: “Zidane tiene mucho que ver con mi confianza”', 'El portero aseguró en Costa Rica que el entrenador del Real Madrid fue clave para sobreponerse a una racha de bajo rendimiento', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/08/actualidad/1496895745_936371_1496897036_miniatura_normal.jpg', 27, 47),
('http://elpais.com/deportes/2017/06/08/actualidad/1496941279_753323.html#?ref=rss&format=simple&link=link', 'Argentina inicia ante Brasil la era Sampaoli con una apuesta más ofensiva', 'El entrenador debuta el viernes con un amistoso ante Brasil con sólo tres defensores y con Messi junto a Dybala', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/08/actualidad/1496941279_753323_1496941424_miniatura_normal.jpg', 27, 61),
('http://elpais.com/elpais/2017/06/08/la_voz_de_inaki/1496906510_875211.html#?ref=rss&format=simple&link=link', 'Reino Unido: 42-37', 'El día que May anunció las elecciones, las encuestas le daban una ventaja de 20 puntos; 50 días después las distancias se han reducido', '2017-06-08', 'http://ep00.epimg.net/elpais/imagenes/2017/06/08/la_voz_de_inaki/1496906510_875211_1496906703_miniatura_normal.jpg', 16, 1),
('http://elpais.com/politica/2017/06/04/actualidad/1496590042_747261.html#?ref=rss&format=simple&link=link', '“¿Fuma? ¿Se ha sentido una mujer maltratada?”', 'La Comunidad Valenciana generaliza un cuestionario para descubrir violencia de género entre las mujeres que van al médico de cabecera. En año y medio han detectado 3.000 casos', '2017-06-05', 'http://ep00.epimg.net/politica/imagenes/2017/06/04/actualidad/1496590042_747261_1496590214_miniatura_normal.jpg', 16, 10),
('http://politica.elpais.com/politica/2017/05/18/actualidad/1495094214_410346.html#?ref=rss&format=simple&link=link', 'Investigadas las cuentas suizas de tres imputados en Púnica por pagos a Granados', 'Se trata de Eduardo Larraz, consejero delegado de la empresa pública Arpegio, su esposa y el propietario de la mercantil Dusa, Adolfo Fernández', '2017-05-26', 'http://ep00.epimg.net/politica/imagenes/2017/05/18/actualidad/1495094214_410346_1495094424_miniatura_normal.jpg', 16, 24),
('http://politica.elpais.com/politica/2017/06/01/actualidad/1496336712_905745.html#?ref=rss&format=simple&link=link', 'El fracaso de Moix desbarata el plan del Gobierno para Anticorrupción', 'El ejecutivo crítica ahora el comportamiento del fiscal pero mantiene que su relevo debe preservar el proyecto de poner orden en ese organismo', '2017-06-02', 'http://ep00.epimg.net/politica/imagenes/2017/06/01/actualidad/1496336712_905745_1496344477_miniatura_normal.jpg', 16, 25),
('http://politica.elpais.com/politica/2017/06/02/actualidad/1496397151_082775.html#?ref=rss&format=simple&link=link', 'La Fiscalía pretende que Mas reintegre los 5,12 millones que costó la consulta ilegal del 9-N', 'El ministerio público ve “malversación contable” y pide al Tribunal de Cuentas que investigue al expresident y a los consejeros Homs, Ortega y Rigau', '2017-06-02', 'http://ep00.epimg.net/ccaa/imagenes/2017/02/05/catalunya/1486317027_843507_1486317112_miniatura_normal.jpg', 16, 39),
('http://politica.elpais.com/politica/2017/06/02/actualidad/1496407760_313194.html#?ref=rss&format=simple&link=link', 'La Audiencia Nacional confirma la prisión provisional de Ignacio González', 'La Sección Cuarta ve riesgo de fuga y reiteración delictiva del expresidente de la Comunidad de Madrid', '2017-06-02', 'http://ep00.epimg.net/politica/imagenes/2017/06/02/actualidad/1496407760_313194_1496407829_miniatura_normal.jpg', 16, 27),
('http://politica.elpais.com/politica/2017/06/04/actualidad/1496577476_378994.html#?ref=rss&format=simple&link=link', 'Muere un ciclista atropellado por un conductor de 81 años en Estella', 'Una furgoneta arrolla a dos ciclistas de 15 años en el pueblo alicantino de Teulada y se da a la fuga', '2017-06-04', 'http://ep00.epimg.net/politica/imagenes/2017/06/04/actualidad/1496577476_378994_1496581164_miniatura_normal.jpg', 16, 13),
('http://politica.elpais.com/politica/2017/06/05/actualidad/1496679897_440609.html#?ref=rss&format=simple&link=link', 'Rivera acordó con Rajoy proteger al máximo a los funcionarios en Cataluña', 'Conclusión de la ronda de contactos de los responsables sindicales del CSIF con los líderes de PP, Ciudadanos y PSOE', '2017-06-06', 'http://ep00.epimg.net/politica/imagenes/2017/06/05/actualidad/1496679897_440609_1496690275_miniatura_normal.jpg', 16, 41),
('http://politica.elpais.com/politica/2017/06/05/actualidad/1496686254_613899.html#?ref=rss&format=simple&link=link', 'El juez del ‘caso Púnica’ investiga una tercera fundación del Partido Popular', 'Humanismo y Democracia percibió 81.900 euros de la empresa pública Arpegio', '2017-06-05', 'http://ep00.epimg.net/politica/imagenes/2017/06/05/actualidad/1496686254_613899_1496687035_miniatura_normal.jpg', 16, 19),
('http://politica.elpais.com/politica/2017/06/05/diario_de_espana/1496686371_690963.html#?ref=rss&format=simple&link=link', 'Cuando llevar el velo islámico te deja sin trabajo', 'Mujeres musulmanas residentes en España reivindican que la decisión de usar hiyab no condicione su vida laboral', '2017-06-06', 'http://ep00.epimg.net/politica/imagenes/2017/06/05/diario_de_espana/1496686371_690963_1496686643_miniatura_normal.jpg', 16, 11),
('http://politica.elpais.com/politica/2017/06/06/actualidad/1496733126_767310.html#?ref=rss&format=simple&link=link', 'La doctora Pinto identifica “sin género de dudas” a Villarejo como autor de su apuñalamiento', 'La víctima señala al comisario jubilado como la persona que la asaltó cuando recogía a su hijo', '2017-06-06', 'http://ep00.epimg.net/politica/imagenes/2017/06/06/actualidad/1496733126_767310_1496927076_miniatura_normal.jpg', 16, 22),
('http://politica.elpais.com/politica/2017/06/06/actualidad/1496733334_962776.html#?ref=rss&format=simple&link=link', 'El juez procesa al expresidente de Murcia por la Púnica', 'Pedro Antonio Sánchez asegura que solo se reunió una vez con los conseguidores de la trama y después de que estos lo solicitaran en múltiples ocasiones', '2017-06-06', 'http://ep00.epimg.net/politica/imagenes/2017/06/06/actualidad/1496733334_962776_1496738932_miniatura_normal.jpg', 16, 23),
('http://politica.elpais.com/politica/2017/06/06/actualidad/1496737159_789528.html#?ref=rss&format=simple&link=link', 'La preocupación por la corrupción se dispara 12 puntos tras el ‘caso Lezo’', 'El desempleo sigue estando en el primer lugar de las preocupaciones de los encuestados por el CIS en mayo', '2017-06-06', 'http://ep00.epimg.net/politica/imagenes/2017/06/06/actualidad/1496737159_789528_1496737633_miniatura_normal.jpg', 16, 2),
('http://politica.elpais.com/politica/2017/06/06/actualidad/1496743027_196639.html#?ref=rss&format=simple&link=link', '‘Spinner’, el juguete del que todos hablan', 'EL PAÍS lanza una nueva colección con cuatro modelos diferentes del entretenimiento de moda, a la venta este fin de semana con el periódico', '2017-06-08', 'http://ep00.epimg.net/politica/imagenes/2017/06/06/actualidad/1496743027_196639_1496938800_miniatura_normal.jpg', 16, 4),
('http://politica.elpais.com/politica/2017/06/06/actualidad/1496747709_621941.html#?ref=rss&format=simple&link=link', 'Multas de hasta 5.000 euros en Galicia por recoger animales abandonados', 'La Xunta impulsa una ley que sanciona a particulares que rescaten perros y gatos de la calle sin permiso', '2017-06-06', 'http://ep00.epimg.net/politica/imagenes/2017/06/06/actualidad/1496747709_621941_1496748154_miniatura_normal.jpg', 16, 14),
('http://politica.elpais.com/politica/2017/06/06/actualidad/1496748322_797924.html#?ref=rss&format=simple&link=link', 'El Poder Judicial archiva la investigación sobre si el juez Velasco pidió trabajo para su mujer a Ignacio González', 'La autoridad disciplinaria del Poder Judicial considera que la denuncia está basada en informaciones periodísticas "carentes de sustento"', '2017-06-06', 'http://ep00.epimg.net/politica/imagenes/2017/06/06/actualidad/1496748322_797924_1496748855_miniatura_normal.jpg', 16, 26),
('http://politica.elpais.com/politica/2017/06/06/actualidad/1496749144_438408.html#?ref=rss&format=simple&link=link', 'Solo dos de cada diez hombres comparten en igualdad las tareas de limpiar y cocinar', 'Más del 60% de las mujeres españolas realizan siempre o casi siempre solas esas tareas domésticas; los hombres dedican sus labores a "pequeñas reparaciones" de la casa', '2017-06-06', 'http://ep00.epimg.net/politica/imagenes/2017/06/06/actualidad/1496749144_438408_1496752120_miniatura_normal.jpg', 16, 5),
('http://politica.elpais.com/politica/2017/06/06/actualidad/1496754510_778499.html#?ref=rss&format=simple&link=link', 'La físcalía pide la imputación del exvicepresidente de Castilla y León', 'El Ministerio Público señala a Villanueva como responsable de los presuntos delitos de revelación de secretos, tráfico de influencias, prevaricación, fraude y malversación', '2017-06-06', 'http://ep00.epimg.net/politica/imagenes/2017/06/06/actualidad/1496754510_778499_1496755340_miniatura_normal.jpg', 16, 18),
('http://politica.elpais.com/politica/2017/06/06/actualidad/1496757234_648644.html#?ref=rss&format=simple&link=link', 'De la Mata da seis meses a la fiscalía para acabar la investigación del ‘caso Gürtel’', 'El juez de la Audiencia Nacional rechaza la prórroga de un año que pidió Anticorrupción', '2017-06-06', 'http://ep00.epimg.net/politica/imagenes/2017/06/06/actualidad/1496757234_648644_1496757470_miniatura_normal.jpg', 16, 28),
('http://politica.elpais.com/politica/2017/06/06/actualidad/1496760023_975197.html#?ref=rss&format=simple&link=link', '39 años de cárcel para el violador y asesino del parque de María Luisa de Sevilla', 'El tribunal rechaza la aplicación de la prisión permanente revisable', '2017-06-06', 'http://ep00.epimg.net/elpais/imagenes/2016/04/26/videos/1461683145_457345_1461688172_miniatura_normal.jpg', 16, 17),
('http://politica.elpais.com/politica/2017/06/06/actualidad/1496767290_030811.html#?ref=rss&format=simple&link=link', 'El Gobierno prepara la lista de bienes inscritos a nombre de la Iglesia solo desde 1998', 'Serán entre 30.000 y 40.000 en total, según afirmó recientemente un representante de la Conferencia Episcopal en la cadena SER', '2017-06-06', 'http://ep00.epimg.net/politica/imagenes/2017/06/06/actualidad/1496767290_030811_1496773374_miniatura_normal.jpg', 16, 6),
('http://politica.elpais.com/politica/2017/06/06/actualidad/1496769450_153013.html#?ref=rss&format=simple&link=link', 'Los grupos imponen al PP que Bárcenas abra la comisión de investigación', 'Mariano Rajoy será el último que hable en el Congreso sobre la presunta financiación ilegal del PP', '2017-06-07', 'http://ep00.epimg.net/politica/imagenes/2017/06/06/actualidad/1496769450_153013_1496769718_miniatura_normal.jpg', 16, 35),
('http://politica.elpais.com/politica/2017/06/06/actualidad/1496772500_235082.html#?ref=rss&format=simple&link=link', 'Rajoy prepara a fondo la moción de censura de Pablo Iglesias', 'El presidente aún no ha decidido si responderá él mismo al líder de Podemos', '2017-06-07', 'http://ep00.epimg.net/politica/imagenes/2017/06/06/actualidad/1496772500_235082_1496773624_miniatura_normal.jpg', 16, 32),
('http://politica.elpais.com/politica/2017/06/06/actualidad/1496772541_441725.html#?ref=rss&format=simple&link=link', 'Los rectores aplauden el avance a una Universidad gratuita de Andalucía', 'La Junta prevé bonificaciones de hasta el 99% de la matrícula en función de los aprobados', '2017-06-07', 'http://ep00.epimg.net/politica/imagenes/2017/06/06/actualidad/1496772541_441725_1496772784_miniatura_normal.jpg', 16, 8),
('http://politica.elpais.com/politica/2017/06/06/actualidad/1496774939_219991.html#?ref=rss&format=simple&link=link', 'Los testigos ratifican el acoso del empresario a Teresa Rodríguez', 'Los representantes de la Cámara de Comercio insisten en calificar de broma el intento de beso que la fiscalia tacha de delito y atentado', '2017-06-06', 'http://ep00.epimg.net/politica/imagenes/2016/12/24/actualidad/1482575344_836715_1482578412_miniatura_normal.jpg', 16, 20),
('http://politica.elpais.com/politica/2017/06/06/actualidad/1496775880_283649.html#?ref=rss&format=simple&link=link', 'Siete jóvenes denuncian que un dron les grabó mientras tomaban el sol desnudas en un barco en Mallorca', 'La Guardia Civil ha identificado a los autores que filmaron las imágenes desde un yate de lujo cercano', '2017-06-07', 'http://ep00.epimg.net/politica/imagenes/2017/06/06/actualidad/1496775880_283649_1496778384_miniatura_normal.jpg', 16, 15),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496787236_169838.html#?ref=rss&format=simple&link=link', 'El español Echeverría, un héroe entre los muertos en el ataque de Londres', 'Las hermanas de la víctima han confirmado su fallecimiento a través de Facebook', '2017-06-08', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496787236_169838_1496788326_miniatura_normal.jpg', 16, 61),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496830663_239248.html#?ref=rss&format=simple&link=link', 'De “El futuro empieza hoy ”a “Somos la izquierda”, el PSOE cambia el lema para su Congreso', 'Pedro Sánchez presenta a su partido como “la única alternativa real al PP”', '2017-06-07', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496830663_239248_1496831221_miniatura_normal.jpg', 16, 31),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496835354_936566.html#?ref=rss&format=simple&link=link', 'El PSOE decide abstenerse en la moción de Iglesias contra Rajoy', 'El portavoz parlamentario del PSOE comparte los motivos de Podemos pero no el planteamiento', '2017-06-07', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496835354_936566_1496866857_miniatura_normal.jpg', 16, 55),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496837609_528560.html#?ref=rss&format=simple&link=link', 'El Pacto de Estado contra la violencia de género “reforzará el Código Penal”', 'Sanidad ha firmado acuerdos con cuatro compañías de móviles para borrar el rastro del 016 y con las farmacias para que alerten si detectan casos de maltrato', '2017-06-07', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496837609_528560_1496852575_miniatura_normal.jpg', 16, 7),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496842543_837928.html#?ref=rss&format=simple&link=link', 'El Consejo Escolar denuncia la “grave inestabilidad” del sistema de becas', 'Los retrasos en la aprobación de las ayudas provocan que los alumnos sepan lo que van a recibir con el curso "bien empezado"', '2017-06-07', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496842543_837928_1496842783_miniatura_normal.jpg', 16, 9),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496848401_567068.html#?ref=rss&format=simple&link=link', 'Rivera critica la “desvergüenza” del PP y la “injerencia directa” de Catalá en casos de corrupción', 'El líder de Ciudadanos propone que el Congreso elija al fiscal general del Estado', '2017-06-07', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496848401_567068_1496857609_miniatura_normal.jpg', 16, 30),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496850135_244429.html#?ref=rss&format=simple&link=link', 'Susana Díaz promete la creación de una renta mínima de inserción social', 'La medida sustituirá al ingreso de solidaridad y supondrá entre 400 y 660 euros al mes', '2017-06-08', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496850135_244429_1496850277_miniatura_normal.jpg', 16, 36),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496850207_106214.html#?ref=rss&format=simple&link=link', 'La muerte de uno de los abuelos eleva a cinco los fallecidos en el incendio de Bilbao', 'El abogado Marcos García Montes acusará al Ayuntamiento por homicidio imprudente, lesiones y negligencias', '2017-06-07', 'http://ep00.epimg.net/ccaa/imagenes/2017/05/27/paisvasco/1495867011_125921_1495877705_miniatura_normal.jpg', 16, 16),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496851164_631122.html#?ref=rss&format=simple&link=link', 'Fiscales progresistas se quejan de que Justicia “censura” sus cursos de formación', 'La UPF considera que la “revisión de contenidos” de sus ponencias que hace el ministerio vulnera la autonomía de la fiscalía', '2017-06-08', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496851164_631122_1496851356_miniatura_normal.jpg', 16, 60),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496853817_944655.html#?ref=rss&format=simple&link=link', 'Los radares que anunció la DGT y nunca han llegado', 'Tráfico nunca compró los cinemómetros para las motos de la Guardia Civil que destacó el pasado verano en su plan para reducir la siniestralidad', '2017-06-08', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496853817_944655_1496931638_miniatura_normal.jpg', 16, 65),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496855509_670553.html#?ref=rss&format=simple&link=link', 'Dastis aboga por el diálogo con Rusia a pesar de las sanciones', 'El ministro de Exteriores defiende la política de "doble enfoque" con Moscú', '2017-06-07', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496855509_670553_1496856659_miniatura_normal.jpg', 16, 3),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496857466_223951.html#?ref=rss&format=simple&link=link', 'Pacientes y sanitarios aplauden las donaciones de Amancio Ortega', 'La Federación en Defensa de la Sanidad Pública critica que condiciona la organización del sistema', '2017-06-07', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496857466_223951_1496858747_miniatura_normal.jpg', 16, 66),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496857582_853957.html#?ref=rss&format=simple&link=link', 'Defensa se desmarca de la apuesta del ejército por el caza F-35 estadounidense', 'El secretario de Estado recuerda que España fabrica aviones de combate y dice que la decisión se tomará "razonablemente pronto"', '2017-06-07', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496857582_853957_1496861993_miniatura_normal.jpg', 16, 33),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496857817_263242.html#?ref=rss&format=simple&link=link', 'Muere un bebé de dos meses y dos niños resultan heridos en un accidente en Murcia', 'Un vehículo y un camión colisionan en la autovía RM-1, según los servicios de emergencia', '2017-06-08', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496857817_263242_1496908437_miniatura_normal.jpg', 16, 12),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496857971_163957.html#?ref=rss&format=simple&link=link', '“La última vez que vi a Ignacio estaba consciente, en el suelo y con el patín en la mano”', 'Uno de los dos amigos que estaba con el español fallecido en el atentado de Londres narra cómo ocurrió el ataque', '2017-06-08', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496857971_163957_1496860228_miniatura_normal.jpg', 16, 62);
INSERT INTO `articles_rss` (`link`, `title`, `description`, `pub_date`, `cover`, `rss_id`, `num_entry`) VALUES
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496859517_029426.html#?ref=rss&format=simple&link=link', 'El Constitucional rechaza otro recurso contra el copago para garantizar la sostenibilidad de la seguridad social', 'El tribunal niega que el real decreto de 2012 del Gobierno invada las competencias autonómicas', '2017-06-07', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496859517_029426_1496863123_miniatura_normal.jpg', 16, 21),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496859711_899818.html#?ref=rss&format=simple&link=link', 'Siete folios del ‘caso Púnica’ contra el comisario Villarejo', 'La doctora que denunció a López Madrid por acoso pide sumar a la causa documentos del sumario de corrupción', '2017-06-08', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496859711_899818_1496861370_miniatura_normal.jpg', 16, 29),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496861371_545169.html#?ref=rss&format=simple&link=link', 'Intelectuales y exdirigentes de izquierda critican la moción de censura de Podemos', 'La plataforma Actúa promueve la unidad de las fuerzas progresistas', '2017-06-08', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496861371_545169_1496864672_miniatura_normal.jpg', 16, 34),
('http://politica.elpais.com/politica/2017/06/07/actualidad/1496867404_902889.html#?ref=rss&format=simple&link=link', 'Muere un policía durante una persecución de contrabandistas en La Línea', 'El agente ha fallecido en un accidente mientras trataba de capturar a un vehículo sospechoso, según el alcalde', '2017-06-08', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496867404_902889_1496874063_miniatura_normal.jpg', 16, 43),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496904169_790823.html#?ref=rss&format=simple&link=link', 'El juez del ‘caso Auditorio’ critica las “fabulosas confabulaciones” de las acusaciones', 'El magistrado Pérez-Templano apunta a un próximo archivo de la causa que obligó a dimitir de la presidencia de Murcia al popular Pedro Antonio Sánchez.', '2017-06-08', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496904169_790823_1496905103_miniatura_normal.jpg', 16, 45),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496908619_462561.html#?ref=rss&format=simple&link=link', 'Iglesias insta al PSOE en la moción a Cifuentes a que demuestre que está “enfrente del PP”', 'El líder de Podemos arropa con la cúpula del partido a la candidata Ruiz Huerta, que declara que su iniciativa "ya está ganada"', '2017-06-08', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496908619_462561_1496935818_miniatura_normal.jpg', 16, 68),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496909990_507988.html#?ref=rss&format=simple&link=link', 'Rivera critica ante Aznar que Rajoy carezca de un proyecto para Cataluña', '"Apoyaremos al Ejecutivo para que se cumpla la ley, pero no es suficiente", dice el líder de Ciudadanos', '2017-06-08', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496909990_507988_1496918951_miniatura_normal.jpg', 16, 59),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496912401_419080.html#?ref=rss&format=simple&link=link', '10 millones de euros para los CIE', 'Apenas el 23% de las repatriaciones de 2016 se hizo desde los centros de internamiento de extranjeros. Tres de cada cuatro internos procedían directamente de una patera', '2017-06-08', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496912401_419080_1496912909_miniatura_normal.jpg', 16, 64),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496912861_826711.html#?ref=rss&format=simple&link=link', 'Ocho años de cárcel para exdirectivos de la Feria de Extremadura por dos delitos de corrupción', 'Les han condenado por delitos de malversación de caudales públicos y de falsedad en documento público', '2017-06-08', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496912861_826711_1496913659_miniatura_normal.jpg', 16, 46),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496913182_433665.html#?ref=rss&format=simple&link=link', '“Algo muy triste y muy duro se está convirtiendo en algo muy grandioso”', 'El cadáver de Echeverría no será repatriado hasta el martes, aunque la familia intenta delantarlo', '2017-06-08', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496913182_433665_1496918695_miniatura_normal.jpg', 16, 63),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496914392_153334.html#?ref=rss&format=simple&link=link', 'Un juez manda al banquillo a ‘Kichi’, pese a que la fiscalía pide su absolución', 'El alcalde de Cádiz se sentará en el banquillo acusado de injurias tras apuntar que el PP suministró agua contaminada', '2017-06-08', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496914392_153334_1496914530_miniatura_normal.jpg', 16, 56),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496919122_787115.html#?ref=rss&format=simple&link=link', 'La AVT impulsa una respuesta conjunta europea para las víctimas de terrorismo', 'La asociación española promueve la asistencia inmediata, integral y coordinada para atentados con "evidente componente de transnacionalidad"', '2017-06-08', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496919122_787115_1496919771_miniatura_normal.jpg', 16, 47),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496919805_886883.html#?ref=rss&format=simple&link=link', 'Implicadas 37 personas por vertidos junto a un parque natural de Nerja', 'La investigación sobre el vertedero ilegal incluye a dos exalcades y un alto cargo de la Junta', '2017-06-08', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496919805_886883_1496919932_miniatura_normal.jpg', 16, 51),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496923528_827815.html#?ref=rss&format=simple&link=link', 'Los socialistas piden a Bruselas que evalúe si Cañete debe seguir como comisario', 'La oficina europea antifraude investiga al exministro español por los papeles de Panamá', '2017-06-08', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496923528_827815_1496923683_miniatura_normal.jpg', 16, 57),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496924227_541522.html#?ref=rss&format=simple&link=link', 'El anterior coordinador de IU rechaza el cargo que le propuso Susana Díaz', 'Valderas renuncia a ser comisionado de la memoria histórica ante las críticas de su partido', '2017-06-08', 'http://ep00.epimg.net/politica/imagenes/2017/06/05/actualidad/1496662167_580919_1496665110_miniatura_normal.jpg', 16, 58),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496928337_167799.html#?ref=rss&format=simple&link=link', 'Colombia incauta 262.000 euros al ‘número dos’ del caso Lezo', 'La Audiencia rechaza poner en libertad a Edmundo Rodríguez Sobrino, testaferro de Ignacio González', '2017-06-08', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496928337_167799_1496929120_miniatura_normal.jpg', 16, 52),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496930009_671212.html#?ref=rss&format=simple&link=link', 'Juntos desde 1976', 'EL PAÍS homenajea a los suscriptores que acompañan al diario desde su llegada a los quioscos, hace 41 años', '2017-06-08', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496930009_671212_1496943055_miniatura_normal.jpg', 16, 48),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496933024_470959.html#?ref=rss&format=simple&link=link', 'El Tribunal Constitucional anula la amnistía fiscal', 'Los magistrados dictan la inconstitucionalidad del decreto pero avalan las regularizaciones', '2017-06-08', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496933024_470959_1496933420_miniatura_normal.jpg', 16, 69),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496933576_152714.html#?ref=rss&format=simple&link=link', 'El juez Velasco seguirá al frente de los casos Lezo y Púnica hasta que llegue García Castellón', 'El titular del juzgado de instrucción 6 de la Audiencia Nacional se incorporará a mediados de julio', '2017-06-08', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496933576_152714_1496933694_miniatura_normal.jpg', 16, 54),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496937735_480296.html#?ref=rss&format=simple&link=link', 'Susana Díaz reúne a sus secretarios provinciales para una crisis de gobierno', 'La presidenta ultima los cambios en el Ejecutivo para afrontar los dos años de legislatura', '2017-06-08', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496937735_480296_1496941668_miniatura_normal.jpg', 16, 67),
('http://politica.elpais.com/politica/2017/06/08/actualidad/1496938703_348757.html#?ref=rss&format=simple&link=link', 'Detenido en Ibiza un británico sospechoso de descuartizar a una bailarina en Tailandia', 'La Audiencia Nacional ha decretado su ingreso en prisión hasta que sea extraditado', '2017-06-08', 'http://ep00.epimg.net/politica/imagenes/2017/06/08/actualidad/1496938703_348757_1496939391_miniatura_normal.jpg', 16, 53);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `channel`
--

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

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `sections`
--

INSERT INTO `sections` (`id`, `name`, `description`) VALUES
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
  MODIFY `guid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
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
