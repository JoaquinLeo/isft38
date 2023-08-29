-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 29, 2023 at 03:43 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `isft38`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumnos`
--

CREATE TABLE `alumnos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dni` int(11) NOT NULL,
  `carrera_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nacionalidad` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuil` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domicilio` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barrio` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provincia` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cod_postal` int(11) NOT NULL,
  `fec_nac` date NOT NULL,
  `lug_nac` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prov_nac` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `est_civil` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hijos` tinyint(1) NOT NULL,
  `fam_a_cargo` tinyint(1) NOT NULL,
  `tel_fijo` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_alternativo` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_alt_pertenece` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulo_intermedio` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anio_egreso` date NOT NULL,
  `escuela_egreso` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distrito_egreso` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otro_estudio` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otro_estudio_inst` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otro_estudio_egreso` date NOT NULL,
  `otro_estudio2` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otro_estudio_inst2` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otro_estudio_egreso2` date NOT NULL,
  `trabaja` tinyint(1) NOT NULL,
  `actividad_trabajo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `horario_trabajo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obra_social` tinyint(1) NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visado_por` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fotoc_dni_ok` tinyint(1) NOT NULL,
  `fotoc_titulo_ok` tinyint(1) NOT NULL,
  `certificado_sec_ok` tinyint(1) NOT NULL,
  `foto_ok` tinyint(1) NOT NULL,
  `partida_nac_ok` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `anios`
--

CREATE TABLE `anios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anio` int(11) NOT NULL,
  `descripcion` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anios`
--

INSERT INTO `anios` (`id`, `anio`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 1, 'PRIMERO', NULL, NULL),
(2, 2, 'SEGUNDO', NULL, NULL),
(3, 3, 'TERCERO', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carreras`
--

CREATE TABLE `carreras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anios` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resolucion` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `texto` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_carpeta` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carreras`
--

INSERT INTO `carreras` (`id`, `descripcion`, `anios`, `resolucion`, `texto`, `imagen`, `nombre_carpeta`, `created_at`, `updated_at`) VALUES
(1, 'Tecnicatura Superior en Logística', '3', '1557/08', 'Es el profesional capacitado para gestionar, diseñar, implementar, evaluar y optimizar los procesos que componen la administración del flujo de materiales y servicios desde el proveedor hasta el cliente. Tendrá la capacidad de implementar técnicas que faciliten la toma de decisiones y procedimientos para la gestión en el área, de acuerdo a los marcos conceptuales que sustentan los principios y normas pertinente al campo de la logística.', '', 'adasdd', NULL, '2022-10-07 05:20:25'),
(2, 'Tecnicatura Superior en Análisis de Sistemas', '3', '6790/19', 'Es el profesional capacitado para diagnosticar necesidades, diseñar, desarrollar, poner en servicio y mantener productos, servicios o soluciones informáticas acorde a los requerimientos de las organizaciones.\r\n\r\nTendrá la capacidad de diagnosticar el conflicto de una organización, podrá ordenar sus recursos y actividades, además diseñar y desarrollar sistemas informáticos.', '', 'SISTEMAS', NULL, '2022-10-29 01:07:56'),
(3, 'Tecnicatura Superior en Administración Contable', '3', '273/03', 'El Técnico Superior en Administración Contable es un profesional que estará capacitado para desarrollar las competencias para: organizar, programar, ejecutar y controlar las operaciones comerciales, financieras y administrativas de la organización; elaborar, controlar y registrar el flujo de información; organizar y planificar los recursos referidos para desarrollar sus actividades interactuando con el entorno y participando en la toma de decisiones relacionadas con sus actividades. Coordinando equipos de trabajo relacionado con su especialidad. Estas competencias serán desarrolladas según las incumbencias y las normas técnicas y legales que rigen su campo profesional.', '', '', NULL, NULL),
(4, 'Tecnicatura Superior en Administración de Recursos Humanos\r\n', '3', '11/11', 'Es el profesional capacitado para organizar, programar, planificar y ejecutar diversas actividades del sector de Recursos Humanos de las organizaciones en las cuales se inserte. Tendrá la capacidad de organizar, programar, ejecutar y controlar en las áreas de desarrollo de dirección y planeamiento, producción, recursos humanos, financiamiento, contabilización, gestión integral dentro de los distintos tipos de organización.', '', '', NULL, NULL),
(5, 'Tecnicatura Superior en Gestión Ambiental y Salud', '3', '123/12', 'Es el profesional con formación científica, tecnológica y ética, competente para la intervención en los procesos técnicos y específicos del campo de la gestión ambiental. Diseñará y ejecutará planes y programas tendientes a la vigilancia ambiental y sanitaria, en ámbitos urbanos y rurales.\r\n\r\nTendrá la capacidad de coordinar actividades de protección y promoción de la salud ambiental e implementar estrategias de atención primaria.', '', '', NULL, NULL),
(6, 'Tecnicatura Superior en Higiene y Seguridad en el Trabajo', '3', '11/111', 'Es el profesional capacitado para el asesoramiento a reparticiones, empresas y asociaciones profesionales en todo lo concerniente a su actividad. Estará habilitado para controlar el cumplimiento de las normas de seguridad e higiene en el trabajo en el área de su competencia, adoptando las medidas preventivas de acuerdo a cada tipo de industria o actividad. Tendrá la capacidad de elaborar normas manuales de higiene y seguridad en el trabajo, además de realizar tareas de investigación y desarrollo para el mejor desenvolvimiento de su labor.', '', '', NULL, NULL),
(7, 'Tecnicatura Superior en Laboratorio de Análisis Clí­nicos', '3', '44/999', '\r\nEl Técnico Superior en Laboratorio de Análisis Clínicos es competente, de acuerdo a las actividades que se desarrollan, para:\r\n\r\n- Atender a la persona y obtener materiales biológicos para su análisis, aportando a la producción de información a través de la ejecución de procedimientos analíticos y la gestión del proceso de su trabajo.\r\n\r\n- Involucrarse en los procesos de mejora continua.\r\n\r\nTodo ello con la supervisión del/la Bioquímico/a o Profesional universitario a cargo del laboratorio habilitado.\r\n\r\nComo profesional de la salud, su práctica profesional está caracterizada por una actitud reflexiva, crítica, ética y humanística basada en una concepción integral del hombre propendiendo a mejorar la calidad de vida de la población.', '', '', NULL, NULL),
(8, 'Tecnicatura Superior en Mantenimiento Industrial', '3', '45/55', 'Es el profesional que tendrá como propósito identificar problemas, buscar alternativas y tomar decisiones ante la presencia de fallas. A su vez, estará habilitado para evaluar situaciones y diseñar propuestas de mejora en el mantenimiento. Tendrá la capacidad de la organización del trabajo propio y de los otros a su cargo. Podrá formular y ejecutar planes de mantenimiento preventivo y predictivo óptimos, en función de los mecanismos de deterioros detectados. Tendrá además la habilidad para inspeccionar e identificar el estado de deterioro de un equipo para lograr su restauración, mejorando la confiabilidad y mantenibilidad del mismo.', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carrerasedes`
--

CREATE TABLE `carrerasedes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sede_id` bigint(20) UNSIGNED DEFAULT NULL,
  `carrera_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carrerasedes`
--

INSERT INTO `carrerasedes` (`id`, `sede_id`, `carrera_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-10-07 05:20:25', '2022-10-07 05:20:25'),
(2, 1, 2, '2022-10-29 01:07:56', '2022-10-29 01:07:56');

-- --------------------------------------------------------

--
-- Table structure for table `categorias_residuos`
--

CREATE TABLE `categorias_residuos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorias_residuos`
--

INSERT INTO `categorias_residuos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Residuos Generales', '2023-08-26 07:32:13', '2023-08-26 21:14:58'),
(3, 'Residuos reciclables', '2023-08-26 07:39:56', '2023-08-26 08:19:16'),
(5, 'Cigarrillo', '2023-08-26 21:07:31', '2023-08-26 21:28:14');

-- --------------------------------------------------------

--
-- Table structure for table `comisions`
--

CREATE TABLE `comisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sede_id` bigint(20) UNSIGNED DEFAULT NULL,
  `carrera_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comision` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comisions`
--

INSERT INTO `comisions` (`id`, `sede_id`, `carrera_id`, `comision`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'A', '2022-09-22 02:29:01', '2022-09-22 02:29:01'),
(2, 1, 2, 'B', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cupos`
--

CREATE TABLE `cupos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `carrera_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cupos` int(11) NOT NULL,
  `reservados` int(11) NOT NULL,
  `inscriptos` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cupos`
--

INSERT INTO `cupos` (`id`, `carrera_id`, `cupos`, `reservados`, `inscriptos`, `created_at`, `updated_at`) VALUES
(22, 4, 75, 75, 25, '2023-06-24 21:55:17', '2023-08-26 07:56:22'),
(23, 3, 50, 8, 0, '2023-06-25 00:03:44', '2023-08-26 21:28:04'),
(25, 5, 45, 1, 0, '2023-06-25 03:38:35', '2023-07-25 20:45:58');

-- --------------------------------------------------------

--
-- Table structure for table `etiquetas`
--

CREATE TABLE `etiquetas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `etiquetas`
--

INSERT INTO `etiquetas` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'novedades', 'Novedades', '2022-09-22 02:47:39', '2022-09-22 02:47:39'),
(3, 'cartelera', 'Cartelera', '2022-12-16 01:19:14', '2023-02-23 04:05:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fechas`
--

CREATE TABLE `fechas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dia_hora` datetime NOT NULL,
  `dni` int(11) NOT NULL,
  `carrera_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `historias`
--

CREATE TABLE `historias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `historia` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sede_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `historias`
--

INSERT INTO `historias` (`id`, `historia`, `sede_id`, `created_at`, `updated_at`) VALUES
(2, 'Gracias a las iniciativa de un grupo de personas, surge en el año 1972 la necesidad de la creación del Instituto de Formación Técnica Nº 38, destinado a la enseñanza técnica de nivel superior para los habitantes de nuestra zona.\r\n\r\nPor entonces se vislumbró que la estructura interna del sector productivo, había alcanzado un grado de heterogeneidad mucho mayor que el que tuviera hasta ese momento, generando en consecuencia, un estancamiento del volumen de mano de obra especializado, para las ramas más dinámicas de la industria y el comercio. Con el objeto de satisfacer la demanda de ocupaciones que requerían niveles educacionales específicos de alta calificación, se canalizaron los objetivos al sector de servicios. También se tuvieron en cuenta la realidad económica y las crecientes aspiraciones de las personas del lugar, que deseaban mejorar su nivel técnico-formativo.\r\n\r\nComo consecuencia del deterioro de la situación económica de nuestra zona y alrededores, cada vez fue mayor la cantidad de jóvenes egresados de escuelas secundarias que dejaban de emigrar hacia las grandes urbes en busca de una Educación Superior, volcándose a las nuevas e interesantes carreras que la región demandaba, asegurando amplios campos laborales y futuro a sus egresos.De esta manera, los estudiantes no solo no afectaban el presupuesto familiar (viajando, manteniendo viviendas en grandes ciudades) sino también podían contribuir a la economía familiar realizando alguna actividad laboral.\r\n\r\nEste cúmulo de circunstancias ayudaron a definir los ejes que permitieron enfocar un nuevo tratamiento de la Educación Superior. Atento a lo expuesto, el 28 de noviembre de 1972 el entonces Ministerio de Educación de la Provincia de Buenos Aires emitió la resolución Nª 2965/72 que dispuso la creación del establecimiento.\r\n\r\nEste Instituto superior, se caracterizó por la flexibilidad estructural desde que, en el año 1973, comenzó su actividad académica con el dictado de las Licenciaturas en Administración de Empresas y en administración de personal. En 1979, se reestructura con carreras de Técnicos Superiores (Análisis de Sistemas, Administración de Empresas, Seguridad e Higiene Industrial y Mantenimiento Mecánico). A partir de 1982 se inicia el dictado de las carreras de Formación Docente, comenzando con la carrera de Asistente Educacional y, en 1988, Magisterio Especializado en Educación de Adultos. Para los docentes en actividad desde 1985 se implementaron carreras con modalidad “no residentes” (Actualización Docente, Conducción de servicios Educativos, Supervisión de servicios educativos, Supervisión de Servicios Educativos y Capacitación Docente Nivel I y Nivel II). Con las mismas características se abrió en 1991 la carrera de bibliotecnología (Auxiliar, Escolar y Profesional). Paralelamente desde 1985 se inició el distado de carreras regulares como el Profesorado en Psicopedagogía y en 1992 el Profesorado de Educación Física. En 1994 se dictó Capacitación Docente nivel III, orientada especialmente a los profesores de la casa (egresados universitarios) para mejorar su quehacer pedagógico. En el mismo año se crea la Extensión Ramallo, con el dictado de las carreras Técnico Superior en Administración de Empresas y el Profesorado Especializado en jardín maternal. El curso de Operador de PC para los internos de la Unidad Penal Nª3 en la Extensión allí creada en 1991, continúa desarrollándose desde esa fecha.\r\n\r\nA partir de 1997, el Instituto Superior Nª38 volvió a ser exclusivamente técnico y actualmente se dictan las carreras de Analista de Sistemas de Información y Analista en Administración de Empresas, en la Sede Central; Analista en Administración de Empresas y Operador de PC, en la extensión Ramallo y Operador de PC, en la Extensión Unidad Penal Nª3. En 1998 se da apertura a la carrera de Técnico Superior en Seguridad, Higiene y Control Ambiental Industrial.\r\n\r\nLa Institución pretende contar con los mejores recursos técnicos pedagógicos, y para llevar adelante esta propuesta, cuenta con profesores de primer Nivel, una tradición académica de consideración, una creciente actividad en la capacitación de su personal y un incondicional apoyo de su asociación Cooperadora y del Centro de Estudiantes.', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `horarios`
--

CREATE TABLE `horarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sede_id` bigint(20) UNSIGNED DEFAULT NULL,
  `carrera_id` bigint(20) UNSIGNED DEFAULT NULL,
  `anio_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profesor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `materia_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comision_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dia` bigint(20) UNSIGNED DEFAULT NULL,
  `modulohorario_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comentario` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `horarios`
--

INSERT INTO `horarios` (`id`, `sede_id`, `carrera_id`, `anio_id`, `profesor_id`, `materia_id`, `comision_id`, `dia`, `modulohorario_id`, `comentario`, `created_at`, `updated_at`) VALUES
(14, 1, 2, 3, 1, 1, 1, 3, 5, 'a', '2022-09-10 04:16:15', '2022-09-10 04:16:15'),
(15, 1, 2, 3, 1, 1, 1, 5, 5, NULL, '2022-09-10 04:30:49', '2022-09-10 04:30:49'),
(16, 1, 2, 3, 1, 1, 1, 2, 5, NULL, '2022-09-10 04:33:09', '2022-09-10 04:33:09'),
(17, 1, 2, 3, 1, 1, 1, 4, 5, NULL, '2022-09-10 04:33:31', '2022-09-10 04:33:31'),
(18, 1, 2, 3, 1, 1, 1, 3, 2, NULL, '2022-09-10 04:45:13', '2022-09-10 04:45:13');

-- --------------------------------------------------------

--
-- Table structure for table `lista_espera`
--

CREATE TABLE `lista_espera` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `carrera_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dni` int(11) NOT NULL,
  `telefono` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_alternativo` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `materias`
--

CREATE TABLE `materias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrera_id` bigint(20) UNSIGNED DEFAULT NULL,
  `anio_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profesor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materias`
--

INSERT INTO `materias` (`id`, `descripcion`, `carrera_id`, `anio_id`, `profesor_id`, `created_at`, `updated_at`) VALUES
(1, 'Práctica Profesional', 2, 3, NULL, NULL, NULL),
(2, 'PRÁCTICA PROFESIONALIZANTE', 2, 2, NULL, '2022-09-22 02:33:44', '2022-09-22 02:33:44'),
(3, 'Labore temporibus ut sapiente.1', 1, 1, NULL, '2022-10-07 05:21:58', '2022-10-07 05:21:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(19, '2014_10_12_000000_create_users_table', 1),
(20, '2014_10_12_100000_create_password_resets_table', 1),
(21, '2019_08_19_000000_create_failed_jobs_table', 1),
(22, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(23, '2022_08_18_220204_create_programas_table', 1),
(24, '2022_08_18_220257_create_carreras_table', 1),
(25, '2022_08_18_220330_create_objetivos_table', 1),
(26, '2022_08_18_220346_create_historias_table', 1),
(27, '2022_08_18_220402_create_anios_table', 1),
(28, '2022_08_18_220428_create_horarios_table', 1),
(29, '2022_08_18_220503_create_comisions_table', 1),
(30, '2022_08_18_220556_create_carrerasedes_table', 1),
(31, '2022_08_18_220658_create_modulos_table', 1),
(32, '2022_08_18_220712_create_materias_table', 1),
(33, '2022_08_18_221032_create_profesors_table', 1),
(34, '2022_08_18_221056_create_sedeemails_table', 1),
(35, '2022_08_18_221117_create_sedes_table', 1),
(36, '2022_08_18_221134_create_sedetelefonos_table', 1),
(37, '2022_08_18_235420_alter_programas_table', 1),
(38, '2022_08_18_235726_alter_historias_table', 1),
(39, '2022_08_18_235758_alter_carrerasedes_table', 1),
(40, '2022_08_18_235818_alter_horarios_table', 1),
(41, '2022_08_18_235831_alter_sedeemails_table', 1),
(42, '2022_08_18_235849_alter_materia_table', 1),
(43, '2022_08_18_235901_alter_sedetelefonos_table', 1),
(44, '2022_08_18_235924_alter_objetivos_table', 1),
(45, '2022_08_18_235938_alter_comision_table', 1),
(46, '2022_08_31_015137_create_noticias_table', 1),
(47, '2022_08_31_220114_create_notifications_table', 1),
(48, '2022_08_31_233600_create_etiquetas_table', 1),
(49, '2022_08_31_233933_create_noticias_files', 1),
(50, '2022_09_01_013436_delete_materia_comisions_table', 1),
(51, '2022_09_09_235818_alter_horarios_table_comentario', 1),
(52, '2023_06_12_224040_fechas', 2),
(53, '2023_06_12_224525_alumnos', 2),
(54, '2023_06_12_225506_cupos', 2),
(55, '2023_06_12_225839_lista_espera', 3),
(56, '2023_06_22_070921_create_turnos_table', 4),
(57, '2023_06_22_071240_create_turnos_table', 5),
(58, '2023_07_12_193807_create_turnos_table', 6),
(65, '2023_08_26_034109_create_categorias_residuos_table', 7),
(66, '2023_08_26_034546_create_residuos_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `modulos`
--

CREATE TABLE `modulos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `horainicio` time NOT NULL,
  `horafin` time NOT NULL,
  `duracion` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modulos`
--

INSERT INTO `modulos` (`id`, `horainicio`, `horafin`, `duracion`, `created_at`, `updated_at`) VALUES
(1, '17:45:00', '18:45:00', 60, NULL, NULL),
(2, '18:45:00', '19:45:00', 60, NULL, NULL),
(3, '20:00:00', '21:00:00', 60, NULL, NULL),
(4, '21:00:00', '22:00:00', 60, NULL, NULL),
(5, '16:45:00', '17:45:00', 60, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `noticias`
--

CREATE TABLE `noticias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuerpo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `carrera_id` bigint(20) UNSIGNED NOT NULL,
  `autor` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `archivo1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archivo2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archivo3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `cuerpo`, `imagen`, `created_at`, `updated_at`, `carrera_id`, `autor`, `deleted_at`, `archivo1`, `archivo2`, `archivo3`) VALUES
(1, 'Test', 'Test', 'noticias/1/banner1.jpg', '2022-09-22 02:47:25', '2022-09-22 05:11:14', 2, 1, NULL, 'noticias/1/a.txt', NULL, NULL),
(2, 'test 2', 'adadasd', 'noticias/2/Captura de pantalla 2022-09-07 235006.png', '2022-09-22 02:48:15', '2022-09-22 02:48:15', 2, 1, NULL, NULL, NULL, NULL),
(3, 'Test 3', 'asdadasdasd 3', 'noticias/3/descarga.jfif', '2022-09-22 05:09:06', '2022-09-22 05:09:29', 2, 1, NULL, NULL, NULL, NULL),
(4, 'Inscripciones', '<a href=\"https://cfg.com.ar/turnos/\" class=\"btn btn-success\" target=\"blank\">Turnos para inscripciones</a>', NULL, '2023-02-23 04:07:20', '2023-02-23 04:29:17', 2, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `noticias_etiquetas`
--

CREATE TABLE `noticias_etiquetas` (
  `noticia_id` bigint(20) UNSIGNED NOT NULL,
  `etiqueta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `noticias_etiquetas`
--

INSERT INTO `noticias_etiquetas` (`noticia_id`, `etiqueta_id`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 1, 1, '2022-09-22 05:20:03', '2022-09-22 05:20:03'),
(1, 1, 1, '2022-09-22 05:20:14', '2022-09-22 05:20:14'),
(2, 1, 1, '2022-09-22 05:20:27', '2022-09-22 05:20:27'),
(4, 3, 3, '2023-02-23 04:29:17', '2023-02-23 04:29:17');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `objetivos`
--

CREATE TABLE `objetivos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `objetivo` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sede_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `objetivos`
--

INSERT INTO `objetivos` (`id`, `objetivo`, `sede_id`, `created_at`, `updated_at`) VALUES
(5, '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><font color=\"#333333\"><b>Objetivos generales</b></font></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(51, 51, 51); background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Proporcionar a nuestros estudiantes una adecuada orientacion personal y profesional en función de los requerimientos de la Empresa, de la ciudad, la zona y la región.</span><br></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(51, 51, 51); background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Proporcionar a nuestros estudiantes la adquisición de técnicas de trabajo, intelectual que le permita acceder a la información a su uso de manera progresivamente más autonoma.</span><br></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(51, 51, 51); background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Brindar hábitos de trabajo responsable.</span><br></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(51, 51, 51); background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Preparar profesionales capacitados para competir en el mercado laboral.</span><br></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(51, 51, 51); background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Objetivos de la carreras</span><br></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(51, 51, 51); background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Formar recursos humanos capaces de insertarse laboralmente en el mercado.</span><br></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(51, 51, 51); background-color: var(--bs-card-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">Proporcionar formación especializada y de carárter interdisciplinario en las diferentes áreas de la Ciencia y Tecnología.</span><br></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><br></p>', NULL, '2022-11-04 06:38:47', '2022-11-04 06:40:07');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profesors`
--

CREATE TABLE `profesors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profesors`
--

INSERT INTO `profesors` (`id`, `apellido`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Agusti', 'Gisela', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `programas`
--

CREATE TABLE `programas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sede_id` bigint(20) UNSIGNED DEFAULT NULL,
  `carrera_id` bigint(20) UNSIGNED DEFAULT NULL,
  `anio_id` bigint(20) UNSIGNED DEFAULT NULL,
  `materia_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comision_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profesor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nombrearchivo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ruta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fechaentrega` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programas`
--

INSERT INTO `programas` (`id`, `sede_id`, `carrera_id`, `anio_id`, `materia_id`, `comision_id`, `profesor_id`, `nombrearchivo`, `ruta`, `fechaentrega`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 1, 1, 1, 'programa/1/banner1.jpg', NULL, '2022-10-02', '2022-10-02 02:25:24', '2022-10-02 02:25:24'),
(2, 1, 2, 2, 1, 1, 1, 'programa/2/banner1.jpg', NULL, '2022-10-14', '2022-10-02 02:25:52', '2022-10-02 02:25:52'),
(3, 1, 2, 3, 1, 1, 1, 'programa/3/banner1.jpg', NULL, '2022-10-13', '2022-10-02 02:26:13', '2022-10-02 02:26:13'),
(4, 1, 1, 3, 3, 1, 1, 'programa/4/Auxiliadora.jpg', NULL, '2022-10-12', '2022-10-07 05:22:29', '2022-10-07 05:28:13'),
(5, 1, 1, 2, 3, 1, 1, 'programa/5/Auxiliadora.jpg', NULL, '2022-10-03', '2022-10-07 05:23:16', '2022-10-07 05:27:57'),
(6, 1, 1, 1, 3, 1, 1, 'programa/6/Auxiliadora.jpg', NULL, '2022-10-12', '2022-10-07 05:27:16', '2022-10-07 05:27:16'),
(7, 1, 2, 2, 2, 1, 1, 'programa/7/Nuevo Documento de texto.txt', NULL, '2022-09-27', '2022-10-29 01:08:55', '2022-10-29 01:08:55');

-- --------------------------------------------------------

--
-- Table structure for table `residuos`
--

CREATE TABLE `residuos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `residuo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `peso` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sedeemails`
--

CREATE TABLE `sedeemails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sede_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sedeemails`
--

INSERT INTO `sedeemails` (`id`, `email`, `sede_id`, `created_at`, `updated_at`) VALUES
(3, 'sarasa@sarasa.com', NULL, '2022-09-24 04:58:45', '2022-09-24 04:58:45'),
(6, 'gagusti@isft38.edu.ar', 1, '2022-10-06 04:20:06', '2022-10-06 04:20:06');

-- --------------------------------------------------------

--
-- Table structure for table `sedes`
--

CREATE TABLE `sedes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `calle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sedeimagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sedes`
--

INSERT INTO `sedes` (`id`, `descripcion`, `calle`, `numero`, `ciudad`, `sedeimagen`, `created_at`, `updated_at`) VALUES
(1, 'Sede Central San Nicolás', 'Av. Central', '1825', 'San Nicolás de los Arroyos', 'sedes/1/Auxiliadora.jpg', NULL, '2022-10-01 02:58:48');

-- --------------------------------------------------------

--
-- Table structure for table `sedetelefonos`
--

CREATE TABLE `sedetelefonos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `caracteristica` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sede_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sedetelefonos`
--

INSERT INTO `sedetelefonos` (`id`, `caracteristica`, `numero`, `sede_id`, `created_at`, `updated_at`) VALUES
(1, '0336', '4492188', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `turnos`
--

CREATE TABLE `turnos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dia_hora` datetime NOT NULL,
  `dni` int(11) DEFAULT NULL,
  `carrera_id` bigint(20) UNSIGNED DEFAULT NULL,
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `turnos`
--

INSERT INTO `turnos` (`id`, `dia_hora`, `dni`, `carrera_id`, `hash`, `created_at`, `updated_at`) VALUES
(1, '2023-12-04 18:00:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:45:58'),
(2, '2023-12-04 18:15:00', 23476116, 3, NULL, '2023-07-25 20:44:32', '2023-08-26 20:53:13'),
(3, '2023-12-04 18:30:00', 12312345, 3, NULL, '2023-07-25 20:44:32', '2023-08-26 21:15:20'),
(4, '2023-12-04 18:45:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(5, '2023-12-04 19:00:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(6, '2023-12-04 19:15:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(7, '2023-12-04 19:30:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(8, '2023-12-04 19:45:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(9, '2023-12-04 20:00:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(10, '2023-12-04 20:15:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(11, '2023-12-04 20:30:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(12, '2023-12-04 20:45:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(13, '2023-12-04 21:00:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(14, '2023-12-05 18:00:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(15, '2023-12-05 18:15:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(16, '2023-12-05 18:30:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(17, '2023-12-05 18:45:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(18, '2023-12-05 19:00:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(19, '2023-12-05 19:15:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(20, '2023-12-05 19:30:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(21, '2023-12-05 19:45:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(22, '2023-12-05 20:00:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(23, '2023-12-05 20:15:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(24, '2023-12-05 20:30:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(25, '2023-12-05 20:45:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(26, '2023-12-05 21:00:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(27, '2023-12-06 18:00:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(28, '2023-12-06 18:15:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(29, '2023-12-06 18:30:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(30, '2023-12-06 18:45:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(31, '2023-12-06 19:00:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(32, '2023-12-06 19:15:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(33, '2023-12-06 19:30:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(34, '2023-12-06 19:45:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(35, '2023-12-06 20:00:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(36, '2023-12-06 20:15:00', NULL, NULL, NULL, '2023-07-25 20:44:32', '2023-07-25 20:44:32'),
(37, '2023-12-06 20:30:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(38, '2023-12-06 20:45:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(39, '2023-12-06 21:00:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(40, '2023-12-07 18:00:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(41, '2023-12-07 18:15:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(42, '2023-12-07 18:30:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(43, '2023-12-07 18:45:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(44, '2023-12-07 19:00:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(45, '2023-12-07 19:15:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(46, '2023-12-07 19:30:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(47, '2023-12-07 19:45:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(48, '2023-12-07 20:00:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(49, '2023-12-07 20:15:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(50, '2023-12-07 20:30:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(51, '2023-12-07 20:45:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(52, '2023-12-07 21:00:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(53, '2023-12-08 18:00:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(54, '2023-12-08 18:15:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(55, '2023-12-08 18:30:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(56, '2023-12-08 18:45:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(57, '2023-12-08 19:00:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(58, '2023-12-08 19:15:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(59, '2023-12-08 19:30:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(60, '2023-12-08 19:45:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(61, '2023-12-08 20:00:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(62, '2023-12-08 20:15:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(63, '2023-12-08 20:30:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(64, '2023-12-08 20:45:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(65, '2023-12-08 21:00:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(66, '2023-12-11 18:00:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(67, '2023-12-11 18:15:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(68, '2023-12-11 18:30:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(69, '2023-12-11 18:45:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(70, '2023-12-11 19:00:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(71, '2023-12-11 19:15:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(72, '2023-12-11 19:30:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(73, '2023-12-11 19:45:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(74, '2023-12-11 20:00:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(75, '2023-12-11 20:15:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(76, '2023-12-11 20:30:00', NULL, NULL, NULL, '2023-07-25 20:44:33', '2023-07-25 20:44:33'),
(77, '2023-12-11 20:45:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(78, '2023-12-11 21:00:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(79, '2023-12-12 18:00:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(80, '2023-12-12 18:15:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(81, '2023-12-12 18:30:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(82, '2023-12-12 18:45:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(83, '2023-12-12 19:00:00', 41279861, 3, '239e1efc7e912a16533cf34bd1b194d1', '2023-07-25 20:44:34', '2023-08-19 23:38:44'),
(84, '2023-12-12 19:15:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(85, '2023-12-12 19:30:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(86, '2023-12-12 19:45:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(87, '2023-12-12 20:00:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(88, '2023-12-12 20:15:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(89, '2023-12-12 20:30:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(90, '2023-12-12 20:45:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(91, '2023-12-12 21:00:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(92, '2023-12-13 18:00:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(93, '2023-12-13 18:15:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(94, '2023-12-13 18:30:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(95, '2023-12-13 18:45:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(96, '2023-12-13 19:00:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(97, '2023-12-13 19:15:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(98, '2023-12-13 19:30:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(99, '2023-12-13 19:45:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(100, '2023-12-13 20:00:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(101, '2023-12-13 20:15:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(102, '2023-12-13 20:30:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(103, '2023-12-13 20:45:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(104, '2023-12-13 21:00:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(105, '2023-12-14 18:00:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(106, '2023-12-14 18:15:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(107, '2023-12-14 18:30:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(108, '2023-12-14 18:45:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(109, '2023-12-14 19:00:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(110, '2023-12-14 19:15:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(111, '2023-12-14 19:30:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(112, '2023-12-14 19:45:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(113, '2023-12-14 20:00:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(114, '2023-12-14 20:15:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(115, '2023-12-14 20:30:00', NULL, NULL, NULL, '2023-07-25 20:44:34', '2023-07-25 20:44:34'),
(116, '2023-12-14 20:45:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(117, '2023-12-14 21:00:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(118, '2023-12-15 18:00:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(119, '2023-12-15 18:15:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(120, '2023-12-15 18:30:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(121, '2023-12-15 18:45:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(122, '2023-12-15 19:00:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(123, '2023-12-15 19:15:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(124, '2023-12-15 19:30:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(125, '2023-12-15 19:45:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(126, '2023-12-15 20:00:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(127, '2023-12-15 20:15:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(128, '2023-12-15 20:30:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(129, '2023-12-15 20:45:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(130, '2023-12-15 21:00:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(131, '2023-12-18 18:00:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(132, '2023-12-18 18:15:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(133, '2023-12-18 18:30:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(134, '2023-12-18 18:45:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(135, '2023-12-18 19:00:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(136, '2023-12-18 19:15:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(137, '2023-12-18 19:30:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(138, '2023-12-18 19:45:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(139, '2023-12-18 20:00:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(140, '2023-12-18 20:15:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(141, '2023-12-18 20:30:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(142, '2023-12-18 20:45:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(143, '2023-12-18 21:00:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(144, '2023-12-19 18:00:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(145, '2023-12-19 18:15:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(146, '2023-12-19 18:30:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(147, '2023-12-19 18:45:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(148, '2023-12-19 19:00:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(149, '2023-12-19 19:15:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(150, '2023-12-19 19:30:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(151, '2023-12-19 19:45:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(152, '2023-12-19 20:00:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(153, '2023-12-19 20:15:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(154, '2023-12-19 20:30:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(155, '2023-12-19 20:45:00', NULL, NULL, NULL, '2023-07-25 20:44:35', '2023-07-25 20:44:35'),
(156, '2023-12-19 21:00:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(157, '2023-12-20 18:00:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(158, '2023-12-20 18:15:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(159, '2023-12-20 18:30:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(160, '2023-12-20 18:45:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(161, '2023-12-20 19:00:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(162, '2023-12-20 19:15:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(163, '2023-12-20 19:30:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(164, '2023-12-20 19:45:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(165, '2023-12-20 20:00:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(166, '2023-12-20 20:15:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(167, '2023-12-20 20:30:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(168, '2023-12-20 20:45:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(169, '2023-12-20 21:00:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(170, '2023-12-21 18:00:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(171, '2023-12-21 18:15:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(172, '2023-12-21 18:30:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(173, '2023-12-21 18:45:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(174, '2023-12-21 19:00:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(175, '2023-12-21 19:15:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(176, '2023-12-21 19:30:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(177, '2023-12-21 19:45:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(178, '2023-12-21 20:00:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(179, '2023-12-21 20:15:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(180, '2023-12-21 20:30:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(181, '2023-12-21 20:45:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(182, '2023-12-21 21:00:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(183, '2023-12-22 18:00:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(184, '2023-12-22 18:15:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(185, '2023-12-22 18:30:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(186, '2023-12-22 18:45:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(187, '2023-12-22 19:00:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(188, '2023-12-22 19:15:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(189, '2023-12-22 19:30:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(190, '2023-12-22 19:45:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(191, '2023-12-22 20:00:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(192, '2023-12-22 20:15:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(193, '2023-12-22 20:30:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(194, '2023-12-22 20:45:00', NULL, NULL, NULL, '2023-07-25 20:44:36', '2023-07-25 20:44:36'),
(195, '2023-12-22 21:00:00', NULL, NULL, NULL, '2023-07-25 20:44:37', '2023-07-25 20:44:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 'gagusti@isft38.edu.ar', 'gagusti@isft38.edu.ar', NULL, '$2y$10$DTZ/LHqQMnwe4wAV4bnJeO3f9GiC4KbnrIW/HkrNhlFEaNnzh9JVK', NULL, 1, '2022-09-22 02:46:40', '2022-09-22 02:46:40'),
(2, 'Profesores', 'profesores@isft38.edu.ar', NULL, '$2y$10$jl1yDcSX04uPlBJ9fE53PeNmak3OJcKsu7FMQuqWNywocMfBAeVIS', NULL, NULL, '2022-10-29 02:50:41', '2022-10-29 02:50:41'),
(3, 'test', 'test@test.com', NULL, '$2y$10$rnEc84AzKox.vjeyua2Ab.LskJLb4NVBq275ESFUYFDZkqNpkRst6', NULL, 1, '2022-10-29 03:07:54', '2022-11-03 02:31:34'),
(4, 'Gi', 'g@g.com', NULL, '$2y$10$y8kopLFIRchVL89YnibT9eQkX/CpP8ldubgomUHUdt.2dMhJ6La/.', NULL, 1, '2022-11-03 02:21:23', '2022-11-03 02:21:23'),
(5, 'Gi', 'gi@gi.com', NULL, '$2y$10$vw/5umQjrm2QsXlzKzDt0eraVzdJypVT08N9KSBDtTnwX7C21Vhfa', NULL, 1, '2022-11-04 06:00:18', '2022-11-04 06:00:18'),
(6, 'joa', 'joa@gmail.com', NULL, '$2y$10$iBFy3lniaerChNZoZ0ER6.CLjlgTnPRS1RyKiuRzrolBmt8Qaxn5W', NULL, 1, '2023-06-22 08:44:51', '2023-06-22 08:44:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumnos_carrera_id_foreign` (`carrera_id`);

--
-- Indexes for table `anios`
--
ALTER TABLE `anios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carrerasedes`
--
ALTER TABLE `carrerasedes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carrerasedes_carrera_id_foreign` (`carrera_id`),
  ADD KEY `carrerasedes_sede_id_foreign` (`sede_id`);

--
-- Indexes for table `categorias_residuos`
--
ALTER TABLE `categorias_residuos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comisions`
--
ALTER TABLE `comisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comisions_sede_id_foreign` (`sede_id`),
  ADD KEY `comisions_carrera_id_foreign` (`carrera_id`);

--
-- Indexes for table `cupos`
--
ALTER TABLE `cupos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cupos_carrera_id_foreign` (`carrera_id`);

--
-- Indexes for table `etiquetas`
--
ALTER TABLE `etiquetas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fechas`
--
ALTER TABLE `fechas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fechas_carrera_id_foreign` (`carrera_id`);

--
-- Indexes for table `historias`
--
ALTER TABLE `historias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `historias_sede_id_foreign` (`sede_id`);

--
-- Indexes for table `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `horarios_sede_id_foreign` (`sede_id`),
  ADD KEY `horarios_carrera_id_foreign` (`carrera_id`),
  ADD KEY `horarios_anio_id_foreign` (`anio_id`),
  ADD KEY `horarios_materia_id_foreign` (`materia_id`);

--
-- Indexes for table `lista_espera`
--
ALTER TABLE `lista_espera`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materias_carrera_id_foreign` (`carrera_id`),
  ADD KEY `materias_anio_id_foreign` (`anio_id`),
  ADD KEY `materias_profesor_id_foreign` (`profesor_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modulos`
--
ALTER TABLE `modulos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `noticias_titulo_unique` (`titulo`),
  ADD KEY `noticias_autor_foreign` (`autor`),
  ADD KEY `noticias_carrera_id_foreign` (`carrera_id`);

--
-- Indexes for table `noticias_etiquetas`
--
ALTER TABLE `noticias_etiquetas`
  ADD KEY `noticias_etiquetas_noticia_id_foreign` (`noticia_id`),
  ADD KEY `noticias_etiquetas_etiqueta_id_foreign` (`etiqueta_id`),
  ADD KEY `noticias_etiquetas_user_id_foreign` (`user_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `objetivos`
--
ALTER TABLE `objetivos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `objetivos_sede_id_foreign` (`sede_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `profesors`
--
ALTER TABLE `profesors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programas`
--
ALTER TABLE `programas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `programas_sede_id_foreign` (`sede_id`),
  ADD KEY `programas_carrera_id_foreign` (`carrera_id`),
  ADD KEY `programas_anio_id_foreign` (`anio_id`),
  ADD KEY `programas_materia_id_foreign` (`materia_id`),
  ADD KEY `programas_comision_id_foreign` (`comision_id`),
  ADD KEY `programas_profesor_id_foreign` (`profesor_id`);

--
-- Indexes for table `residuos`
--
ALTER TABLE `residuos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `residuos_residuo_id_foreign` (`residuo_id`);

--
-- Indexes for table `sedeemails`
--
ALTER TABLE `sedeemails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sedeemails_sede_id_foreign` (`sede_id`);

--
-- Indexes for table `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sedetelefonos`
--
ALTER TABLE `sedetelefonos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sedetelefonos_sede_id_foreign` (`sede_id`);

--
-- Indexes for table `turnos`
--
ALTER TABLE `turnos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `turnos_carrera_id_foreign` (`carrera_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `anios`
--
ALTER TABLE `anios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `carrerasedes`
--
ALTER TABLE `carrerasedes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categorias_residuos`
--
ALTER TABLE `categorias_residuos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comisions`
--
ALTER TABLE `comisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cupos`
--
ALTER TABLE `cupos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `etiquetas`
--
ALTER TABLE `etiquetas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fechas`
--
ALTER TABLE `fechas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `historias`
--
ALTER TABLE `historias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `lista_espera`
--
ALTER TABLE `lista_espera`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `materias`
--
ALTER TABLE `materias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `modulos`
--
ALTER TABLE `modulos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `objetivos`
--
ALTER TABLE `objetivos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profesors`
--
ALTER TABLE `profesors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `programas`
--
ALTER TABLE `programas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `residuos`
--
ALTER TABLE `residuos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sedeemails`
--
ALTER TABLE `sedeemails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sedes`
--
ALTER TABLE `sedes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sedetelefonos`
--
ALTER TABLE `sedetelefonos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `turnos`
--
ALTER TABLE `turnos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `carrerasedes`
--
ALTER TABLE `carrerasedes`
  ADD CONSTRAINT `carrerasedes_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carrerasedes_sede_id_foreign` FOREIGN KEY (`sede_id`) REFERENCES `sedes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comisions`
--
ALTER TABLE `comisions`
  ADD CONSTRAINT `comisions_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comisions_sede_id_foreign` FOREIGN KEY (`sede_id`) REFERENCES `sedes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cupos`
--
ALTER TABLE `cupos`
  ADD CONSTRAINT `cupos_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fechas`
--
ALTER TABLE `fechas`
  ADD CONSTRAINT `fechas_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `historias`
--
ALTER TABLE `historias`
  ADD CONSTRAINT `historias_sede_id_foreign` FOREIGN KEY (`sede_id`) REFERENCES `sedes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `horarios`
--
ALTER TABLE `horarios`
  ADD CONSTRAINT `horarios_anio_id_foreign` FOREIGN KEY (`anio_id`) REFERENCES `anios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `horarios_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `horarios_materia_id_foreign` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `horarios_sede_id_foreign` FOREIGN KEY (`sede_id`) REFERENCES `sedes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `materias_anio_id_foreign` FOREIGN KEY (`anio_id`) REFERENCES `anios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `materias_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `materias_profesor_id_foreign` FOREIGN KEY (`profesor_id`) REFERENCES `profesors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `noticias_autor_foreign` FOREIGN KEY (`autor`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticias_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `noticias_etiquetas`
--
ALTER TABLE `noticias_etiquetas`
  ADD CONSTRAINT `noticias_etiquetas_etiqueta_id_foreign` FOREIGN KEY (`etiqueta_id`) REFERENCES `etiquetas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticias_etiquetas_noticia_id_foreign` FOREIGN KEY (`noticia_id`) REFERENCES `noticias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticias_etiquetas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `objetivos`
--
ALTER TABLE `objetivos`
  ADD CONSTRAINT `objetivos_sede_id_foreign` FOREIGN KEY (`sede_id`) REFERENCES `sedes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `programas`
--
ALTER TABLE `programas`
  ADD CONSTRAINT `programas_anio_id_foreign` FOREIGN KEY (`anio_id`) REFERENCES `anios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `programas_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `programas_comision_id_foreign` FOREIGN KEY (`comision_id`) REFERENCES `comisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `programas_materia_id_foreign` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `programas_profesor_id_foreign` FOREIGN KEY (`profesor_id`) REFERENCES `profesors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `programas_sede_id_foreign` FOREIGN KEY (`sede_id`) REFERENCES `sedes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `residuos`
--
ALTER TABLE `residuos`
  ADD CONSTRAINT `residuos_residuo_id_foreign` FOREIGN KEY (`residuo_id`) REFERENCES `categorias_residuos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sedeemails`
--
ALTER TABLE `sedeemails`
  ADD CONSTRAINT `sedeemails_sede_id_foreign` FOREIGN KEY (`sede_id`) REFERENCES `sedes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sedetelefonos`
--
ALTER TABLE `sedetelefonos`
  ADD CONSTRAINT `sedetelefonos_sede_id_foreign` FOREIGN KEY (`sede_id`) REFERENCES `sedes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `turnos`
--
ALTER TABLE `turnos`
  ADD CONSTRAINT `turnos_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
