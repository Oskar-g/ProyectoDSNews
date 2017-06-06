-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2017 a las 12:16:35
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
-- Estructura de tabla para la tabla `article_rss`
--

DROP TABLE IF EXISTS `article_rss`;
CREATE TABLE `article_rss` (
  `id` int(11) NOT NULL,
  `link` text COLLATE utf8_spanish_ci NOT NULL,
  `title` text COLLATE utf8_spanish_ci NOT NULL,
  `description` text COLLATE utf8_spanish_ci NOT NULL,
  `pub_date` date NOT NULL,
  `id_rss` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `article_rss`
--

INSERT INTO `article_rss` (`id`, `link`, `title`, `description`, `pub_date`, `id_rss`) VALUES
(185, 'http://elpais.com/economia/2017/06/05/actualidad/1496689755_037177.html#?ref=rss&format=simple&link=link', 'Los inspectores de Hacienda alertan: “La Agencia Tributaria está al límite”', 'El presidente de la Organización de Inspectores de Hacienda, José Luis Groba, advierte sobre la alarmante pérdida de recursos de la institución', '2017-06-06', 1),
(186, 'http://elpais.com/internacional/2017/06/06/actualidad/1496739621_171231.html#?ref=rss&format=simple&link=link', 'El alcalde de Londres sobre la visita de Trump: “No deberíamos sacarle la alfrombra roja”', 'Sadiq Khan afirma que no tiene tiempo tras los atentados para contestar al presidente de EE UU', '2017-06-06', 1),
(187, 'http://elpais.com/elpais/2017/06/06/portada/1496735671_319278.html#?ref=rss&format=simple&link=link', 'Especial | Medio siglo del conflicto que cambió los mapas de Oriente Próximo', '', '2017-06-06', 1),
(188, 'http://elpais.com/politica/2017/06/06/actualidad/1496737190_934893.html#?ref=rss&format=simple&link=link', 'Un artículo de Manuel Vicent de EL PAÍS, en el examen de Selectividad', '300.000 alumnos se estrenan en las nuevas pruebas de acceso a la universidad', '2017-06-06', 1),
(189, 'http://elpais.com/internacional/2017/06/06/estados_unidos/1496713388_060742.html#?ref=rss&format=simple&link=link', 'El servicio de inteligencia ruso trató de ‘hackear’ el sistema electoral de EE UU', 'Un informe secreto de la NSA revela que la inteligencia militar rusa atacó el correo de 122 funcionarios electorales. Detenida una contratista de 25 años por la filtración', '2017-06-06', 1),
(190, 'http://elpais.com/politica/2017/06/04/actualidad/1496608598_197807.html#?ref=rss&format=simple&link=link', 'Un español, desaparecido tras enfrentarse a los terroristas de Londres', 'Dastis urge a su homólogo británico a acelerar la identificación de los fallecidos para \"no añadir más angustia a las familias\"', '2017-06-06', 1),
(191, 'http://elpais.com/elpais/2017/06/06/videos/1496707202_935605.html#?ref=rss&format=simple&link=link', 'Un documental muestra a uno de los yihadistas que atacó el Puente de Londres', 'Khuram Butt aparece en las imágenes rezando junto a un grupo que porta una bandera negra adoptada por grupos extremistas', '2017-06-06', 1),
(192, 'http://elpais.com/elpais/2017/06/06/ciencia/1496735455_059011.html#?ref=rss&format=simple&link=link', 'El estudiante español de 16 años elegido por la NASA para explorar Marte', 'Joel Romero gana un premio de la agencia espacial estadounidense con un prototipo de robot que recorrería el planeta manejado por control remoto', '2017-06-06', 1),
(193, 'http://elpais.com/economia/2017/06/05/actualidad/1496691087_058945.html#?ref=rss&format=simple&link=link', 'Así será el hotel de lujo del Edificio España: la joya de Riu en Madrid', 'El establecimiento, con suites, piscina y restaurantes en las azoteas, se une a la nueva oferta de hoteles de lujo que estrenará Madrid entre 2017 y 2019', '2017-06-06', 1),
(194, 'http://elpais.com/internacional/2017/06/05/mundo_global/1496660855_601156.html#?ref=rss&format=simple&link=link', '‘Kwassa kwassa’, la broma sin gracia sobre inmigrantes de Macron', 'El presidente francés, criticado por reírse a costa de una embarcación usada por inmigrantes africanos que cubren un peligroso trayecto para llegar a territorio francés', '2017-06-05', 1),
(195, 'http://elpais.com/economia/2017/06/01/actualidad/1496332176_564177.html#?ref=rss&format=simple&link=link', 'El fin del profesor ‘funcionario’', 'La Carlos III lanza un máster para revolucionar la forma de enseñar y dar respuesta a las carencias del grado de Magisterio', '2017-06-06', 1),
(196, 'http://elpais.com/elpais/2017/06/01/icon/1496334611_889857.html#?ref=rss&format=simple&link=link', 'Griezmann: “Los futbolistas no salen del armario porque tienen miedo”', 'El delantero del Atlético habla de su pareja, de los gestos de cariño en el campo, de la ropa que copia...', '2017-06-06', 1),
(197, 'http://elpais.com/elpais/2017/06/05/ciencia/1496666686_518262.html#?ref=rss&format=simple&link=link', '“Sanidad debería lanzar ya una campaña contra las pseudoterapias”', 'Esta científica está haciendo presión en el Congreso para que los grupos pongan freno a la pseudociencia', '2017-06-06', 1),
(198, 'http://elpais.com/economia/2017/06/05/mis_derechos/1496673092_265891.html#?ref=rss&format=simple&link=link', 'Dime dónde heredas y te diré cuánto pagas', 'Recorrido por la normativa de las diferentes comunidades autónomas en materia de herencias, para descubrir cuáles son más beneficiosas y cuáles menos', '2017-06-06', 1),
(199, 'http://www.publico.es/internacional/alcalde-londres-trump-fuera.html', 'El alcalde de Londres afirma que el Gobierno británico debería cancelar la visita de Trump', '\"No creo que debamos extender la alfombra roja al presidente de Estados Unidos cuando sus políticas van en contra de todo lo que defendemos\", afirma Sadi Kahn, harto de las críticas del presidente estadounidense, quien calificó de \"patética excusa\" las llamadas a la calma del regidor londinense tras los atentados del sábado.', '2017-06-06', 6),
(200, 'http://www.publico.es/internacional/liberados-cargos-detenidos-atentado-londres.html', 'Liberados sin cargos todos los detenidos por el atentado de Londres', 'La policía de la capital británica había arrestado a 12 personas tras el ataque que ha causado siete muertos.', '2017-06-06', 6),
(201, 'http://www.publico.es/internacional/marruecos-ocupa-ilegalmente-sahara-legitimidad.html', '\"Marruecos ocupa ilegalmente el Sahara. No tiene legitimidad para juzgar lo que sucedió en Gdeim Izik\"', 'Se reanuda el juicio en Rabat contra más de una veintena de activistas saharauis por su protesta de 2010 en el Gdeim Izik y por la que están acusados de asesinar a 11 policías. El Polisario y diversos observadores internacionales denuncian que el juicio es una farsa.', '2017-06-06', 6),
(202, 'http://www.publico.es/internacional/atentado-londres-identificados-terroristas-atentado.html', 'Identificados dos de los terroristas del atentado de Londres', 'La policía británica identifica a Khuram Shazad, británico nacido en Pakistán de 27 años, y Rachid Redouane, de 30 y de origen marroquí y libio, como dos de los tres terroristas que perpetraron el doble atentado.', '2017-06-05', 6),
(203, 'http://www.publico.es/internacional/oriente-proximo-crisis-catar-busca.html', 'La crisis de Catar busca que Trump cargue contra Irán', 'El aislamiento de Catar ha creado una nueva situación crítica entre países de Oriente Próximo que tendrá que resolver la administración americana. Arabia Saudí ha sido el país que ha dado el primer paso y todo indica que su intención final es que Donald Trump adopte medidas agresivas contra Irán más allá de las palabras', '2017-06-06', 6),
(204, 'http://www.publico.es/internacional/aznar-aboga-aumentar-gasto-militar.html', 'Aznar aboga por aumentar el gasto militar', 'El expresidente del Gobierno afirma que Europa perderá la batalla contra el terrorismo si decide \"mirar para otro lado o no hacer nada\"', '2017-06-05', 6),
(205, 'http://www.publico.es/internacional/tiroteo-deja-cinco-victimas-orlando.html', 'Un hombre mata a cinco excompañeros de trabajo en Orlando y luego se suicida', 'El autor de los disparos, un antiguo empleado de la empresa, fue despedido el pasado abril. No hay indicio alguno de que perteneciera a alguna organización terrorista.', '2017-06-05', 6),
(206, 'http://www.publico.es/internacional/igualdad-instituto-britanico-expulsa-alumna.html', 'Un instituto británico expulsa a una alumna por no llevar sujetador', 'La madre de uno de los alumnos alegó que la joven podría \"distraer a los profesores varones\" y la directora del centro aseguró que se trata de una \"vestimenta inadecuada\".', '2017-06-05', 6),
(207, 'http://www.publico.es/internacional/detienen-nino-14-anos-japon.html', 'Detienen a un niño de 14 años en Japón por crear un programa de secuestro de datos', 'El joven creó un virus similar al \'WannaCry\', responsable del ciberataque a nivel mundial registrado el mes pasado.', '2017-06-05', 6),
(208, 'http://www.publico.es/internacional/nigeria-somalia-sudan-del-sur.html', 'Nigeria, Somalia, Sudán del Sur y Yemen se encaminan peligrosamente hacia la hambruna', 'Las catástrofes naturales y la inestabilidad política han desembocado en situaciones de vulnerabilidad e inseguridad alimentaria para gran parte de la población de estas regiones.', '2017-06-05', 6),
(209, 'http://www.publico.es/internacional/ataque-terrorista-londres-heroica-actuacion.html', 'La heroica actuación de un pontevedrés en el atentado de Londres', 'Sergio Fariña consiguió bloquear la puerta de acceso al local que regenta en Borough Market, mientras resguardaba a varios ciudadanos que habían huido.', '2017-06-05', 6),
(210, 'http://www.publico.es/internacional/policia-registra-viviendas-londres.html', 'La Policía registra dos viviendas en los barrios de Londres de donde procedían los autores del atentado del sábado', 'Varias personas son retenidas para ser interrogadas en el lugar pero sin ser llevadas a una comisaría.', '2017-06-05', 6),
(211, 'http://www.publico.es/internacional/paises-arabes-rompen-catar.html', 'Arabia Saudí, Egipto, Bahréin y Emiratos Árabes Unidos cortan relaciones con Catar', 'Le acusan de apoyar el terrorismo y amenazar su seguridad', '2017-06-05', 6),
(212, 'http://www.publico.es/internacional/comprar-pasaporte-europeo.html', '¿Cómo comprar un pasaporte europeo?', 'Varias agencias ofrecen la agilización de los trámites legales para obtener la residencia o la ciudadanía de algún país de la Unión Europea a cambio de inversiones inmobiliarias o de compra de deuda pública.', '2017-06-05', 6),
(213, 'http://www.publico.es/internacional/islamico-atentado-londres.html', 'El Estado Islámico se atribuye la autoría del atentado en Londres', 'Una agencia afín a los yihadistas, Amaq, asegura que \"una unidad de seguridad de combatientes perpetró el atentado\"', '2017-06-05', 6),
(214, 'http://www.publico.es/internacional/buscan-espanol-desaparecido-enfrentarse-terrorista.html', 'Buscan a un español desaparecido tras enfrentarse a un terrorista en Londres', 'Ignacio Echeverría, de 39 años, se paró para socorrer a una mujer que estaba siendo apuñalada y se enzarzó con el agresor', '2017-06-05', 6),
(215, 'http://www.publico.es/internacional/may-corbyn-declaran-guerra-ideas.html', 'May y Corbyn declaran la \'guerra de las ideas\' en su disputa por Downing Street', 'Colisión ideológica. Reino Unido escenifica en su trascendental campaña electoral del próximo 8 de junio la batalla doctrinal entre la derecha, que pretende regular la inmigración, promete rebajas fiscales y apuesta por las privatizaciones y la izquierda, que desempolva nacionalizaciones y recupera la defensa de las políticas sociales.', '2017-06-05', 6),
(216, 'http://www.publico.es/internacional/atentados-londres-alcalde-londres-ningunea.html', 'El alcalde de Londres ningunea a Trump por su \"desinformado tuit\" sobre los atentados', 'El presidente de EEUU criticó este domingo al alcalde de Londres por pedir a sus conciudadanos mantener la calma tras el ataque terrorista del sábado noche y aseguró que es hora de \"dejar de ser políticamente correctos.', '2017-06-04', 6),
(217, 'http://www.publico.es/internacional/daesh-ejecuta-once-miembros-provincia.html', 'El Daesh ejecuta a once de sus miembros en la provincia siria de Deir al Zur', 'El grupo terrorista mató a 25 de sus miembros el mes pasado, también en Deir al Zur, a los que acusó de adulterio, asesinato y tráfico de armas, según el Observatorio Sirio de Derechos Humanos.', '2017-06-04', 6),
(218, 'http://www.publico.es/internacional/atentado-londres-doce-detenidos-relacion.html', 'Doce detenidos en relación a los atentados terroristas de Londres', 'Las fuerzas de seguridad han realizado registros en el distrito de Barking, a unos 14 kilómetros al este del puente de Londres.', '2017-06-04', 6),
(219, 'http://www.elmundo.es/deportes/futbol/2017/06/06/5935de6446163f5e738b45d6.html', 'Pepe confirma su salida del Madrid: \"Prefiero la sinceridad de Benítez\"', '&#160;<a href=\"http://www.elmundo.es/deportes/futbol/2017/06/06/5935de6446163f5e738b45d6.html\">Leer</a><img src=\"http://secure-uk.imrworldwide.com/cgi-bin/m?cid=es-widgetueditorial&#38;cg=rss-elmundo&#38;ci=es-widgetueditorial&#38;si=http://e00-elmundo.uecdn.es/rss/deportes.xml\" alt=\"\"/>', '2017-06-06', 5),
(220, 'http://www.elmundo.es/deportes/futbol/2017/06/05/59353172ca474125788b4606.html', 'Theo, denunciado por agresión sexual', '&#160;<a href=\"http://www.elmundo.es/deportes/futbol/2017/06/05/59353172ca474125788b4606.html\">Leer</a><img src=\"http://secure-uk.imrworldwide.com/cgi-bin/m?cid=es-widgetueditorial&#38;cg=rss-elmundo&#38;ci=es-widgetueditorial&#38;si=http://e00-elmundo.uecdn.es/rss/deportes.xml\" alt=\"\"/>', '2017-06-05', 5),
(221, 'http://www.elmundo.es/deportes/tenis/2017/06/06/59359703e2704e477e8b4597.html', 'Carreño, obligado casi a la temeridad ante Nadal', '&#160;<a href=\"http://www.elmundo.es/deportes/tenis/2017/06/06/59359703e2704e477e8b4597.html\">Leer</a><img src=\"http://secure-uk.imrworldwide.com/cgi-bin/m?cid=es-widgetueditorial&#38;cg=rss-elmundo&#38;ci=es-widgetueditorial&#38;si=http://e00-elmundo.uecdn.es/rss/deportes.xml\" alt=\"\"/>', '2017-06-06', 5),
(222, 'http://www.elmundo.es/internacional/2017/06/06/59359b9e468aeb895b8b45df.html', 'El Mundial de fútbol de Qatar 2022, en peligro', '&#160;<a href=\"http://www.elmundo.es/internacional/2017/06/06/59359b9e468aeb895b8b45df.html\">Leer</a><img src=\"http://secure-uk.imrworldwide.com/cgi-bin/m?cid=es-widgetueditorial&#38;cg=rss-elmundo&#38;ci=es-widgetueditorial&#38;si=http://e00-elmundo.uecdn.es/rss/deportes.xml\" alt=\"\"/>', '2017-06-06', 5),
(223, 'http://www.elmundo.es/deportes/baloncesto/2017/06/05/5935c29ee2704e12798b45a9.html', 'La rebeldía es \'taronja\': Segunda final ACB de su historia', '&#160;<a href=\"http://www.elmundo.es/deportes/baloncesto/2017/06/05/5935c29ee2704e12798b45a9.html\">Leer</a><img src=\"http://secure-uk.imrworldwide.com/cgi-bin/m?cid=es-widgetueditorial&#38;cg=rss-elmundo&#38;ci=es-widgetueditorial&#38;si=http://e00-elmundo.uecdn.es/rss/deportes.xml\" alt=\"\"/>', '2017-06-05', 5),
(224, 'http://www.elmundo.es/deportes/futbol/2017/06/05/5935a7eb22601d02588b4662.html', 'Mourinho: \"Será un honor enfrentarse al Madrid por la Supercopa\"', '&#160;<a href=\"http://www.elmundo.es/deportes/futbol/2017/06/05/5935a7eb22601d02588b4662.html\">Leer</a><img src=\"http://secure-uk.imrworldwide.com/cgi-bin/m?cid=es-widgetueditorial&#38;cg=rss-elmundo&#38;ci=es-widgetueditorial&#38;si=http://e00-elmundo.uecdn.es/rss/deportes.xml\" alt=\"\"/>', '2017-06-05', 5),
(225, 'http://www.elmundo.es/deportes/futbol/2017/06/05/59353c44268e3eab4d8b45ea.html', 'Pep avisa al Madrid: \"Que no se confíen, el Barça siempre vuelve\"', '&#160;<a href=\"http://www.elmundo.es/deportes/futbol/2017/06/05/59353c44268e3eab4d8b45ea.html\">Leer</a><img src=\"http://secure-uk.imrworldwide.com/cgi-bin/m?cid=es-widgetueditorial&#38;cg=rss-elmundo&#38;ci=es-widgetueditorial&#38;si=http://e00-elmundo.uecdn.es/rss/deportes.xml\" alt=\"\"/>', '2017-06-05', 5),
(226, 'http://www.elmundo.es/deportes/baloncesto/2017/06/06/59359df622601da5488b4624.html', 'Si LeBron es Dios, ¿qué demonios son los Warriors?', '&#160;<a href=\"http://www.elmundo.es/deportes/baloncesto/2017/06/06/59359df622601da5488b4624.html\">Leer</a><img src=\"http://secure-uk.imrworldwide.com/cgi-bin/m?cid=es-widgetueditorial&#38;cg=rss-elmundo&#38;ci=es-widgetueditorial&#38;si=http://e00-elmundo.uecdn.es/rss/deportes.xml\" alt=\"\"/>', '2017-06-06', 5),
(227, 'http://www.elmundo.es/deportes/tenis/2017/06/05/59356d95e2704e595a8b4593.html', 'Nishikori apaga el fuego de Verdasco', '&#160;<a href=\"http://www.elmundo.es/deportes/tenis/2017/06/05/59356d95e2704e595a8b4593.html\">Leer</a><img src=\"http://secure-uk.imrworldwide.com/cgi-bin/m?cid=es-widgetueditorial&#38;cg=rss-elmundo&#38;ci=es-widgetueditorial&#38;si=http://e00-elmundo.uecdn.es/rss/deportes.xml\" alt=\"\"/>', '2017-06-05', 5),
(228, 'http://www.elmundo.es/deportes/2017/06/05/5935aeaa46163fbf748b45d1.html', '¿Es posible mejorar al campeón de la Duodécima?', '&#160;<a href=\"http://www.elmundo.es/deportes/2017/06/05/5935aeaa46163fbf748b45d1.html\">Leer</a><img src=\"http://secure-uk.imrworldwide.com/cgi-bin/m?cid=es-widgetueditorial&#38;cg=rss-elmundo&#38;ci=es-widgetueditorial&#38;si=http://e00-elmundo.uecdn.es/rss/deportes.xml\" alt=\"\"/>', '2017-06-05', 5),
(229, 'http://www.elmundo.es/deportes/futbol/2017/06/05/5935867d468aeb33048b45aa.html', 'Muere Cheik Tioté de un ataque al corazón mientras entrenaba', '&#160;<a href=\"http://www.elmundo.es/deportes/futbol/2017/06/05/5935867d468aeb33048b45aa.html\">Leer</a><img src=\"http://secure-uk.imrworldwide.com/cgi-bin/m?cid=es-widgetueditorial&#38;cg=rss-elmundo&#38;ci=es-widgetueditorial&#38;si=http://e00-elmundo.uecdn.es/rss/deportes.xml\" alt=\"\"/>', '2017-06-05', 5),
(230, 'http://www.elmundo.es/deportes/tenis/2017/06/05/593535e0e5fdeaa3258b457a.html', 'Halep no da respiro a Carla y deja París sin jugadoras españolas', '&#160;<a href=\"http://www.elmundo.es/deportes/tenis/2017/06/05/593535e0e5fdeaa3258b457a.html\">Leer</a><img src=\"http://secure-uk.imrworldwide.com/cgi-bin/m?cid=es-widgetueditorial&#38;cg=rss-elmundo&#38;ci=es-widgetueditorial&#38;si=http://e00-elmundo.uecdn.es/rss/deportes.xml\" alt=\"\"/>', '2017-06-05', 5);

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
(5, 'http://estaticos.elmundo.es/elmundodeporte/rss/portada.xml', 7),
(6, 'http://www.publico.es/estaticos/rss/internacional', 2);

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
-- Indices de la tabla `article_rss`
--
ALTER TABLE `article_rss`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_rss` (`id_rss`);

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
-- AUTO_INCREMENT de la tabla `article_rss`
--
ALTER TABLE `article_rss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
-- Filtros para la tabla `article_rss`
--
ALTER TABLE `article_rss`
  ADD CONSTRAINT `article_rss_ibfk_1` FOREIGN KEY (`id_rss`) REFERENCES `rss` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
