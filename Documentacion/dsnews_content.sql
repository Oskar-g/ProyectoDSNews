-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-06-2017 a las 23:42:16
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dsnews_content`
--
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
-- Estructura de tabla para la tabla `articles_rss`
--

CREATE TABLE `articles_rss` (
  `link` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `title` text COLLATE utf8_spanish_ci NOT NULL,
  `description` text COLLATE utf8_spanish_ci NOT NULL,
  `pub_date` date NOT NULL,
  `cover` text COLLATE utf8_spanish_ci NOT NULL,
  `rss_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `articles_rss`
--

INSERT INTO `articles_rss` (`link`, `title`, `description`, `pub_date`, `cover`, `rss_id`) VALUES
('http://economia.elpais.com/ccaa/2017/06/06/catalunya/1496776267_569547.html#?ref=rss&format=simple&link=link', 'El silencio de Artur Mas', '¿Realmente el ex presidente no sabía nada de las finanzas ni de las actividades de su gran amigo y colaborador Germà Gordó?', '2017-06-06', 'http://ep00.epimg.net/cat/imagenes/2017/06/06/opinion/1496776267_569547_1496776333_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/02/17/actualidad/1487342497_292653.html#?ref=rss&format=simple&link=link', 'BLOG | Finanzas a las 9', 'Los profesionales de Afi ofrecen un punto de vista singular sobre la actualidad del sistema financiero', '2017-02-20', 'http://ep00.epimg.net/economia/imagenes/2017/02/17/actualidad/1487342497_292653_1488481992_portadilla_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/05/11/actualidad/1494519824_073866.html#?ref=rss&format=simple&link=link', 'Innovación para seguir construyendo', 'El salón Construmat de Barcelona se conjura para sacar al sector de la crisis gracias a la tecnología', '2017-05-13', 'http://ep00.epimg.net/economia/imagenes/2017/05/11/actualidad/1494519824_073866_1494520131_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/05/18/actualidad/1495121255_811212.html#?ref=rss&format=simple&link=link', 'La feria del autobús se mueve', 'Ifema retrasa FIAA para encajarla mejor en el calendario ferial europeo y reforzar la presencia de un sector en auge', '2017-05-21', '', 14),
('http://economia.elpais.com/economia/2017/05/19/actualidad/1495194529_597197.html#?ref=rss&format=simple&link=link', 'Los vehículos de ocasión llegan al gran escaparate de Madrid', 'Ifema acoge la XXI edición del Salón del Vehículo de Ocasión entre el 19 y el 28 de mayo', '2017-05-19', 'http://ep00.epimg.net/economia/imagenes/2017/05/19/actualidad/1495194529_597197_1495194729_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/05/26/actualidad/1495782287_971846.html#?ref=rss&format=simple&link=link', 'Ocho millones de mascotas tienen una cita en Ifema', '100x100 Mascota acoge en el recinto ferial madrileño a un sector multimillonario', '2017-05-27', '', 14),
('http://economia.elpais.com/economia/2017/05/30/actualidad/1496163957_236580.html#?ref=rss&format=simple&link=link', 'Si te ha afectado el caos de British Airways ¿Cuánto dinero puedes reclamar?', 'Los expertos señalan que las indemnizaciones prometidas por la aerolínea están por debajo de lo previsto por la legislación europea', '2017-05-31', 'http://ep00.epimg.net/economia/imagenes/2017/05/30/actualidad/1496163957_236580_1496164268_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/05/31/actualidad/1496232575_513774.html#?ref=rss&format=simple&link=link', '¿En qué provincia se encuentran más salarios por encima de la media?', 'Siete de cada 10 contratos firmados el año pasado fueron para ocupaciones poco cualificadas', '2017-06-06', 'http://ep00.epimg.net/economia/imagenes/2017/05/31/actualidad/1496232575_513774_1496741325_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/01/actualidad/1496328090_926803.html#?ref=rss&format=simple&link=link', 'Cuán feliz se puede ser en el trabajo', 'La obsesión por tener contentos a los empleados genera un ambiente artificial que acaba perjudicando a las compañías', '2017-06-07', 'http://ep00.epimg.net/economia/imagenes/2017/06/01/actualidad/1496328090_926803_1496328411_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/01/actualidad/1496331704_467574.html#?ref=rss&format=simple&link=link', 'El método Macron', 'La elección del nuevo presidente de Francia da a la Unión Europea una oportunidad de superar los conflictos internos que han acelerado su desintegración', '2017-06-04', 'http://ep00.epimg.net/economia/imagenes/2017/06/01/actualidad/1496331704_467574_1496396292_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/01/actualidad/1496334446_966185.html#?ref=rss&format=simple&link=link', 'El negocio de financiar pleitos', 'El alto coste que implica afrontar un procedimiento judicial hace que algunos fondos se interesen por sufragarlos a cambio de un porcentaje de las ganancias en caso de éxito', '2017-06-07', 'http://ep00.epimg.net/economia/imagenes/2017/06/01/actualidad/1496334446_966185_1496334718_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/02/actualidad/1496402541_236318.html#?ref=rss&format=simple&link=link', '¿De verdad es tan barato volar con las ‘low cost’ a América?', 'Norwegian y Level declaran una guerra de precios a las aerolíneas tradicionales, pero los servicios añadidos que ofrecen, incluso los básicos, son caros', '2017-06-03', 'http://ep00.epimg.net/economia/imagenes/2017/06/02/actualidad/1496402541_236318_1496403147_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/02/actualidad/1496404328_473190.html#?ref=rss&format=simple&link=link', 'Europa se asienta en el optimismo', 'Nuestra visión sigue pasando por apostar moderadamente por las Bolsas en este entorno que las favorece, pero con cautela ante lo exigente de los precios', '2017-06-04', '', 14),
('http://economia.elpais.com/economia/2017/06/02/actualidad/1496419937_599311.html#?ref=rss&format=simple&link=link', 'El calentón del Ibex exige cautela', 'La Bolsa española sube un 16,6% en el año y empieza a ser difícil encontrar oportunidades a precios atractivos', '2017-06-06', 'http://ep00.epimg.net/economia/imagenes/2017/06/02/actualidad/1496419937_599311_1496420113_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/02/actualidad/1496422692_618947.html#?ref=rss&format=simple&link=link', 'El mercado de la vivienda acelera', 'La inversión residencial se recupera, pero conviene prevenir nuevas burbujas', '2017-06-05', '', 14),
('http://economia.elpais.com/economia/2017/06/05/actualidad/1496683413_821630.html#?ref=rss&format=simple&link=link', 'El mercado donde todo lo que se vende es reciclado', 'Más de 3.000 personas acuden en Madrid a la tercera edición del Recycling Market, un espacio de venta de productos sostenibles', '2017-06-06', 'http://ep00.epimg.net/economia/imagenes/2017/06/05/actualidad/1496683413_821630_1496744504_portadilla_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/05/mis_derechos/1496673092_265891.html#?ref=rss&format=simple&link=link', 'Dime dónde heredas y te diré cuánto pagas', 'Recorrido por la normativa de las diferentes comunidades autónomas en materia de herencias, para descubrir cuáles son más beneficiosas y cuáles menos', '2017-06-06', 'http://ep00.epimg.net/economia/imagenes/2017/06/05/mis_derechos/1496673092_265891_1496673603_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/06/actualidad/1496749442_275171.html#?ref=rss&format=simple&link=link', 'Los sindicatos apoyan la revuelta por la precariedad de medios de la Agencia Tributaria', '', '2017-06-07', 'http://ep00.epimg.net/economia/imagenes/2017/06/06/actualidad/1496749442_275171_1496772714_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/06/actualidad/1496768289_696601.html#?ref=rss&format=simple&link=link', 'Hacienda reordena el IVA de las discotecas y las salas de fiesta', 'El tipo de las consumiciones en los locales de ocio nocturnos bajará al 10%', '2017-06-07', 'http://ep00.epimg.net/economia/imagenes/2017/06/06/actualidad/1496768289_696601_1496769974_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/06/actualidad/1496776851_277368.html#?ref=rss&format=simple&link=link', 'Fomento limitará la compraventa de licencias VTC como las que usan Uber y Cabify', 'El Ministerio articulará medidas para asegurarse que las miles de licencias que saldrán por la vía judicial sean para prestar servicio y no para la especulación', '2017-06-06', 'http://ep00.epimg.net/economia/imagenes/2017/06/06/actualidad/1496776851_277368_1496776988_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/06/actualidad/1496778439_064154.html#?ref=rss&format=simple&link=link', 'La calle comercial más cara de España está en Barcelona', 'El metro cuadrado en la avenida Portal de L\'Angel cuesta 3.360 euros por metro cuadrado según un informe de Acotex', '2017-06-07', 'http://ep00.epimg.net/economia/imagenes/2017/06/06/actualidad/1496778439_064154_1496778794_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/07/actualidad/1496813481_899659.html#?ref=rss&format=simple&link=link', 'Así te hemos contado la segunda jornada de huelga de estibadores', 'Los puertos han afrontado este miércoles la segunda jornada de protesta del sector', '2017-06-07', 'http://ep00.epimg.net/economia/imagenes/2017/06/07/actualidad/1496813481_899659_1496814091_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/07/actualidad/1496815101_806944.html#?ref=rss&format=simple&link=link', 'La posibilidad de que hoy el Popular no tuviera liquidez para atender a los clientes aceleró su venta al Santander', 'La entidad que preside Ana Botín compra el Popular por un euro ante su inviabilidad', '2017-06-07', 'http://ep00.epimg.net/economia/imagenes/2017/06/07/actualidad/1496815101_806944_1496829352_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/07/actualidad/1496816233_147482.html#?ref=rss&format=simple&link=link', 'Los 300.000 accionistas del Banco Popular pierden el 100% de su inversión', 'La intervención pública para traspasar la entidad al Santander anula el valor de sus acciones', '2017-06-07', 'http://ep00.epimg.net/economia/imagenes/2017/06/07/actualidad/1496816233_147482_1496816447_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/07/actualidad/1496817924_578144.html#?ref=rss&format=simple&link=link', 'Pescanova se desploma un 95,45% en su regreso a Bolsa', 'Las acciones de la Pescanova antigua, suspendidas de cotización desde hace cuatro años, han vuelto al mercado este miércoles', '2017-06-07', 'http://ep00.epimg.net/economia/imagenes/2017/06/07/actualidad/1496817924_578144_1496818198_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/07/actualidad/1496820126_280606.html#?ref=rss&format=simple&link=link', '¿Cómo te afecta la compra del Popular si eres cliente del banco?', 'Los que tengan depósitos o cuenta corriente no les supondrá ningún cambio, más allá de pasar a ser clientes del Santander. Los accionistas perderán la totalidad de su inversión.', '2017-06-07', 'http://ep00.epimg.net/economia/imagenes/2017/06/07/actualidad/1496820126_280606_1496823542_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/07/actualidad/1496823904_095669.html#?ref=rss&format=simple&link=link', 'La OCDE eleva la perspectiva de crecimiento de España por encima de la del Gobierno', 'El organismo pronostica para este año un aumento del PIB del 2,8% y del 2,4% para el próximo', '2017-06-07', 'http://ep00.epimg.net/economia/imagenes/2017/06/07/actualidad/1496823904_095669_1496824034_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/07/actualidad/1496827842_145454.html#?ref=rss&format=simple&link=link', 'Los especuladores que apostaron a la baja pueden perder por partida doble', 'Los \'hedge funds\' con posiciones en corto sobre el Popular deberán pagar un interés a quién les prestó los títulos si el contrato no contempla el colapso de la cotización', '2017-06-07', 'http://ep00.epimg.net/economia/imagenes/2017/06/07/actualidad/1496827842_145454_1496828152_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/07/actualidad/1496828573_899391.html#?ref=rss&format=simple&link=link', '¿Por qué el Santander solo paga un euro por el Popular?', 'La Junta de Resolución del BCE valora a la entidad que presidía Saracho por entre 2.000 millones y 8.200 millones negativos', '2017-06-07', 'http://ep00.epimg.net/economia/imagenes/2017/06/07/actualidad/1496828573_899391_1496828754_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/07/actualidad/1496840496_280811.html#?ref=rss&format=simple&link=link', 'Grietas en la narrativa de la flamante recuperación española en Europa', 'El Popular supone que España estrene el mecanismo de resolución bancaria con fuertes pérdidas para accionistas y bonistas respecto a la solución italiana', '2017-06-07', 'http://ep00.epimg.net/economia/imagenes/2017/06/07/actualidad/1496840496_280811_1496845196_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/07/actualidad/1496845076_913871.html#?ref=rss&format=simple&link=link', 'Alemania debe devolver a las eléctricas miles de millones por una tasa nuclear', 'El Gobierno encaja una derrota con la sentencia del Constitucional que anula un impuesto en vigor de 2011 a 2016', '2017-06-07', 'http://ep00.epimg.net/economia/imagenes/2017/06/07/actualidad/1496845076_913871_1496849846_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/07/actualidad/1496846892_088712.html#?ref=rss&format=simple&link=link', 'En las oficinas, a los clientes: “Podéis estar tranquilos. Vuestro dinero está garantizado”', 'Los trabajadores del Popular se han dedicado esta mañana a tranquilizar a los clientes que acudían a las sucursales, donde se operaba con normalidad', '2017-06-07', 'http://ep00.epimg.net/economia/imagenes/2017/06/07/actualidad/1496846892_088712_1496847016_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/07/actualidad/1496851224_569106.html#?ref=rss&format=simple&link=link', 'La Universitat de València estrena una Cátedra de Economía Feminista', 'La directora será la experta en genero y empleo de la Comisión Europea, María Luisa Moltó', '2017-06-07', 'http://ep00.epimg.net/economia/imagenes/2017/06/07/actualidad/1496851224_569106_1496851518_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/07/actualidad/1496853447_915125.html#?ref=rss&format=simple&link=link', 'Colonial sustituirá al Banco Popular en el Ibex', 'La entidad sale del índice selectivo, del que ha formado parte desde su creación', '2017-06-07', 'http://ep00.epimg.net/economia/imagenes/2017/06/07/actualidad/1496853447_915125_1496853686_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/07/actualidad/1496855540_615643.html#?ref=rss&format=simple&link=link', 'Los socios mexicanos y chilenos, los últimos en llegar al Popular, pierden toda su inversión', 'El grupo Luksic pierde los 90 millones destinados a comprar el 3% del banco en un solo mes', '2017-06-07', 'http://ep00.epimg.net/economia/imagenes/2013/12/11/actualidad/1386769339_632183_1386774871_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/07/actualidad/1496857654_235992.html#?ref=rss&format=simple&link=link', 'Fomento pide que se retome el diálogo tras la segunda huelga de la estiba', 'Los sindicatos y el Ejecutivo confirman un seguimiento de casi el 100% de la huelga', '2017-06-07', 'http://ep00.epimg.net/economia/imagenes/2017/06/07/actualidad/1496857654_235992_1496858154_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/07/actualidad/1496861347_021763.html#?ref=rss&format=simple&link=link', 'España estrena el mecanismo europeo para liquidar bancos en dificultades', 'El banco italiano Monte dei Paschi sigue en pie gracias a multimillonarias ayudas públicas', '2017-06-07', 'http://ep00.epimg.net/economia/imagenes/2017/06/07/actualidad/1496861347_021763_1496861911_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/07/actualidad/1496862706_901693.html#?ref=rss&format=simple&link=link', 'El precio de la energía y la logística frenan las inversiones de Basf en España', 'Las ventas del grupo químico en todo el Estado crecieron un 1%, hasta los 1.164 millones de euros', '2017-06-07', 'http://ep00.epimg.net/economia/imagenes/2017/06/07/actualidad/1496862706_901693_1496862966_miniatura_normal.jpg', 14),
('http://economia.elpais.com/economia/2017/06/07/mis_derechos/1496847902_459084.html#?ref=rss&format=simple&link=link', '¿Qué acciones legales puedes ejercitar si eres accionista de Banco Popular?', 'Según los expertos, los accionistas tienen diferentes opciones en la vía civil para defender su posición, sin perjuicio de las acciones penales que podrían interponerse también frente a la propia entidad así como contra sus antiguos gestores.', '2017-06-07', 'http://ep00.epimg.net/economia/imagenes/2017/06/07/mis_derechos/1496847902_459084_1496848442_miniatura_normal.jpg', 14),
('http://economia.elpais.com/elpais/2017/04/27/talento_digital/1493311116_497929.html#?ref=rss&format=simple&link=link', 'Los mapas que sabrán cuándo mueves el brazo', 'Los sistemas de navegación son una pieza clave en el desarrollo del coche autónomo. La cartografía 3D y de interiores amplia sus posibilidades para ofrecer nuevos servicios', '2017-04-28', 'http://ep00.epimg.net/elpais/imagenes/2017/04/27/talento_digital/1493311116_497929_1493321013_miniatura_normal.jpg', 14),
('http://economia.elpais.com/elpais/2017/05/02/talento_digital/1493742496_841032.html#?ref=rss&format=simple&link=link', '¿Me imprimes un pisito?', 'La impresión 3D para construir viviendas es ya una realidad y puede ser clave para edificar en suelo extraterrestre', '2017-05-03', 'http://ep00.epimg.net/elpais/imagenes/2017/05/02/talento_digital/1493742496_841032_1493745125_miniatura_normal.jpg', 14),
('http://economia.elpais.com/elpais/2017/05/30/opinion/1496169543_500652.html#?ref=rss&format=simple&link=link', 'El abono intelectual del populismo', 'El populista manipula los peores instintos del ciudadano. Arraiga en ambientes viciados por quienes alimentan una visión maniquea de la realidad —adornada con elementos plausibles— y hacen creíble su discurso', '2017-06-08', 'http://ep00.epimg.net/elpais/imagenes/2017/05/30/opinion/1496169543_500652_1496846465_miniatura_normal.jpg', 14),
('http://economia.elpais.com/elpais/2017/05/31/fotorrelato/1496243925_526733.html#?ref=rss&format=simple&link=link', 'Del vapor al gas natural', 'Un breve repaso a la historia de la navegación, desde las barcas con remos, hasta el primer ferri con motor de gas natural para barcos de pasajeros en España', '2017-06-05', 'http://ep00.epimg.net/elpais/imagenes/2017/05/31/fotorrelato/1496243925_526733_1496252509_miniatura_normal.jpg', 14),
('http://economia.elpais.com/elpais/2017/06/05/opinion/1496687758_309183.html#?ref=rss&format=simple&link=link', 'Contratos corruptos', 'Los sobornos y las comisiones también destruyen la competencia empresarial', '2017-06-06', 'http://ep00.epimg.net/elpais/imagenes/2017/06/05/opinion/1496687758_309183_1496689454_miniatura_normal.jpg', 14),
('http://economia.elpais.com/elpais/2017/06/07/opinion/1496853982_978651.html#?ref=rss&format=simple&link=link', 'Popular, salvación por vía de urgencia', 'La compra por el Santander es la solución más razonable en una situación al borde del colapso', '2017-06-07', 'http://ep00.epimg.net/elpais/imagenes/2017/06/07/opinion/1496853982_978651_1496854105_miniatura_normal.jpg', 14),
('http://economia.elpais.com/internacional/2017/06/06/actualidad/1496751025_253772.html#?ref=rss&format=simple&link=link', 'El acceso a la universidad en China no es igual para todos', 'El examen actual es considerado como el método más equitativo, pero las diferencias entre alumnos empiezan desde su lugar de nacimiento', '2017-06-07', 'http://ep00.epimg.net/internacional/imagenes/2017/06/06/actualidad/1496751025_253772_1496810734_miniatura_normal.jpg', 14),
('http://elpais.com/cincodias/2017/06/05/mercados/1496665119_263541.html#?ref=rss&format=simple&link=link', 'Cinco valores que tienen todas las papeletas de hacer un contrasplit', 'Con este movimiento, las compañías quieren ser menos volátiles\nEn Bolsa española, hay una docena de valores que cotizan a menos de medio euro', '2017-06-06', 'http://ep00.epimg.net/cincodias/imagenes/2017/06/05/mercados/1496665119_263541_1496665339_miniatura_normal.jpg', 14),
('http://elpais.com/cincodias/2017/06/05/midinero/1496673691_388290.html#?ref=rss&format=simple&link=link', 'Bares y restaurantes copan las ofertas de empleo en pymes', 'Las pequeñas y medianas empresas generan el 65% de los nuevos puestos de trabajo\nLos expertos descartan una nueva burbuja en la construcción', '2017-06-06', 'http://ep00.epimg.net/cincodias/imagenes/2017/06/05/midinero/1496673691_388290_1496702446_miniatura_normal.jpg', 14),
('http://elpais.com/cincodias/2017/06/05/midinero/1496682420_839064.html#?ref=rss&format=simple&link=link', 'El Banco de España eleva el número de inspectores a su máximo histórico', 'Refuerza la nueva área de vigilancia de la conducta de la banca y de las quejas de clientes\nLos españoles se incorporan ya a los equipos mixtos de supervisión única', '2017-06-06', 'http://ep00.epimg.net/cincodias/imagenes/2017/06/05/midinero/1496682420_839064_1496683900_miniatura_normal.jpg', 14),
('http://elpais.com/cincodias/2017/06/05/midinero/1496684628_187579.html#?ref=rss&format=simple&link=link', '¿Puede reducirse la morosidad en las empresas gracias a la buena voluntad?', 'Reino Unido e Irlanda aplican códigos de buen comportamiento de pagos\nEn España no existe un régimen de sanciones si se incumple la ley', '2017-06-06', 'http://ep00.epimg.net/cincodias/imagenes/2017/06/05/midinero/1496684628_187579_1496686437_miniatura_normal.jpg', 14),
('http://elpais.com/deportes/2017/06/07/actualidad/1496862028_650925.html#?ref=rss&format=simple&link=link', '“¿Pero qué coño haces? ¡Tengo que marcar el cuarto!”', 'El sumario del Barcelona B-Eldense (12-0) destapa un vestuario alicantino roto por las apuestas y un cruce de acusaciones de corrupción, e implica también al Cornellà', '2017-06-08', 'http://ep00.epimg.net/deportes/imagenes/2017/06/07/actualidad/1496862028_650925_1496862226_miniatura_normal.jpg', 15),
('http://elpais.com/economia/2017/06/02/actualidad/1496401760_659197.html#?ref=rss&format=simple&link=link', '¿Y si Mallorca se moviera a pilas?', 'La vuelta en coche eléctrico a España desembarcó el 1 de junio en la isla balear, uno de los territorios insulares con más puntos de recarga', '2017-06-05', 'http://ep00.epimg.net/economia/imagenes/2017/06/02/actualidad/1496401760_659197_1496573771_miniatura_normal.jpg', 14),
('http://elpais.com/economia/2017/06/07/actualidad/1496815101_806944.html#?ref=rss&format=simple&link=link', 'La posibilidad de que hoy el Popular no tuviera liquidez para atender a los clientes aceleró su venta al Santander', 'La entidad que preside Ana Botín compra el Popular por un euro ante su inviabilidad', '2017-06-07', 'http://ep00.epimg.net/economia/imagenes/2017/06/07/actualidad/1496815101_806944_1496829245_noticia_normal.jpg', 15),
('http://elpais.com/elpais/2017/06/07/ciencia/1496847615_931780.html#?ref=rss&format=simple&link=link', 'Un telescopio realiza la observación que Einstein creía imposible', 'El \'Hubble\' calcula la masa de una estrella gracias a un efecto óptico predicho hace más de 80 años', '2017-06-07', 'http://ep00.epimg.net/elpais/imagenes/2017/06/07/ciencia/1496847615_931780_1496847963_miniatura_normal.jpg', 15),
('http://elpais.com/elpais/2017/06/07/ciencia/1496852661_032685.html#?ref=rss&format=simple&link=link', 'Hallados en Marruecos los restos de los primeros \'Homo sapiens\'', 'El yacimiento de Jebel Irhoud, de 300.000 años, desplaza la cuna de la humanidad al norte de África', '2017-06-07', 'http://ep00.epimg.net/elpais/imagenes/2017/06/07/ciencia/1496852661_032685_1496853377_miniatura_normal.jpg', 15),
('http://elpais.com/elpais/2017/06/07/ciencia/1496852990_871069.html#?ref=rss&format=simple&link=link', 'Una parisina demanda al Estado francés por la polución aérea', 'La \'Erin Brokovich francesa\' acusa a las autoridades de “inacción” ante la peligrosa contaminación', '2017-06-07', 'http://ep00.epimg.net/elpais/imagenes/2017/06/07/ciencia/1496852990_871069_1496853441_miniatura_normal.jpg', 15),
('http://elpais.com/elpais/2017/06/07/hechos/1496855559_006331.html#?ref=rss&format=simple&link=link', 'Javier Cárdenas propaga el bulo de que las vacunas causan autismo', 'El presentador, cuyo programa de radio tiene más de un millón de oyentes, alude a un estudio desmentido hace años', '2017-06-07', 'http://ep00.epimg.net/elpais/imagenes/2017/06/07/hechos/1496855559_006331_1496856831_miniatura_normal.jpg', 15),
('http://elpais.com/elpais/2017/06/07/mujeres/1496863524_044355.html#?ref=rss&format=simple&link=link', 'Putin: “Yo no tengo días malos porque no soy mujer”', 'El presidente ruso afirma en una entrevista con Oliver Stone que no se ducharía junto a un homosexual', '2017-06-07', 'http://ep00.epimg.net/internacional/imagenes/2017/05/15/actualidad/1494845426_831013_1494846058_miniatura_normal.jpg', 15),
('http://elpais.com/elpais/2017/06/07/opinion/1496853982_978651.html#?ref=rss&format=simple&link=link', 'Popular, salvación por vía de urgencia', 'La compra por el Santander es la solución más razonable en una situación al borde del colapso', '2017-06-07', 'http://ep00.epimg.net/elpais/imagenes/2017/06/07/opinion/1496853982_978651_1496854105_miniatura_normal.jpg', 15),
('http://elpais.com/internacional/2017/06/07/estados_unidos/1496858329_828473.html#?ref=rss&format=simple&link=link', 'Trump al director del FBI: “Necesito lealtad, espero lealtad”', 'James Comey revela en un escrito entregado al Comité de Inteligencia del Senado las presiones a las que fue sometido por el presidente de Estados Unidos', '2017-06-08', 'http://ep00.epimg.net/internacional/imagenes/2017/06/07/estados_unidos/1496858329_828473_1496858443_miniatura_normal.jpg', 15),
('http://elpais.com/internacional/2017/06/08/actualidad/1496875626_656122.html#?ref=rss&format=simple&link=link', 'Vídeo | Así neutralizó la policía a los tres terroristas del ataque en Londres', 'Unas imágenes publicadas por medios británicos muestran cómo la policía logró abatir a los atacantes', '2017-06-08', 'http://ep00.epimg.net/internacional/imagenes/2017/06/08/actualidad/1496875626_656122_1496876062_miniatura_normal.jpg', 15),
('http://elpais.com/politica/2017/06/07/actualidad/1496835354_936566.html#?ref=rss&format=simple&link=link', 'El PSOE decide abstenerse en la moción de Iglesias contra Rajoy', 'El portavoz parlamentario del PSOE comparte los motivos de Podemos pero no el planteamiento', '2017-06-07', 'http://ep00.epimg.net/elpais/imagenes/2017/06/07/portada_secciones/1496840274_923338_1496867395_miniatura_normal.jpg', 15),
('http://elpais.com/politica/2017/06/07/actualidad/1496857971_163957.html#?ref=rss&format=simple&link=link', '“La última vez que vi a Ignacio estaba consciente, en el suelo y con el patín en la mano”', 'Uno de los dos amigos que estaba con el español fallecido en el atentado de Londres narra cómo ocurrió el ataque', '2017-06-07', 'http://ep00.epimg.net/politica/imagenes/2017/06/07/actualidad/1496857971_163957_1496860228_miniatura_normal.jpg', 15),
('http://elpais.com/retina/2017/05/30/tendencias/1496131977_346312.html#?ref=rss&format=simple&link=link', 'Esto es lo que ha de pasar para que un coche conduzca por nosotros', 'De los avances tecnológicos a dejar decisiones de vida o muerte en manos de una máquina: todo lo que tiene que pasar para que podamos usar el coche autónomo.', '2017-06-03', 'http://ep00.epimg.net/retina/imagenes/2017/05/30/tendencias/1496131977_346312_1496382880_miniatura_normal.jpg', 14),
('http://elpais.com/retina/2017/05/30/tendencias/1496145669_471728.html#?ref=rss&format=simple&link=link', '¿Qué viene detrás de Wannacry? Más ‘ransomware’ y la sombra del ‘biohacking’', 'La información digitalizada cada vez es más sensible. Sam Balaji, el gurú de la gestión de riesgos de Deloitte, nos cuenta a qué nos enfrentaremos próximamente.', '2017-06-05', 'http://ep00.epimg.net/retina/imagenes/2017/05/30/tendencias/1496145669_471728_1496145892_miniatura_normal.jpg', 14),
('http://elpais.com/retina/2017/05/30/tendencias/1496154380_977310.html#?ref=rss&format=simple&link=link', 'El ‘big data’ ayuda a tomar decisiones, pero lo importante es la intuición', 'Muchas empresas basan sus planes de actuación en lo que dicen los datos, pero a veces conviene confiar en el sentido común.', '2017-06-07', 'http://ep00.epimg.net/retina/imagenes/2017/05/30/tendencias/1496154380_977310_1496155617_miniatura_normal.jpg', 14),
('http://elpais.com/retina/2017/06/02/talento/1496403773_781705.html#?ref=rss&format=simple&link=link', 'Pierde el tiempo para rendir mejor', 'Para ser más productivo hay que desconectar de vez en cuando, divagar y dejar que nuestro cerebro cree nuevas conexiones cuando estamos descansando', '2017-06-06', 'http://ep00.epimg.net/retina/imagenes/2017/06/02/talento/1496403773_781705_1496405696_miniatura_normal.jpg', 14),
('http://elpais.com/retina/2017/06/05/tendencias/1496660604_653692.html#?ref=rss&format=simple&link=link', '“Robot, devuélveme mi curro”', 'Cifras, preguntas y respuestas sobre el futuro que puede depararnos la automatización', '2017-06-06', 'http://ep00.epimg.net/retina/imagenes/2017/06/05/tendencias/1496660604_653692_1496661657_miniatura_normal.jpg', 14),
('http://elpais.com/retina/2017/06/07/innovacion/1496827847_765479.html#?ref=rss&format=simple&link=link', 'Bruselas: España crea ‘startups’, pero no sabe sacarles rendimiento', 'España, el quinto país en el ranking de ecosistemas de startups. Con el \'brexit\' perderemos al país que genera una de cada tres \'startups\' escalables, según Bruselas.', '2017-06-07', 'http://ep00.epimg.net/retina/imagenes/2017/06/07/innovacion/1496827847_765479_1496828194_miniatura_normal.jpg', 14),
('http://elpais.com/retina/2017/06/07/tendencias/1496830523_914456.html#?ref=rss&format=simple&link=link', 'El PAÍS y Google, juntos en Retina para la transformación digital', 'La empresa americana, referente en innovación y nuevas tecnologías, se incorpora como colaborador de Retina', '2017-06-07', 'http://ep00.epimg.net/retina/imagenes/2017/06/07/tendencias/1496830523_914456_1496830728_miniatura_normal.jpg', 14),
('http://elpais.com/tecnologia/2017/06/06/actualidad/1496743532_975835.html#?ref=rss&format=simple&link=link', 'Las tarjetas de embarque serán historia: bastará con el reconocimiento facial', 'KLM y JetBlue van a comenzar a probar sistemas de identificación biométricos', '2017-06-07', 'http://ep00.epimg.net/tecnologia/imagenes/2017/06/06/actualidad/1496743532_975835_1496743724_miniatura_normal.jpg', 15),
('http://elpais.com/verne/2017/06/06/articulo/1496749300_580786.html#?ref=rss&format=simple&link=link', 'Una mujer tiene que devolver 320.000 euros del Gordo porque se encontró el décimo', 'El boleto con el que cobró era de una vecina que lo había marcado con un nombre: Inés', '2017-06-07', 'http://ep00.epimg.net/elpais/imagenes/2017/06/07/portada_secciones/1496818348_776594_1496818423_miniatura_normal.jpg', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `channels`
--

CREATE TABLE `channels` (
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
-- Volcado de datos para la tabla `channels`
--

INSERT INTO `channels` (`channel_id`, `link`, `title`, `last_build_date`, `language`, `description`, `copyright`, `title_image`, `url_image`, `link_image`, `width_image`, `height_image`) VALUES
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
(1, 'El pais', 'asdasd');

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
(14, 'http://ep00.epimg.net/rss/economia/portada.xml', 3, 1),
(15, 'http://ep00.epimg.net/rss/elpais/portada.xml', 1, 1);

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
-- Indices de la tabla `channels`
--
ALTER TABLE `channels`
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
  MODIFY `guid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `channels`
--
ALTER TABLE `channels`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `rss_feeds`
--
ALTER TABLE `rss_feeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
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
  ADD CONSTRAINT `articles_desoft_ibfk_2` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`channel_id`) ON DELETE CASCADE ON UPDATE CASCADE,
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
