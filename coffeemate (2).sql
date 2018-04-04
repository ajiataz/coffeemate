-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-04-2018 a las 00:20:05
-- Versión del servidor: 5.7.14
-- Versión de PHP: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `coffeemate`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zarest_categories`
--

CREATE TABLE `zarest_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `zarest_categories`
--

INSERT INTO `zarest_categories` (`id`, `name`, `created_at`) VALUES
(22, 'Caldos', '2018-03-09 05:31:14'),
(23, 'Postres', '2018-03-09 05:31:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zarest_categorie_expences`
--

CREATE TABLE `zarest_categorie_expences` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `zarest_categorie_expences`
--

INSERT INTO `zarest_categorie_expences` (`id`, `name`, `created_date`) VALUES
(4, 'Gasto Inicial', '2018-03-20 23:43:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zarest_combo_items`
--

CREATE TABLE `zarest_combo_items` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zarest_customers`
--

CREATE TABLE `zarest_customers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `nit` varchar(20) NOT NULL,
  `direccion` text NOT NULL,
  `fechanac` date DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `discount` varchar(5) DEFAULT NULL,
  `created_at` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `zarest_customers`
--

INSERT INTO `zarest_customers` (`id`, `name`, `nit`, `direccion`, `fechanac`, `phone`, `email`, `discount`, `created_at`) VALUES
(11, 'Jose Perez', '236598-k', 'Ciudad', '1995-04-03', '54859623', 'jperez@gmail.com', '', '2018-03-11 18:49:55'),
(12, 'Marcos Aguirre', '452546-7', '', '1975-04-03', '56328974', 'maguirre@hotmail.com', '0', '2018-03-20 04:06:03'),
(13, 'Alberto Vasquez', '236548-k', '', '1995-04-03', ' 56895213', 'avasquez@coffemate.com', '0', '2018-03-20 04:10:42'),
(14, 'Edy Ajiataz', '4135632-9', '', '2018-04-03', '54544490', 'edy@ajiataz.com', '10', '2018-03-20 04:16:14'),
(15, 'Joel Mejia', '5454-4', '', '1995-04-18', '56329845', 'jmejia@gmail.com', '0', '2018-03-20 16:22:51'),
(25, 'Pedro Navas', '4135632-9', '', '1995-04-18', '54544490', 'root@email.com', '', '2018-03-20 19:01:54'),
(19, 'Jose Antonio Guzman', '4135632-9', '', '1995-04-18', '65894523', 'pnavas@gmail.com', '', '2018-03-20 18:01:15'),
(26, 'Jorge Mario Morales', '2365-1', '', '1995-04-18', '54544490', 'jmm@gmail.com', '', '2018-03-20 22:35:52'),
(27, 'Luis Martinez', '545455-4', '', '1995-04-18', '66458953', 'root@email.com', '', '2018-03-20 23:30:04'),
(31, 'Manuel Lima', '4563-1', 'Ciudad', '1985-05-03', '56328945', 'mlima@hotmail.com', '', '2018-04-03 15:40:04'),
(32, 'Emilio De Leon', '5632-k', 'Ciudad', '2018-04-03', '565656', 'mdeleon@gmail.com', '', '2018-04-03 17:57:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zarest_expences`
--

CREATE TABLE `zarest_expences` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(150) NOT NULL,
  `note` text,
  `amount` float NOT NULL,
  `attachment` varchar(200) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `zarest_expences`
--

INSERT INTO `zarest_expences` (`id`, `date`, `reference`, `note`, `amount`, `attachment`, `created_date`, `category_id`, `store_id`, `created_by`) VALUES
(16, '2018-03-20', 'Inicio', '<p>Gasto de inicio mes</p>', 1000, '60dd72a2331da1f2cda4b6d4aacec397.docx', '2018-03-20 23:45:53', 4, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zarest_holds`
--

CREATE TABLE `zarest_holds` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `time` varchar(10) NOT NULL,
  `register_id` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `waiter_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zarest_payements`
--

CREATE TABLE `zarest_payements` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `paid` float NOT NULL,
  `paidmethod` varchar(300) NOT NULL,
  `created_by` varchar(60) NOT NULL,
  `register_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `waiter_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zarest_posales`
--

CREATE TABLE `zarest_posales` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `qt` int(6) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `register_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `options` text,
  `time` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zarest_products`
--

CREATE TABLE `zarest_products` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(25) NOT NULL,
  `category` varchar(20) NOT NULL,
  `cost` float NOT NULL,
  `tax` varchar(11) DEFAULT NULL,
  `description` mediumtext,
  `price` float NOT NULL,
  `photo` varchar(200) NOT NULL,
  `photothumb` varchar(500) DEFAULT NULL,
  `color` varchar(10) NOT NULL,
  `created_at` varchar(30) DEFAULT NULL,
  `modified_at` varchar(30) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `alertqt` int(10) DEFAULT NULL,
  `supplier` varchar(200) DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `taxmethod` tinyint(4) DEFAULT NULL,
  `h_stores` varchar(300) DEFAULT NULL,
  `options` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `zarest_products`
--

INSERT INTO `zarest_products` (`id`, `code`, `name`, `category`, `cost`, `tax`, `description`, `price`, `photo`, `photothumb`, `color`, `created_at`, `modified_at`, `type`, `alertqt`, `supplier`, `unit`, `taxmethod`, `h_stores`, `options`) VALUES
(155, '090320018', 'Caldo de Res', 'Caldos', 0, '', '<p>Producto nacional</p>', 50, '63052be741bc539059f8990b85884fc4.jpg', '63052be741bc539059f8990b85884fc4_thumb.jpg', 'color06', '2018-03-20 17:37:15', '2018-03-20 17:37:15', 0, 1, 'Coffee Mate', '100', 0, NULL, 'Aguacate, Limon'),
(156, '123654', 'Pie de Manzana', 'Postres', 15, '', '<p><b>p<i>roducto hecho a base de manzanas</i></b></p>', 20, '46f2c4e0ecf57e70604170d2c3b84946.jpg', '46f2c4e0ecf57e70604170d2c3b84946_thumb.jpg', 'color03', '2018-03-20 17:42:00', '2018-03-20 17:42:00', 0, 2, 'Coffee Mate', '30', 0, NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zarest_purchases`
--

CREATE TABLE `zarest_purchases` (
  `id` int(11) NOT NULL,
  `ref` varchar(11) NOT NULL,
  `date` date NOT NULL,
  `total` float DEFAULT NULL,
  `attachement` varchar(200) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `note` mediumtext,
  `modified_at` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zarest_purchase_items`
--

CREATE TABLE `zarest_purchase_items` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qt` int(10) NOT NULL,
  `cost` float NOT NULL,
  `subtot` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zarest_registers`
--

CREATE TABLE `zarest_registers` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_total` float DEFAULT NULL,
  `cash_sub` float DEFAULT NULL,
  `cc_total` float DEFAULT NULL,
  `cc_sub` float DEFAULT NULL,
  `cheque_total` float DEFAULT NULL,
  `cheque_sub` float DEFAULT NULL,
  `cash_inhand` float DEFAULT NULL,
  `note` text,
  `closed_at` varchar(150) DEFAULT NULL,
  `closed_by` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `waiterscih` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `zarest_registers`
--

INSERT INTO `zarest_registers` (`id`, `date`, `status`, `user_id`, `cash_total`, `cash_sub`, `cc_total`, `cc_sub`, `cheque_total`, `cheque_sub`, `cash_inhand`, `note`, `closed_at`, `closed_by`, `store_id`, `waiterscih`) VALUES
(60, '2018-03-09 11:50:01', 0, 1, 1710, 1710, 0, 0, 0, 0, 100, '', '2018-03-22 00:02:41', 1, 1, ''),
(61, '2018-03-22 06:06:56', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, 1, '8,100,');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zarest_sales`
--

CREATE TABLE `zarest_sales` (
  `id` int(11) NOT NULL,
  `numdoc` int(50) NOT NULL,
  `typedoc` varchar(50) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `clientname` varchar(50) NOT NULL,
  `tax` varchar(5) DEFAULT NULL,
  `discount` varchar(10) DEFAULT NULL,
  `subtotal` varchar(15) NOT NULL,
  `total` float NOT NULL,
  `created_at` date NOT NULL,
  `modified_at` varchar(150) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `totalitems` int(20) NOT NULL,
  `paid` varchar(15) DEFAULT NULL,
  `paidmethod` varchar(700) DEFAULT NULL,
  `taxamount` float DEFAULT NULL,
  `discountamount` float DEFAULT NULL,
  `register_id` int(11) DEFAULT NULL,
  `firstpayement` float DEFAULT NULL,
  `waiter_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `zarest_sales`
--

INSERT INTO `zarest_sales` (`id`, `numdoc`, `typedoc`, `client_id`, `clientname`, `tax`, `discount`, `subtotal`, `total`, `created_at`, `modified_at`, `status`, `created_by`, `totalitems`, `paid`, `paidmethod`, `taxamount`, `discountamount`, `register_id`, `firstpayement`, `waiter_id`) VALUES
(41, 0, 'recibo', 0, 'Cliente sin Registrar', '0%', '', '50.0', 50, '2018-03-11', '2018-03-31 15:08:07', 0, 'Administrador ', 1, '100', '0', 0, 0, 60, 50, 0),
(40, 0, 'factura', 11, 'Jose Perez', '0%', '0.0', '50.0', 50, '2018-03-11', '2018-03-11 22:02:37', 0, 'admin Doe', 1, '50.0', '0', 0, 0, 60, 50, 8),
(39, 0, 'recibo', 11, 'Jose Perez', '0%', '0.0', '50.0', 50, '2018-03-11', '2018-03-11 21:53:54', 3, 'admin Doe', 1, '50.0', '0', 0, 0, 60, 50, 8),
(42, 1, 'factura', 11, 'Jose Perez', '0%', '0.0', '50.0', 50, '2018-03-20', NULL, 0, 'Administrador ', 1, '50.0', '0', 0, 0, 60, 50, 8),
(43, 2, 'recibo', 11, 'Jose Perez', '0%', '0.0', '50.0', 50, '2018-03-20', NULL, 0, 'Administrador ', 1, '50.0', '0', 0, 0, 60, 50, 8),
(44, 2, 'recibo', 11, 'Jose Perez', '0%', '0.0', '50.0', 50, '2018-03-20', NULL, 0, 'Administrador ', 1, '50.0', '0', 0, 0, 60, 50, 8),
(45, 2, 'recibo', 11, 'Jose Perez', '0%', '0.0', '50.0', 50, '2018-03-20', NULL, 0, 'Administrador ', 1, '50.0', '0', 0, 0, 60, 50, 8),
(46, 2, 'factura', 11, 'Jose Perez', '0%', '0.0', '50.0', 50, '2018-03-20', NULL, 0, 'Administrador ', 1, '50.0', '0', 0, 0, 60, 50, 8),
(47, 3, 'factura', 11, 'Jose Perez', '0%', '0.0', '50.0', 50, '2018-03-20', NULL, 0, 'Administrador ', 1, '50.0', '0', 0, 0, 60, 50, 8),
(48, 4, 'factura', 11, 'Jose Perez', '0%', '0.0', '50.0', 50, '2018-03-20', NULL, 0, 'Administrador ', 1, '50.0', '0', 0, 0, 60, 50, 8),
(49, 5, 'recibo', 11, 'Jose Perez', '0%', '0.0', '50.0', 50, '2018-03-20', NULL, 0, 'Administrador ', 1, '50.0', '0', 0, 0, 60, 50, 8),
(50, 5, 'recibo', 11, 'Jose Perez', '0%', '0.0', '50.0', 50, '2018-03-20', NULL, 0, 'Administrador ', 1, '50.0', '0', 0, 0, 60, 50, 8),
(51, 5, 'recibo', 11, 'Jose Perez', '0%', '0.0', '50.0', 50, '2018-03-20', NULL, 0, 'Administrador ', 1, '50.0', '0', 0, 0, 60, 50, 8),
(52, 5, 'recibo', 11, 'Jose Perez', '0%', '0.0', '50.0', 50, '2018-03-20', NULL, 0, 'Administrador ', 1, '50.0', '0', 0, 0, 60, 50, 8),
(53, 5, 'recibo', 11, 'Jose Perez', '0%', '0.0', '50.0', 50, '2018-03-20', NULL, 0, 'Administrador ', 1, '50.0', '0', 0, 0, 60, 50, 8),
(54, 5, 'recibo', 11, 'Jose Perez', '0%', '0.0', '0.0', 0, '2018-03-20', NULL, 1, 'Administrador ', 0, '0.0', '0', 0, 0, 60, 0, 8),
(55, 5, 'recibo', 11, 'Jose Perez', '0%', '0.0', '50.0', 50, '2018-03-20', NULL, 0, 'Administrador ', 1, '50.0', '0', 0, 0, 60, 50, 8),
(56, 5, 'factura', 11, 'Jose Perez', '0%', '0.0', '50.0', 50, '2018-03-20', NULL, 0, 'Administrador ', 1, '50.0', '0', 0, 0, 60, 50, 8),
(57, 6, 'recibo', 11, 'Jose Perez', '0%', '0.0', '0.0', 0, '2018-03-20', NULL, 1, 'Administrador ', 0, '0.0', '0', 0, 0, 60, 0, 8),
(58, 6, 'factura', 11, 'Jose Perez', '0%', '0.0', '50.0', 50, '2018-03-20', NULL, 0, 'Administrador ', 1, '50.0', '0', 0, 0, 60, 50, 8),
(59, 7, 'factura', 11, 'Jose Perez', '0%', '0.0', '50.0', 50, '2018-03-20', NULL, 0, 'Administrador ', 1, '50.0', '0', 0, 0, 60, 50, 8),
(60, 8, 'factura', 11, 'Jose Perez', '0%', '0.0', '50.0', 50, '2018-03-20', NULL, 0, 'Administrador ', 1, '50.0', '0', 0, 0, 60, 50, 8),
(61, 9, 'recibo', 11, 'Jose Perez', '0%', '0.0', '50.0', 50, '2018-03-20', NULL, 0, 'Administrador ', 1, '50.0', '0', 0, 0, 60, 50, 8),
(62, 9, 'factura', 11, 'Jose Perez', '0%', '0.0', '50.0', 50, '2018-03-20', NULL, 0, 'Administrador ', 1, '50.0', '0', 0, 0, 60, 50, 8),
(63, 10, 'factura', 11, 'Jose Perez', '0%', '0.0', '50.0', 50, '2018-03-20', NULL, 0, 'Administrador ', 1, '50.0', '0', 0, 0, 60, 50, 8),
(64, 11, 'recibo', 11, 'Jose Perez', '0%', '0.0', '50.0', 50, '2018-03-20', NULL, 0, 'Administrador ', 1, '50.0', '0', 0, 0, 60, 50, 8),
(65, 11, 'recibo', 11, 'Jose Perez', '0%', '0.0', '50.0', 50, '2018-03-20', NULL, 0, 'Administrador ', 1, '50.0', '0', 0, 0, 60, 50, 8),
(66, 11, 'recibo', 11, 'Jose Perez', '0%', '0.0', '50.0', 50, '2018-03-20', NULL, 0, 'Administrador ', 1, '50.0', '0', 0, 0, 60, 50, 8),
(67, 11, 'recibo', 14, 'Edy Ajiataz', '0%', '10.0', '150.0', 140, '2018-03-20', NULL, 0, 'Administrador ', 3, '200', '0', 0, 10, 60, 140, 8),
(68, 11, 'factura', 14, 'Edy Ajiataz', '0%', '10.0', '50.0', 40, '2018-03-20', NULL, 0, 'Administrador ', 1, '40.0', '0', 0, 10, 60, 40, 8),
(69, 12, 'factura', 14, 'Edy Ajiataz', '0%', '10.0', '50.0', 40, '2018-03-20', NULL, 0, 'Administrador ', 1, '40.0', '0', 0, 10, 60, 40, 8),
(70, 13, 'recibo', 14, 'Edy Ajiataz', '0%', '10.0', '50.0', 40, '2018-03-20', NULL, 0, 'Administrador ', 1, '40.0', '0', 0, 10, 60, 40, 8),
(71, 13, 'factura', 14, 'Edy Ajiataz', '0%', '10.0', '50.0', 40, '2018-03-20', '2018-03-20 17:56:28', 3, 'Administrador ', 1, '40.0', '0', 0, 10, 60, 40, 8),
(72, 14, 'recibo', 14, 'Edy Ajiataz', '0%', '10.0', '50.0', 40, '2018-03-20', NULL, 0, 'Administrador ', 1, '40.0', '0', 0, 10, 60, 40, 8),
(73, 14, 'recibo', 25, 'Pedro Navas', '0%', '0.0', '50.0', 50, '2018-03-20', '2018-03-31 18:51:29', 3, 'Administrador ', 1, '50.0', '0', 0, 0, 60, 50, 8),
(74, 14, 'recibo', 26, 'Jorge Mario Morales', '0%', '0.0', '20.0', 20, '2018-03-21', NULL, 0, 'Administrador ', 1, '20.0', '0', 0, 0, 60, 20, 8),
(75, 14, 'recibo', 14, 'Edy Ajiataz', '0%', '10.0', '50.0', 40, '2018-03-22', NULL, 0, 'Administrador ', 1, '40.0', '0', 0, 10, 61, 40, 8),
(76, 14, 'recibo', 14, 'Edy Ajiataz', '0%', '10.0', '50.0', 40, '2018-03-22', '2018-03-31 15:13:47', 3, 'Administrador ', 1, '40.0', '0', 0, 10, 61, 40, 8),
(77, 14, 'recibo', 15, 'Joel Mejia', '0%', '0.0', '70.0', 70, '2018-03-23', '2018-03-31 18:57:32', 0, 'Administrador ', 2, '100', '0', 0, 0, 61, 70, 8),
(78, 14, 'factura', 15, 'Joel Mejia', '0%', '0.0', '70.0', 70, '2018-03-23', '2018-03-31 15:13:32', 3, 'Administrador ', 2, '70.0', '0', 0, 0, 61, 70, 8),
(79, 15, 'recibo', 15, 'Joel Mejia', '0%', '0.0', '70.0', 70, '2018-04-02', NULL, 0, 'Administrador ', 2, '70.0', '0', 0, 0, 61, 70, 8),
(80, 15, 'recibo', 0, 'Cliente sin Registrar', '0%', '', '0.0', 0, '2018-04-02', NULL, 1, 'Administrador ', 0, '0.0', '0', 0, 0, 61, 0, 0),
(81, 15, 'recibo', 0, 'Cliente sin Registrar', '0%', '', '70.0', 70, '2018-04-02', NULL, 0, 'Administrador ', 2, '100', '0', 0, 0, 61, 70, 8),
(82, 15, 'recibo', 0, 'Cliente sin Registrar', '0%', '', '20.0', 20, '2018-04-02', NULL, 0, 'Administrador ', 1, '20.0', '0', 0, 0, 61, 20, 8),
(83, 15, 'recibo', 15, 'Joel Mejia', '0%', '0.0', '70.0', 70, '2018-04-02', NULL, 0, 'Administrador ', 2, '100', '0', 0, 0, 61, 70, 8),
(84, 15, 'recibo', 0, 'Cliente sin Registrar', '0%', '', '70.0', 70, '2018-04-02', NULL, 0, 'Administrador ', 2, '100', '0', 0, 0, 61, 70, 0),
(85, 15, 'recibo', 32, 'Emilio De Leon', '0%', '0.0', '70.0', 70, '2018-04-03', NULL, 0, 'Administrador ', 2, '70.0', '0', 0, 0, 61, 70, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zarest_sale_items`
--

CREATE TABLE `zarest_sale_items` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `qt` int(6) NOT NULL,
  `subtotal` varchar(20) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `zarest_sale_items`
--

INSERT INTO `zarest_sale_items` (`id`, `sale_id`, `product_id`, `name`, `price`, `qt`, `subtotal`, `date`) VALUES
(1023, 35, 155, 'Caldo de Res', 50, 1, '50', '2018-03-11'),
(1024, 36, 155, 'Caldo de Res', 50, 1, '50', '2018-03-11'),
(1025, 38, 155, 'Caldo de Res', 50, 1, '50', '2018-03-11'),
(1026, 39, 155, 'Caldo de Res', 50, 1, '50', '2018-03-11'),
(1027, 40, 155, 'Caldo de Res', 50, 1, '50', '2018-03-11'),
(1028, 41, 155, 'Caldo de Res', 50, 1, '50', '2018-03-11'),
(1029, 42, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1030, 43, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1031, 44, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1032, 45, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1033, 46, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1034, 47, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1035, 48, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1036, 49, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1037, 50, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1038, 51, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1039, 52, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1040, 53, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1041, 55, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1042, 56, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1043, 58, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1044, 59, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1045, 60, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1046, 61, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1047, 62, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1048, 63, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1049, 64, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1050, 65, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1051, 66, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1052, 67, 155, 'Caldo de Res', 50, 3, '150', '2018-03-20'),
(1053, 68, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1054, 69, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1055, 70, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1056, 71, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1057, 72, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1058, 73, 155, 'Caldo de Res', 50, 1, '50', '2018-03-20'),
(1059, 74, 156, 'Pie de Manzana', 20, 1, '20', '2018-03-21'),
(1060, 75, 155, 'Caldo de Res', 50, 1, '50', '2018-03-22'),
(1061, 76, 155, 'Caldo de Res', 50, 1, '50', '2018-03-22'),
(1062, 77, 156, 'Pie de Manzana', 20, 1, '20', '2018-03-23'),
(1063, 77, 155, 'Caldo de Res', 50, 1, '50', '2018-03-23'),
(1064, 78, 156, 'Pie de Manzana', 20, 1, '20', '2018-03-23'),
(1065, 78, 155, 'Caldo de Res', 50, 1, '50', '2018-03-23'),
(1066, 79, 156, 'Pie de Manzana', 20, 1, '20', '2018-04-02'),
(1067, 79, 155, 'Caldo de Res', 50, 1, '50', '2018-04-02'),
(1068, 81, 156, 'Pie de Manzana', 20, 1, '20', '2018-04-02'),
(1069, 81, 155, 'Caldo de Res', 50, 1, '50', '2018-04-02'),
(1070, 82, 156, 'Pie de Manzana', 20, 1, '20', '2018-04-02'),
(1071, 83, 156, 'Pie de Manzana', 20, 1, '20', '2018-04-02'),
(1072, 83, 155, 'Caldo de Res', 50, 1, '50', '2018-04-02'),
(1073, 84, 156, 'Pie de Manzana', 20, 1, '20', '2018-04-02'),
(1074, 84, 155, 'Caldo de Res', 50, 1, '50', '2018-04-02'),
(1075, 85, 156, 'Pie de Manzana', 20, 1, '20', '2018-04-03'),
(1076, 85, 155, 'Caldo de Res', 50, 1, '50', '2018-04-03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zarest_settings`
--

CREATE TABLE `zarest_settings` (
  `id` int(11) NOT NULL,
  `companyname` varchar(100) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `keyboard` tinyint(1) NOT NULL,
  `receiptheader` text,
  `receiptfooter` text NOT NULL,
  `theme` varchar(20) NOT NULL,
  `discount` varchar(5) DEFAULT NULL,
  `tax` varchar(5) DEFAULT NULL,
  `timezone` varchar(400) DEFAULT NULL,
  `language` varchar(30) DEFAULT NULL,
  `stripe` tinyint(4) DEFAULT NULL,
  `stripe_secret_key` varchar(150) DEFAULT NULL,
  `stripe_publishable_key` varchar(150) DEFAULT NULL,
  `decimals` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `zarest_settings`
--

INSERT INTO `zarest_settings` (`id`, `companyname`, `logo`, `phone`, `currency`, `keyboard`, `receiptheader`, `receiptfooter`, `theme`, `discount`, `tax`, `timezone`, `language`, `stripe`, `stripe_secret_key`, `stripe_publishable_key`, `decimals`) VALUES
(1, 'Coffee Mate', '1e7f555a48ef959989cc40789b7a71fa.jpg', '65894523', 'Q', 0, '<p>Coffe Mate</p>', 'Gracias por preferirnos', 'Light', '', '0%', 'America/Mexico_City', 'spanish', 0, '', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zarest_stocks`
--

CREATE TABLE `zarest_stocks` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `zarest_stocks`
--

INSERT INTO `zarest_stocks` (`id`, `product_id`, `type`, `store_id`, `warehouse_id`, `quantity`, `price`) VALUES
(60, 155, NULL, 1, NULL, 53, 50),
(61, 156, NULL, 1, NULL, 21, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zarest_stores`
--

CREATE TABLE `zarest_stores` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `adresse` varchar(400) DEFAULT NULL,
  `footer_text` varchar(400) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `created_at` varchar(200) NOT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `zarest_stores`
--

INSERT INTO `zarest_stores` (`id`, `name`, `email`, `phone`, `adresse`, `footer_text`, `city`, `country`, `created_at`, `status`) VALUES
(1, 'Coffee Mate', 'info@coffeemate.com', '65894523', 'Ipala', 'Gracias por su preferencia', 'Guatemala', 'Guatemala', '2016-05-10 12:44:33', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zarest_suppliers`
--

CREATE TABLE `zarest_suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `nit` varchar(50) NOT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `note` mediumtext,
  `created_at` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `zarest_suppliers`
--

INSERT INTO `zarest_suppliers` (`id`, `name`, `nit`, `direccion`, `phone`, `email`, `note`, `created_at`) VALUES
(4, 'Coffee Mate', '', NULL, '56234156', 'coffee@coffemate.com', '<p>Cliente Local</p>', '2018-03-09 05:42:52'),
(5, 'Pollo Rey ', '1265-4 ', 'Ciudad ', '56982348 ', 'info@pollorey.com', '<p>Distribuidor de pollo&nbsp;</p>', '2018-04-03 18:09:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zarest_tables`
--

CREATE TABLE `zarest_tables` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `checked` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `zarest_tables`
--

INSERT INTO `zarest_tables` (`id`, `name`, `zone_id`, `status`, `time`, `store_id`, `checked`) VALUES
(44, '1', 9, 0, '', 1, '2018-04-02 14:51:56'),
(45, '2', 9, 0, '', 1, '2018-03-21 23:58:33'),
(46, '3', 10, 0, '', 1, NULL),
(47, '4', 10, 0, '', 1, '2018-03-23 02:08:19'),
(48, '5', 11, 0, '', 1, NULL),
(49, '6', 11, 0, '', 1, NULL),
(50, '1', 13, NULL, NULL, 5, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zarest_users`
--

CREATE TABLE `zarest_users` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `hashed_password` varchar(128) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `role` varchar(20) NOT NULL,
  `last_active` varchar(50) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `created_at` varchar(300) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `zarest_users`
--

INSERT INTO `zarest_users` (`id`, `username`, `firstname`, `lastname`, `hashed_password`, `email`, `role`, `last_active`, `avatar`, `created_at`, `store_id`) VALUES
(1, 'admin', 'Administrador', '', '8091d35190efa5d080867aa44c596d0f269f2d3faee949c7a056fbef12a8a67ffbc7a34efe4ac206b15a2747ca63b6c9684a98d94f376aa929e4ebe04a50c16b', 'admin@coffemate.com', 'admin', '2018-04-03 05:21:52', '9fff9cc26e539214e9a5fd3b6a10cde9.jpg', '2018-03-11 22:07:16', 1),
(16, 'mesero', 'Julio ', 'Gonzalez', 'e61d1337ef5bb50973c6c87c52bb2da60bb79591e18fca85d710c4e43f0a452afd6b6067a276a8974fe2dd8d20306ff8750f011676ea14b5dfe025bd8b9d1b3e', 'mesero1@coffeemate.com', 'waiter', '2018-03-23 02:07:49', 'e00c5c1bccf60876027591f9e7600a36.jpg', '2018-03-20 18:04:58', 1),
(17, 'cocina', 'Cocina ', '1', '40be2963072c7add6237a0b089d5e8653313f562ca743950892b11132c433668b9a83fe06617cf2f06fb59c6db34f168e043b84db59af77291d334d021f9eea8', 'cocina1@coffeemate.com', 'kitchen', '2018-03-23 02:08:52', NULL, '2018-03-20 18:09:39', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zarest_variations`
--

CREATE TABLE `zarest_variations` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zarest_waiters`
--

CREATE TABLE `zarest_waiters` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `created_at` varchar(150) DEFAULT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `zarest_waiters`
--

INSERT INTO `zarest_waiters` (`id`, `name`, `phone`, `email`, `created_at`, `store_id`) VALUES
(8, 'Marcos Aguirre', '56234156', 'jperez@gmail.com.gt', '2018-03-11 18:53:02', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zarest_warehouses`
--

CREATE TABLE `zarest_warehouses` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `adresse` varchar(400) DEFAULT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zarest_zones`
--

CREATE TABLE `zarest_zones` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `zarest_zones`
--

INSERT INTO `zarest_zones` (`id`, `store_id`, `name`) VALUES
(9, 1, 'Primer Nivel'),
(10, 1, 'Segundo Nivel'),
(11, 1, 'Patio Trasero'),
(12, 5, 'Area de niños'),
(13, 5, 'Primer Nivel'),
(14, 5, 'Segundo Nivel');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `zarest_categories`
--
ALTER TABLE `zarest_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zarest_categorie_expences`
--
ALTER TABLE `zarest_categorie_expences`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zarest_combo_items`
--
ALTER TABLE `zarest_combo_items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zarest_customers`
--
ALTER TABLE `zarest_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zarest_expences`
--
ALTER TABLE `zarest_expences`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zarest_holds`
--
ALTER TABLE `zarest_holds`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zarest_payements`
--
ALTER TABLE `zarest_payements`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zarest_posales`
--
ALTER TABLE `zarest_posales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zarest_products`
--
ALTER TABLE `zarest_products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zarest_purchases`
--
ALTER TABLE `zarest_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zarest_purchase_items`
--
ALTER TABLE `zarest_purchase_items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zarest_registers`
--
ALTER TABLE `zarest_registers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zarest_sales`
--
ALTER TABLE `zarest_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zarest_sale_items`
--
ALTER TABLE `zarest_sale_items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zarest_settings`
--
ALTER TABLE `zarest_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zarest_stocks`
--
ALTER TABLE `zarest_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zarest_stores`
--
ALTER TABLE `zarest_stores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zarest_suppliers`
--
ALTER TABLE `zarest_suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zarest_tables`
--
ALTER TABLE `zarest_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zarest_users`
--
ALTER TABLE `zarest_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zarest_waiters`
--
ALTER TABLE `zarest_waiters`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zarest_warehouses`
--
ALTER TABLE `zarest_warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zarest_zones`
--
ALTER TABLE `zarest_zones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `zarest_categories`
--
ALTER TABLE `zarest_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `zarest_categorie_expences`
--
ALTER TABLE `zarest_categorie_expences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `zarest_combo_items`
--
ALTER TABLE `zarest_combo_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de la tabla `zarest_customers`
--
ALTER TABLE `zarest_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `zarest_expences`
--
ALTER TABLE `zarest_expences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `zarest_holds`
--
ALTER TABLE `zarest_holds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;
--
-- AUTO_INCREMENT de la tabla `zarest_payements`
--
ALTER TABLE `zarest_payements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `zarest_posales`
--
ALTER TABLE `zarest_posales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1608;
--
-- AUTO_INCREMENT de la tabla `zarest_products`
--
ALTER TABLE `zarest_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT de la tabla `zarest_purchases`
--
ALTER TABLE `zarest_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `zarest_purchase_items`
--
ALTER TABLE `zarest_purchase_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `zarest_registers`
--
ALTER TABLE `zarest_registers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT de la tabla `zarest_sales`
--
ALTER TABLE `zarest_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT de la tabla `zarest_sale_items`
--
ALTER TABLE `zarest_sale_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1077;
--
-- AUTO_INCREMENT de la tabla `zarest_settings`
--
ALTER TABLE `zarest_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `zarest_stocks`
--
ALTER TABLE `zarest_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT de la tabla `zarest_stores`
--
ALTER TABLE `zarest_stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `zarest_suppliers`
--
ALTER TABLE `zarest_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `zarest_tables`
--
ALTER TABLE `zarest_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT de la tabla `zarest_users`
--
ALTER TABLE `zarest_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `zarest_waiters`
--
ALTER TABLE `zarest_waiters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `zarest_warehouses`
--
ALTER TABLE `zarest_warehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `zarest_zones`
--
ALTER TABLE `zarest_zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
