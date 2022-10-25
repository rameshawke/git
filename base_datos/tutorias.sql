-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-09-2022 a las 18:41:53
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tutorias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fkpersona` bigint(20) UNSIGNED NOT NULL,
  `fkgrupo` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id`, `fkpersona`, `fkgrupo`, `created_at`, `updated_at`) VALUES
(5, 1, 1, NULL, NULL),
(6, 2, 1, NULL, NULL),
(7, 3, 1, NULL, NULL),
(8, 4, 1, NULL, NULL),
(9, 12, 8, NULL, NULL),
(10, 9, 4, NULL, NULL),
(11, 13, 13, NULL, NULL),
(12, 11, 5, NULL, NULL),
(13, 14, 1, '2022-07-26 17:23:53', '2022-07-26 17:23:53'),
(14, 15, 1, '2022-07-28 17:57:16', '2022-07-28 17:57:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre_carrera` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(900) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`id`, `nombre_carrera`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 'Desarrollo y Gestion de Software', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Software.jpg', NULL, NULL),
(2, 'Agricultura Sustentable y Protegida', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Agricultura.jpg', NULL, NULL),
(3, 'Gastronomía', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Gastronomia.jpg', NULL, NULL),
(4, 'Mantenimiento Industrial', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Mantenimiento.jpg', NULL, NULL),
(5, 'Mecatrónica', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Mecatronica2.jpg', NULL, NULL),
(6, 'Procesos Bioalimentarios', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Procesos.jpg', NULL, NULL),
(7, 'Enfermería', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Enfermeria.jpg', NULL, NULL),
(8, 'Gestión y Desarrollo Turístico', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Turismo.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipo_cita` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `estatus` tinyint(1) NOT NULL,
  `fkalumno` bigint(20) UNSIGNED NOT NULL,
  `fkencargada` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`id`, `tipo_cita`, `fecha`, `hora`, `estatus`, `fkalumno`, `fkencargada`, `created_at`, `updated_at`) VALUES
(1, 'Medico', '2022-07-21', '10:00:00', 1, 5, 1, NULL, NULL),
(2, 'Psicologo', '2022-07-21', '11:00:00', 1, 8, 1, NULL, NULL),
(3, 'Medico', '2022-07-21', '09:00:00', 1, 9, 1, NULL, NULL),
(5, 'Psicólogo', '2022-07-26', '00:06:00', 1, 6, 2, NULL, NULL),
(6, 'Psicólogo', '2022-07-28', '12:00:00', 1, 8, 2, NULL, NULL),
(7, 'Medico', '2022-07-22', '08:00:00', 1, 7, 3, NULL, NULL),
(8, 'Psicólogo', '2022-07-25', '11:30:00', 1, 12, 2, NULL, NULL),
(9, 'Psicólogo', '2022-07-27', '10:00:00', 1, 13, 2, NULL, NULL),
(10, 'Medico', '2022-07-29', '10:00:00', 1, 8, 3, NULL, NULL),
(11, 'Medico', '2022-08-01', '10:00:00', 1, 14, 3, NULL, NULL),
(12, 'Tutorias', '2022-09-05', '10:00:00', 1, 5, 1, NULL, NULL),
(13, 'Tutorias', '2022-08-05', '09:00:00', 1, 6, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encargada`
--

CREATE TABLE `encargada` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fkpersona` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `encargada`
--

INSERT INTO `encargada` (`id`, `fkpersona`, `created_at`, `updated_at`) VALUES
(1, 10, NULL, NULL),
(2, 7, NULL, NULL),
(3, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre_grupo` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grado` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grupo` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(900) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fkcarrera` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`id`, `nombre_grupo`, `grado`, `grupo`, `imagen`, `fkcarrera`, `created_at`, `updated_at`) VALUES
(1, 'IDGS', '9', 'A', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Software.jpg', 1, NULL, NULL),
(2, 'IDGS', '3', 'A', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Software.jpg', 1, NULL, NULL),
(3, 'IDGS', '6', 'A', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Software.jpg', 1, NULL, NULL),
(4, 'MEC', '3', 'A', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Mecatronica2.jpg', 5, NULL, NULL),
(5, 'MEC', '6', 'A', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Mecatronica2.jpg', 5, NULL, NULL),
(6, 'ASP', '3', 'A', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Agricultura.jpg', 2, NULL, NULL),
(7, 'ASP', '6', 'A', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Agricultura.jpg', 2, NULL, NULL),
(8, 'ASP', '9', 'A', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Agricultura.jpg', 2, NULL, NULL),
(9, 'ENF', '3', 'A', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Enfermeria.jpg', 7, NULL, NULL),
(10, 'ENF', '6', 'A', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Enfermeria.jpg', 7, NULL, NULL),
(11, 'ENF', '9', 'A', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Enfermeria.jpg', 7, NULL, NULL),
(12, 'GAST', '3', 'A', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Gastronomia.jpg', 3, NULL, NULL),
(13, 'GAST', '6', 'A', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Gastronomia.jpg', 3, NULL, NULL),
(14, 'GAST', '9', 'A', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Gastronomia.jpg', 3, NULL, NULL),
(15, 'MTTO', '3', 'A', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Mantenimiento.jpg', 4, NULL, NULL),
(16, 'MTTO', '6', 'A', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Mantenimiento.jpg', 4, NULL, NULL),
(17, 'MTTO', '9', 'A', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Mantenimiento.jpg', 4, NULL, NULL),
(18, 'PA', '3', 'A', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Procesos.jpg', 6, NULL, NULL),
(19, 'PA', '6', 'A', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Procesos.jpg', 6, NULL, NULL),
(20, 'PA', '9', 'A', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Procesos.jpg', 6, NULL, NULL),
(21, 'TUR', '3', 'A', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Turismo.jpg', 8, NULL, NULL),
(22, 'TUR', '6', 'A', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Turismo.jpg', 8, NULL, NULL),
(23, 'TUR', '9', 'A', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Turismo.jpg', 8, NULL, NULL),
(24, 'ASP', '3', 'B', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Agricultura.jpg', 2, NULL, NULL),
(25, 'ASP', '6', 'B', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Agricultura.jpg', 2, NULL, NULL),
(26, 'ASP', '9', 'B', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Agricultura.jpg', 2, NULL, NULL),
(27, 'MTTO', '3', 'B', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Mantenimiento.jpg', 4, NULL, NULL),
(28, 'MMTO', '6', 'B', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Mantenimiento.jpg', 4, NULL, NULL),
(29, 'MTTO', '9', 'B', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Mantenimiento.jpg', 4, NULL, NULL),
(30, 'ENF', '3', 'B', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Enfermeria.jpg', 7, NULL, NULL),
(31, 'ENF', '6', 'B', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Enfermeria.jpg', 7, NULL, NULL),
(32, 'ENF', '9', 'B', 'https://utescuinapa.edu.mx/wp-content/uploads/2021/04/Enfermeria.jpg', 7, NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_04_172308_create_persona_table', 1),
(6, '2022_07_04_172423_create_carrera_table', 1),
(7, '2022_07_04_172544_create_grupo_table', 1),
(8, '2022_07_04_172556_create_alumno_table', 1),
(9, '2022_07_04_172619_create_usuario_table', 1),
(10, '2022_07_04_172632_create_tutor_table', 1),
(11, '2022_07_04_172652_create_reporte_table', 1),
(12, '2022_07_04_172708_create_encargada_table', 1),
(13, '2022_07_04_182404_create_citas_table', 1);

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
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_paterno` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_materno` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edad` int(11) NOT NULL,
  `genero` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `nombre`, `a_paterno`, `a_materno`, `edad`, `genero`, `created_at`, `updated_at`) VALUES
(1, 'Jesús Alfonso', 'Rivera', 'Rendón', 21, 'M', NULL, NULL),
(2, 'Brenda Mauri', 'Grave', 'Trujillo', 21, 'F', NULL, NULL),
(3, 'Eric Misael', 'Colio', 'Bernal', 21, 'M', NULL, NULL),
(4, 'Luz Cariño', 'Lopez', 'Llamas', 21, 'F', NULL, NULL),
(5, 'Elizabeth Guadalupe', 'Carrillo', 'Casillas', 26, 'F', NULL, NULL),
(6, 'Paola Maricruz', 'López', 'Ruiz', 25, 'F', NULL, NULL),
(7, 'Jonathan  De Jesús', 'García', 'Luna', 25, 'M', NULL, NULL),
(8, 'Maria Jose', 'Aguilar', 'Loaiza', 19, 'F', '2022-07-08 12:24:03', '2022-07-08 12:24:03'),
(9, 'Dylan', 'Smith', 'Relish', 21, 'M', '2022-07-10 13:33:46', '2022-07-10 13:33:46'),
(10, 'Miryam Artemisa', 'Rodríguez', 'Monge', 21, 'F', '2022-07-11 16:54:15', '2022-07-11 16:54:15'),
(11, 'Penny', 'Smith', 'Relish', 21, 'F', '2022-07-12 10:48:48', '2022-07-12 10:48:48'),
(12, 'Alfonso', 'Aguilar', 'Loaiza', 21, 'M', '2022-07-12 10:50:31', '2022-07-12 10:50:31'),
(13, 'Angellin', 'Grave', 'Trujillo', 14, 'F', '2022-07-12 12:36:10', '2022-07-12 12:36:10'),
(14, 'Cinthya Nereyda', 'Vargas', 'Partida', 21, 'F', '2022-07-26 17:23:53', '2022-07-26 17:23:53'),
(15, 'Jair Osvaldo', 'Sevilla', 'Barrón', 20, 'M', '2022-07-28 17:57:16', '2022-07-28 17:57:16');

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
-- Estructura de tabla para la tabla `reporte`
--

CREATE TABLE `reporte` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asunto` char(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `fkalumno` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `reporte`
--

INSERT INTO `reporte` (`id`, `asunto`, `fecha`, `fkalumno`, `created_at`, `updated_at`) VALUES
(1, 'La persona presenta ciertos problemas de ansiedad', '2022-07-22', 8, '2022-07-23 00:06:11', '2022-07-23 00:06:11'),
(2, 'El alumno presenta severos problemas asmáticos', '2022-07-28', 14, '2022-07-28 17:58:47', '2022-07-28 17:58:47'),
(3, 'La alumna presenta una enfermedad crónica severa', '2022-08-04', 8, '2022-08-05 04:35:23', '2022-08-05 04:35:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutor`
--

CREATE TABLE `tutor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre_tutor` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fkgrupo` bigint(20) UNSIGNED NOT NULL,
  `fkpersona` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tutor`
--

INSERT INTO `tutor` (`id`, `nombre_tutor`, `fkgrupo`, `fkpersona`, `created_at`, `updated_at`) VALUES
(1, 'Elizabeth Carrillo', 1, 5, NULL, NULL),
(2, 'Alfonso Rivera', 5, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usuario` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_usuario` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fkpersona` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `pass`, `tipo_usuario`, `fkpersona`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'Administrador', 1, NULL, NULL),
(2, 'plopez', 'plopez', 'Doctor', 6, NULL, NULL),
(3, 'jgarcia', 'jgarcia', 'Psicologo', 7, NULL, NULL),
(4, 'ecarrillo', 'ecarrillo', 'Tutor', 5, NULL, NULL),
(5, 'alfonso', '1234', 'Normal', 9, NULL, NULL),
(6, 'mrodriguez', 'mrodriguez', 'Administrador', 10, NULL, NULL),
(7, 'jrivera', 'jrivera', 'Tutor', 1, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumno_fkpersona_foreign` (`fkpersona`),
  ADD KEY `alumno_fkgrupo_foreign` (`fkgrupo`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citas_fkalumno_foreign` (`fkalumno`),
  ADD KEY `citas_fkencargada_foreign` (`fkencargada`);

--
-- Indices de la tabla `encargada`
--
ALTER TABLE `encargada`
  ADD PRIMARY KEY (`id`),
  ADD KEY `encargada_fkpersona_foreign` (`fkpersona`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grupo_fkcarrera_foreign` (`fkcarrera`);

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
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `reporte`
--
ALTER TABLE `reporte`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reporte_fkalumno_foreign` (`fkalumno`);

--
-- Indices de la tabla `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tutor_fkgrupo_foreign` (`fkgrupo`),
  ADD KEY `tutor_fkpersona_foreign` (`fkpersona`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_fkpersona_foreign` (`fkpersona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `encargada`
--
ALTER TABLE `encargada`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reporte`
--
ALTER TABLE `reporte`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tutor`
--
ALTER TABLE `tutor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `alumno_fkgrupo_foreign` FOREIGN KEY (`fkgrupo`) REFERENCES `grupo` (`id`),
  ADD CONSTRAINT `alumno_fkpersona_foreign` FOREIGN KEY (`fkpersona`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `citas_fkalumno_foreign` FOREIGN KEY (`fkalumno`) REFERENCES `alumno` (`id`),
  ADD CONSTRAINT `citas_fkencargada_foreign` FOREIGN KEY (`fkencargada`) REFERENCES `encargada` (`id`);

--
-- Filtros para la tabla `encargada`
--
ALTER TABLE `encargada`
  ADD CONSTRAINT `encargada_fkpersona_foreign` FOREIGN KEY (`fkpersona`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD CONSTRAINT `grupo_fkcarrera_foreign` FOREIGN KEY (`fkcarrera`) REFERENCES `carrera` (`id`);

--
-- Filtros para la tabla `reporte`
--
ALTER TABLE `reporte`
  ADD CONSTRAINT `reporte_fkalumno_foreign` FOREIGN KEY (`fkalumno`) REFERENCES `alumno` (`id`);

--
-- Filtros para la tabla `tutor`
--
ALTER TABLE `tutor`
  ADD CONSTRAINT `tutor_fkgrupo_foreign` FOREIGN KEY (`fkgrupo`) REFERENCES `grupo` (`id`),
  ADD CONSTRAINT `tutor_fkpersona_foreign` FOREIGN KEY (`fkpersona`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_fkpersona_foreign` FOREIGN KEY (`fkpersona`) REFERENCES `persona` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
