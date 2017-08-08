-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-08-2017 a las 15:00:52
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tiendalaboratorio2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `username` varchar(100) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `id` int(5) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Estructura de tabla para la tabla `consumer`
--

CREATE TABLE IF NOT EXISTS `consumer` (
`id` int(5) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `telephone` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `accountid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=132 ;

--
-- Volcado de datos para la tabla `consumer`
--

INSERT INTO `consumer` (`id`, `firstname`, `lastname`, `address`, `telephone`, `email`, `country`, `city`, `accountid`) VALUES
(114, '1', '2', '1', '1', '1', 'Peru', 'ApurÃ­mac', 'a'),
(115, '', '', '', '', '', 'Peru', 'Amazonas', 'a'),
(116, 'firstname', 'last', 'add', 'tel', 'em', 'Peru', 'Amazonas', 'a'),
(117, 'Pedro', 'Carranza', 'Jr. libertad # 101', '949978630', 'pedroc.@gmail.com', 'Peru', 'Lambayeque', 'a'),
(118, 'Pedro', 'Carranza', 'Jr. libertad # 101', '949978630', 'pedroc.@gmail.com', 'Peru', 'Tumbes', 'a'),
(119, 'Pedro', 'Carranza', 'Jr. libertad # 101', '949978630', 'pedroc.@gmail.com', 'Peru', 'Tumbes', 'a'),
(120, '', '', '', '', '', 'Peru', 'Amazonas', 'a'),
(121, 'calixe', 'calixe', 'clixe', 'lia', 'fl', 'Peru', 'Ancash', 'a'),
(122, 'Pedro', 'Carranza', 'Jr. libertad # 101', '949978630', 'pedroc.@gmail.com', 'Peru', 'Loreto', 'a'),
(123, '', '', '', '', '', 'Peru', 'Amazonas', 'a'),
(124, '', '', '', '', '', 'Peru', 'Amazonas', 'a'),
(125, '', '', '', '', '', 'Peru', 'Amazonas', 'a'),
(126, '', '', '', '', '', 'Peru', 'Amazonas', 'a'),
(127, '', '', '', '', '', 'Peru', 'Amazonas', 'a'),
(128, '', '', '', '', '', 'Peru', 'Amazonas', 'a'),
(129, '', '', '', '', '', 'Peru', 'Amazonas', 'a'),
(130, '', '', '', '', '', 'Peru', 'Amazonas', 'a'),
(131, '', '', '', '', '', 'Peru', 'Amazonas', 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order`
--

CREATE TABLE IF NOT EXISTS `order` (
`id` int(5) NOT NULL,
  `number` varchar(25) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `shippingid` int(5) DEFAULT NULL,
  `payid` int(5) DEFAULT NULL,
  `consumerid` int(5) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Volcado de datos para la tabla `order`
--

INSERT INTO `order` (`id`, `number`, `fecha`, `shippingid`, `payid`, `consumerid`) VALUES
(15, NULL, '2017-08-04', 2, 4, 114),
(16, NULL, '2017-08-04', 2, 2, 115),
(17, NULL, '2017-08-04', 1, 2, 116),
(18, NULL, '2017-08-04', 1, 1, 117),
(19, NULL, '2017-08-04', 1, 4, 118),
(20, NULL, '2017-08-04', 1, 4, 119),
(21, NULL, '2017-08-04', 2, 2, 120),
(22, NULL, '2017-08-04', 2, 2, 121),
(23, NULL, '2017-08-07', 2, 2, 122),
(24, NULL, '2017-08-07', 2, 2, 123),
(25, NULL, '2017-08-07', 2, 2, 124),
(26, NULL, '2017-08-07', 2, 2, 125),
(27, NULL, '2017-08-07', 2, 2, 126),
(28, NULL, '2017-08-07', 2, 2, 127),
(29, NULL, '2017-08-07', 2, 2, 128),
(30, NULL, '2017-08-07', 2, 2, 129),
(31, NULL, '2017-08-07', 2, 2, 130),
(32, NULL, '2017-08-07', 2, 2, 131);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orderdetail`
--

CREATE TABLE IF NOT EXISTS `orderdetail` (
`id` int(5) NOT NULL,
  `orderid` int(5) DEFAULT NULL,
  `productid` int(5) DEFAULT NULL,
  `price` float(18,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `orderdetail`
--

INSERT INTO `orderdetail` (`id`, `orderid`, `productid`, `price`, `quantity`) VALUES
(1, 21, NULL, 240.00, NULL),
(2, 22, NULL, 30.00, NULL),
(3, 23, NULL, 140.00, NULL),
(4, 24, NULL, 80.00, NULL),
(5, 25, NULL, 80.00, NULL),
(6, 26, NULL, 80.00, NULL),
(7, 27, NULL, 80.00, NULL),
(8, 28, NULL, 80.00, NULL),
(9, 29, NULL, 80.00, NULL),
(10, 30, NULL, 80.00, NULL),
(11, 31, NULL, 80.00, NULL),
(12, 32, NULL, 80.00, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partner`
--

CREATE TABLE IF NOT EXISTS `partner` (
  `id` int(5) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `partner`
--

INSERT INTO `partner` (`id`, `name`) VALUES
(1, 'Partner 1'),
(2, 'Partner 2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pay`
--

CREATE TABLE IF NOT EXISTS `pay` (
`id` int(5) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `pay`
--

INSERT INTO `pay` (`id`, `name`, `description`) VALUES
(1, 'Tarjeta de Credito o Debito', ''),
(2, 'Deposito BCP', ''),
(3, 'PagoEfectivo', ''),
(4, 'Paypal', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(5) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` decimal(18,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `photo02` varchar(100) DEFAULT NULL,
  `feature` tinyint(1) DEFAULT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `partnerid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `quantity`, `description`, `photo`, `photo02`, `feature`, `categoryid`, `partnerid`) VALUES
(1, 'Candelabro inclinado mondrial', '120.00', 10, 'Producto adecuado para el hogar, artesania peruana, ayacuchana 100 % hecha manualmente de buena calidad y disenho.', 'cyvp01.jpg', 'cyvp01_01.jpg', 0, 1, 1),
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shipping`
--

CREATE TABLE IF NOT EXISTS `shipping` (
`id` int(5) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` decimal(18,2) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `shipping`
--

INSERT INTO `shipping` (`id`, `name`, `price`, `description`) VALUES
(1, 'Olva Courier', '15.00', 'Ten el producto entre 2 a 3 días - 15 soles adicional a cualquier parte del pais.'),
(2, 'Serpost', '8.00', 'Ten el producto entre 5 a 15 días - 08 soles adicional a cualquier parte del pais.');

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
-- Indices de la tabla `consumer`
--
ALTER TABLE `consumer`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_consumer_account` (`accountid`);

--
-- Indices de la tabla `order`
--
ALTER TABLE `order`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_order_consumer` (`consumerid`), ADD KEY `fk_order_pay` (`payid`), ADD KEY `fk_order_shipping` (`shippingid`);

--
-- Indices de la tabla `orderdetail`
--
ALTER TABLE `orderdetail`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_odetail_product` (`productid`), ADD KEY `fk_odetail_order` (`orderid`);

--
-- Indices de la tabla `partner`
--
ALTER TABLE `partner`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pay`
--
ALTER TABLE `pay`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_product_category` (`categoryid`), ADD KEY `fk_product_partnet` (`partnerid`);

--
-- Indices de la tabla `shipping`
--
ALTER TABLE `shipping`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `consumer`
--
ALTER TABLE `consumer`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT de la tabla `order`
--
ALTER TABLE `order`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `orderdetail`
--
ALTER TABLE `orderdetail`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `pay`
--
ALTER TABLE `pay`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `shipping`
--
ALTER TABLE `shipping`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `consumer`
--
ALTER TABLE `consumer`
ADD CONSTRAINT `fk_consumer_account` FOREIGN KEY (`accountid`) REFERENCES `account` (`username`) ON UPDATE NO ACTION;

--
-- Filtros para la tabla `order`
--
ALTER TABLE `order`
ADD CONSTRAINT `fk_order_consumer` FOREIGN KEY (`consumerid`) REFERENCES `consumer` (`id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_order_pay` FOREIGN KEY (`payid`) REFERENCES `pay` (`id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_order_shipping` FOREIGN KEY (`shippingid`) REFERENCES `shipping` (`id`) ON UPDATE NO ACTION;

--
-- Filtros para la tabla `orderdetail`
--
ALTER TABLE `orderdetail`
ADD CONSTRAINT `fk_odetail_order` FOREIGN KEY (`orderid`) REFERENCES `order` (`id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_odetail_product` FOREIGN KEY (`productid`) REFERENCES `product` (`id`) ON UPDATE NO ACTION;

--
-- Filtros para la tabla `product`
--
ALTER TABLE `product`
ADD CONSTRAINT `fk_product_category` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`) ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_product_partnet` FOREIGN KEY (`partnerid`) REFERENCES `partner` (`id`) ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
