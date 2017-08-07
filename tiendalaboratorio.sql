-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-07-2017 a las 19:57:25
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tiendalaboratorio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `account`
--

INSERT INTO `account` (`username`, `password`, `fullname`, `email`) VALUES
('a', 'a', 'a', 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`, `description`) VALUES
(1, 'Candelabros y Veleros', 'Los productos que elaboran nuestros artesanos son diseños especiales y artísticos hechos íntegramente a mano. Los objetos sirven para decorar la sala, el cuarto o cualquier espacio del hogar que Usted desee embellecer. Por ejemplo un candelabro decorado con velas exóticas y encendidas en una cena familiar de amigos o con la persona especial simboliza energía, unión, amor y confraternidad.'),
(2, 'Espejos', 'Los espejos, son artesanías que caracterizan a nuestro taller, pues la belleza, el colorido y el repujado embellecen la habitación. Al igual que el resto de nuestros productos contamos con una infinidad de modelos que son decorados con imágenes e iconografías de la flora y fauna exótica de la Región.'),
(3, 'Cruces', 'A lo largo y ancho del Perú, como en Ayacucho las cruces representan religiosidad y espiritualidad. Existen en una diversidad de tamaños, formas y diseños que cada artesano plasma de acuerdo a sus vivencias y costumbres de cada zona. La “Hojalatería Araujo” elabora más de 10 tipos de cruces, entre los más destacados están la “cruz de pasión de cristo” y la “cruz de camino”, son de uso religioso y adorno ornamental. La artesanía en cruces representa el catolicismo en Ayacucho, las familias tienen'),
(4, 'Porta lapiceros ', 'Nuestros asociados elaboran objetos como porta lapiceros de todo tipo y en variados diseños que bien pueden realzar y relucir su escritorio. Otro producto es la porta servilleta para decorar el comedor o lugar favorito y disfrutar un suculento almuerzo.'),
(5, 'Flores', 'Nuestros asociados elaboran objetos como porta lapiceros de todo tipo y en variados diseños que bien pueden realzar y relucir su escritorio. Otro producto es la porta servilleta para decorar el comedor o lugar favorito y disfrutar un suculento almuerzo.'),
(6, 'Baldes, Regaderas y Jarras', 'Nuestros asociados elaboran objetos como porta lapiceros de todo tipo y en variados diseños que bien pueden realzar y relucir su escritorio. Otro producto es la porta servilleta para decorar el comedor o lugar favorito y disfrutar un suculento almuerzo.'),
(7, 'Gallos', 'Nuestros asociados elaboran objetos como porta lapiceros de todo tipo y en variados diseños que bien pueden realzar y relucir su escritorio. Otro producto es la porta servilleta para decorar el comedor o lugar favorito y disfrutar un suculento almuerzo.'),
(8, 'Otros', 'Nuestros asociados elaboran objetos como porta lapiceros de todo tipo y en variados diseños que bien pueden realzar y relucir su escritorio. Otro producto es la porta servilleta para decorar el comedor o lugar favorito y disfrutar un suculento almuerzo.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `datecreation` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordersdetail`
--

CREATE TABLE IF NOT EXISTS `ordersdetail` (
  `productid` int(11) NOT NULL,
  `ordersid` int(11) NOT NULL,
  `price` decimal(18,2) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partner`
--

CREATE TABLE IF NOT EXISTS `partner` (
`id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `partner`
--

INSERT INTO `partner` (`id`, `name`) VALUES
(1, 'Partner 1'),
(2, 'Partner 2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(18,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo02` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `feature` tinyint(4) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `partnerid` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=44 ;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `quantity`, `description`, `photo`, `photo02`, `feature`, `categoryid`, `partnerid`) VALUES
(1, 'Candelabro inclinado mondrial', '120.00', 10, 'Good', 'cyvp01.jpg', 'cyvp01_01.jpg', 0, 1, 1),
(2, 'Candelabro escalinata', '80.00', 5, 'Good', 'cyvp02.jpg', 'cyvp02_02.jpg', 0, 1, 1),
(3, 'Marco de Ojas', '60.00', 20, 'Good', 'esp01.jpg', 'esp01_01.jpg', 1, 2, 1),
(4, 'Espejo Paz y Flores', '60.00', 20, 'Good', 'esp02.jpg', 'esp02_02.jpg', 1, 2, 1),
(5, 'Candelabro Inclinado Rojo', '140.00', 6, '', 'cyvp03.jpg', 'cyvp03_03.jpg', 0, 1, 1),
(6, 'Candelabro Inclinado Azul', '140.00', 6, '', 'cyvp04.jpg', 'cyvp04_04.jpg', 0, 1, 1),
(7, 'Candelabro Catedral Rojo', '99.00', 6, '', 'cyvp05.jpg', 'cyvp05_05.jpg', 0, 1, 1),
(8, 'Candelabro Paz Amor Y Vida Celeste', '110.00', 6, '', 'cyvp06.jpg', 'cyvp06_06.jpg', 1, 1, 1),
(10, 'Espejo Circular Colorido', '80.00', 6, '', 'esp03.jpg', 'esp03_03.jpg', 1, 2, 1),
(11, 'Espejo Verde y Aves', '80.00', 6, '', 'esp04.jpg', 'esp04_04.jpg', 1, 2, 1),
(13, 'Espejo Rojo', '80.00', 6, '', 'esp05.jpg', 'esp05_05.jpg', 1, 2, 1),
(14, 'Espejo Mistico', '280.00', 2, '', 'esp06.jpg', 'esp06_06.jpg', 1, 2, 1),
(15, 'Cruz Hojas y Flores', '65.00', 5, '', 'cp01.jpg', 'cp01_01.jpg', 1, 3, 1),
(16, 'Cruz INRI', '120.00', 5, '', 'cp02.jpg', 'cp02_02.jpg', 1, 3, 1),
(17, 'Cruz INRI Monocrono', '120.00', 5, '', 'cp03.jpg', 'cp03_03.jpg', 1, 3, 1),
(18, 'Cruz INRI Monocrono Tipo 02', '120.00', 5, '', 'cp04.jpg', 'cp04_04.jpg', 1, 3, 1),
(19, 'Cruz Gallo Tipo 01', '100.00', 5, '', 'cp05.jpg', 'cp05_05.jpg', 1, 3, 1),
(20, 'Cruz Simple', '90.00', 5, '', 'cp06.jpg', 'cp06_06.jpg', 1, 3, 1),
(21, 'Porta lapicero Flores', '20.00', 5, '', 'dplp01.jpg', 'dplp01_01.jpg', 1, 3, 1),
(22, 'Porta lapicero Flores Tipo 01', '20.00', 5, '', 'dplp01.jpg', 'dplp01_01.jpg', 1, 4, 1),
(23, 'Porta lapicero Flores Tipo 02', '20.00', 5, '', 'dplp02.jpg', 'dplp02_02.jpg', 1, 4, 1),
(24, 'Porta Lapicero Inca', '20.00', 5, '', 'dplp03.jpg', 'dplp03_03.jpg', 1, 4, 1),
(25, 'Porta Lapicero Delfin', '30.00', 5, '', 'dplp04.jpg', 'dplp04_04.jpg', 1, 4, 1),
(26, 'Porta lapicero Caballo', '30.00', 5, '', 'dplp05.jpg', 'dplp05_05.jpg', 1, 4, 1),
(27, 'Porta Lapicero Zorro', '30.00', 5, '', 'dplp06.jpg', 'dplp06_06.jpg', 1, 4, 1),
(28, 'Flor azul', '15.00', 5, '', 'dfp01.jpg', 'dfp01_01.jpg', 1, 5, 1),
(29, 'Flor rosada', '15.00', 5, '', 'dfp02.jpg', 'dfp02_02.jpg', 1, 5, 1),
(30, 'Flor roja', '15.00', 5, '', 'dfp03.jpg', 'dfp03_03.jpg', 1, 5, 1),
(31, 'Flor amarilla', '15.00', 5, '', 'dfp04.jpg', 'dfp04_04.jpg', 1, 5, 1),
(32, 'Flor celeste', '15.00', 5, '', 'dfp05.jpg', 'dfp05_05.jpg', 1, 5, 1),
(33, 'Flor amarilla tipo02', '15.00', 5, '', 'dfp06.jpg', 'dfp06_06.jpg', 1, 5, 1),
(34, 'Regadera Verde', '50.00', 5, '', 'dbp01.jpg', 'dbp01_01.jpg', 1, 6, 1),
(35, 'Regadera Roja', '50.00', 5, '', 'dbp02.jpg', 'dbp02_02.jpg', 1, 6, 1),
(36, 'Valde de Color', '45.00', 5, '', 'dbp03.jpg', 'dbp03_03.jpg', 1, 6, 1),
(37, 'Gallo plumaje negro', '100.00', 5, '', 'dgp01.jpg', 'dgp01_01.jpg', 1, 7, 1),
(38, 'Gallo plumaje rojo', '100.00', 5, '', 'dgp02.jpg', 'dgp02_02.jpg', 1, 7, 1),
(39, 'Gallo plumaje colorido', '120.00', 5, '', 'dgp03.jpg', 'dgp03_03.jpg', 1, 7, 1),
(40, 'Porta servilleta', '35.00', 5, '', 'dop01.jpg', 'dop01_01.jpg', 1, 8, 1),
(41, 'Anillo', '15.00', 5, '', 'dop02.jpg', 'dop02_02.jpg', 1, 8, 1),
(42, 'Adorno Mariposa', '45.00', 5, '', 'dop03.jpg', 'dop03_03.jpg', 1, 8, 1),
(43, 'Adorno Buho', '45.00', 5, '', 'dop04.jpg', 'dop04_04.jpg', 1, 8, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `account`
--
ALTER TABLE `account`
 ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`id`), ADD KEY `username` (`username`);

--
-- Indices de la tabla `ordersdetail`
--
ALTER TABLE `ordersdetail`
 ADD PRIMARY KEY (`productid`), ADD KEY `ordersid` (`ordersid`);

--
-- Indices de la tabla `partner`
--
ALTER TABLE `partner`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`id`), ADD KEY `categoryid` (`categoryid`), ADD KEY `partnerid` (`partnerid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `partner`
--
ALTER TABLE `partner`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
ADD CONSTRAINT `username` FOREIGN KEY (`username`) REFERENCES `account` (`username`);

--
-- Filtros para la tabla `ordersdetail`
--
ALTER TABLE `ordersdetail`
ADD CONSTRAINT `ordersid` FOREIGN KEY (`ordersid`) REFERENCES `orders` (`id`),
ADD CONSTRAINT `productid` FOREIGN KEY (`productid`) REFERENCES `product` (`id`);

--
-- Filtros para la tabla `product`
--
ALTER TABLE `product`
ADD CONSTRAINT `categoryid` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`),
ADD CONSTRAINT `partnerid` FOREIGN KEY (`partnerid`) REFERENCES `partner` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
