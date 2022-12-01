-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 01-12-2022 a las 19:38:08
-- Versión del servidor: 10.5.15-MariaDB-cll-lve
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u487073322_Lavaderos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_06_01_195701_tb_usuarios', 1),
(4, '2022_06_01_200110_tb_tipousuarios', 1),
(5, '2022_06_01_200140_tb_productos', 1),
(6, '2022_06_01_200209_tb_pedidos', 1),
(7, '2022_06_01_200228_tb_detallepedidos', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_detallepedidos`
--

CREATE TABLE `tb_detallepedidos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_producto` bigint(20) UNSIGNED NOT NULL,
  `id_pedido` bigint(20) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `total` double(50,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_pedidos`
--

CREATE TABLE `tb_pedidos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_usuario` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_productos`
--

CREATE TABLE `tb_productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `costo` double(50,2) NOT NULL,
  `color` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `medida` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `material` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_productos`
--

INSERT INTO `tb_productos` (`id`, `nombre`, `foto`, `descripcion`, `costo`, `color`, `medida`, `material`, `created_at`, `updated_at`) VALUES
(1, 'Lavadero cobijero', '20220713_034336_20220613_010505_ima3.png', 'Lavadero cobijero sin pileta en grano', 0.01, 'amarillo', '83x62', 'grano', '2022-07-13 08:43:37', '2022-07-13 08:43:37'),
(2, 'Lavadero cobijero', '20220713_034418_20220613_010731_ima39.png', 'Lavadero cobijero jabonero con pileta en laja', 0.01, 'azul', '120x100', 'Laja', '2022-07-13 08:44:18', '2022-07-13 08:44:18'),
(3, 'Cruz', '20220713_213825_ima20.png', 'Cruz de marmol para difunto,  color negro, tamaño mediano con libro en el centro para grabado.', 0.01, 'Negro', '1.40 cm', 'Marmol', '2022-07-14 02:38:26', '2022-07-14 02:38:26'),
(4, 'Florero', '20220713_214041_ima22.png', 'Florero de adorno para tumba, color blanco y laja de color, tamaño chico.', 0.01, 'Blanco, lija de color rosa', '2x2', 'marmol y laja.', '2022-07-14 02:40:41', '2022-07-14 02:40:41'),
(5, 'Lavadero Infantil', '20220727_034747_ima8.png', 'Lavadero infantil con pileta en grano color verde es muy adaptable a cualquier espacio pequeño', 0.01, 'Verde', '40x30', 'Grano', '2022-07-27 08:47:47', '2022-07-27 08:47:47'),
(6, 'Tarja', '20220727_035012_ima10.png', 'Tarja en color verde, echo de material grano y laja. Muy duradera y bonita', 0.01, 'verde', '170x60', 'Grano y Laja', '2022-07-27 08:50:12', '2022-07-27 08:50:12'),
(7, 'Cruz Corazon', '20220808_022601_20220727_035235_ima18.png', 'Cruz frente de corazon, echa de marmol y incluye grabado', 0.01, 'blanca', '120x50', 'Laja y lana', '2022-07-27 08:52:35', '2022-08-08 07:26:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_tipousuarios`
--

CREATE TABLE `tb_tipousuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_tipousuarios`
--

INSERT INTO `tb_tipousuarios` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'usuario', '2022-07-13 03:21:29', '2022-07-13 03:21:35'),
(2, 'administrador', '2022-07-13 03:21:32', '2022-07-13 03:21:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apm` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `direccion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono1` bigint(20) NOT NULL,
  `telefono2` bigint(20) NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_tipousuario` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`id`, `nombre`, `app`, `apm`, `fecha`, `direccion`, `telefono1`, `telefono2`, `email`, `pass`, `id_tipousuario`, `created_at`, `updated_at`) VALUES
(2, 'Usuario', 'UTVT', 'utvt', '2022-08-10', 'Santa Maria Atarasquillo', 7282859536, 7282859957, 'usuario@utvt.com', '123usuario', 1, '2022-08-17 03:13:28', '2022-08-17 03:13:28'),
(3, 'Administracion', 'UTVT', 'utvt', '2001-09-03', 'Santa Maria Atarasquillo', 7282859515, 7282859948, 'admin@utvt.com', '123admin', 2, '2022-08-17 04:46:55', '2022-08-17 04:46:55');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `tb_detallepedidos`
--
ALTER TABLE `tb_detallepedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_detallepedidos_id_producto_foreign` (`id_producto`),
  ADD KEY `tb_detallepedidos_id_pedido_foreign` (`id_pedido`);

--
-- Indices de la tabla `tb_pedidos`
--
ALTER TABLE `tb_pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_pedidos_id_usuario_foreign` (`id_usuario`);

--
-- Indices de la tabla `tb_productos`
--
ALTER TABLE `tb_productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_tipousuarios`
--
ALTER TABLE `tb_tipousuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_detallepedidos`
--
ALTER TABLE `tb_detallepedidos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_pedidos`
--
ALTER TABLE `tb_pedidos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_productos`
--
ALTER TABLE `tb_productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tb_tipousuarios`
--
ALTER TABLE `tb_tipousuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_detallepedidos`
--
ALTER TABLE `tb_detallepedidos`
  ADD CONSTRAINT `tb_detallepedidos_id_pedido_foreign` FOREIGN KEY (`id_pedido`) REFERENCES `tb_pedidos` (`id`),
  ADD CONSTRAINT `tb_detallepedidos_id_producto_foreign` FOREIGN KEY (`id_producto`) REFERENCES `tb_productos` (`id`);

--
-- Filtros para la tabla `tb_pedidos`
--
ALTER TABLE `tb_pedidos`
  ADD CONSTRAINT `tb_pedidos_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
