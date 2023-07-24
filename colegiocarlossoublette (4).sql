-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-07-2023 a las 01:41:04
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `colegiocarlossoublette`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `años`
--

CREATE TABLE `años` (
  `id` int(11) NOT NULL,
  `años` varchar(50) NOT NULL,
  `turnos` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `años_materias`
--

CREATE TABLE `años_materias` (
  `id` int(11) NOT NULL,
  `cantidad` int(50) NOT NULL,
  `id_años` int(11) NOT NULL,
  `id_materias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `id` int(11) NOT NULL,
  `modulo` varchar(100) NOT NULL,
  `accion` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `cedula` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `categoria` varchar(250) NOT NULL,
  `fecha_nacimiento` varchar(20) NOT NULL,
  `especializacion` varchar(250) NOT NULL,
  `profecion` varchar(250) NOT NULL,
  `edad` varchar(20) NOT NULL,
  `anos_trabajo` varchar(20) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `direccion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`cedula`, `nombre`, `apellido`, `categoria`, `fecha_nacimiento`, `especializacion`, `profecion`, `edad`, `anos_trabajo`, `correo`, `direccion`) VALUES
('12-122-122', 'angel', 'briceño', 'asdasd', '2023-06-29', 'asdasd', 'asdasdasdas', 'asdasd', 'asdasd', 'asdasd', 'El Cercado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente_guia`
--

CREATE TABLE `docente_guia` (
  `id` int(11) NOT NULL,
  `id_docente` varchar(50) NOT NULL,
  `id_secciones` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `cedula` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `edad` int(50) NOT NULL,
  `observaciones` varchar(250) NOT NULL,
  `materias_pendientes` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes_tutor`
--

CREATE TABLE `estudiantes_tutor` (
  `id` int(11) NOT NULL,
  `id_estudiantes` varchar(50) NOT NULL,
  `id_tutor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante_ficha`
--

CREATE TABLE `estudiante_ficha` (
  `id` int(11) NOT NULL,
  `id_estudiantes` varchar(50) NOT NULL,
  `id_ficha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha_medica`
--

CREATE TABLE `ficha_medica` (
  `id` int(11) NOT NULL,
  `tratamientos` varchar(250) NOT NULL,
  `alergias` varchar(250) NOT NULL,
  `medicamentos` varchar(250) NOT NULL,
  `enfermedades` varchar(250) NOT NULL,
  `operaciones` varchar(250) NOT NULL,
  `vacunas` varchar(250) NOT NULL,
  `tipo_de_sangre` varchar(250) NOT NULL,
  `condicion_medica` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lapso`
--

CREATE TABLE `lapso` (
  `id` int(11) NOT NULL,
  `fecha_ini` date NOT NULL,
  `fecha_cierr` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias_docentes`
--

CREATE TABLE `materias_docentes` (
  `id` int(11) NOT NULL,
  `disponibilidad` varchar(250) NOT NULL,
  `id_materias` int(11) NOT NULL,
  `id_docente` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `id` int(11) NOT NULL,
  `mensaje` varchar(250) NOT NULL,
  `estado` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` int(11) NOT NULL,
  `mensualidad` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `estado` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_permisos`
--

CREATE TABLE `roles_permisos` (
  `id` int(11) NOT NULL,
  `id_permisos` int(11) NOT NULL,
  `id_roles` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `id` int(11) NOT NULL,
  `secciones` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones_años`
--

CREATE TABLE `secciones_años` (
  `id` int(11) NOT NULL,
  `cantidad` int(50) NOT NULL,
  `id_secciones` int(11) NOT NULL,
  `id_años` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones_estudiantes`
--

CREATE TABLE `secciones_estudiantes` (
  `id` int(11) NOT NULL,
  `id_estudiantes` varchar(50) NOT NULL,
  `id_secciones` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones_horarios`
--

CREATE TABLE `secciones_horarios` (
  `id` int(11) NOT NULL,
  `id_horarios` int(11) NOT NULL,
  `id_secciones` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutor_legal`
--

CREATE TABLE `tutor_legal` (
  `cedula` varchar(50) NOT NULL,
  `nombre1` varchar(100) NOT NULL,
  `nombre2` varchar(100) NOT NULL,
  `apellido1` varchar(100) NOT NULL,
  `apellido2` varchar(100) NOT NULL,
  `contacto_emer` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutor_pagos`
--

CREATE TABLE `tutor_pagos` (
  `id` int(11) NOT NULL,
  `fecha_pago` date NOT NULL,
  `estado` int(10) NOT NULL,
  `meses_pagados` int(50) NOT NULL,
  `id_tutor` varchar(50) NOT NULL,
  `id_pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contraceña` varchar(100) NOT NULL,
  `estado` varchar(25) NOT NULL,
  `id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `años`
--
ALTER TABLE `años`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `años_materias`
--
ALTER TABLE `años_materias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_años` (`id_años`),
  ADD UNIQUE KEY `id_materias` (`id_materias`);

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `docente_guia`
--
ALTER TABLE `docente_guia`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_docente` (`id_docente`),
  ADD UNIQUE KEY `id_secciones` (`id_secciones`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `estudiantes_tutor`
--
ALTER TABLE `estudiantes_tutor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_estudiantesç` (`id_estudiantes`),
  ADD UNIQUE KEY `id_tutor` (`id_tutor`);

--
-- Indices de la tabla `estudiante_ficha`
--
ALTER TABLE `estudiante_ficha`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_estudiantes` (`id_estudiantes`),
  ADD UNIQUE KEY `id_ficha` (`id_ficha`);

--
-- Indices de la tabla `ficha_medica`
--
ALTER TABLE `ficha_medica`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `lapso`
--
ALTER TABLE `lapso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias_docentes`
--
ALTER TABLE `materias_docentes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_materias` (`id_materias`),
  ADD UNIQUE KEY `id_docente` (`id_docente`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles_permisos`
--
ALTER TABLE `roles_permisos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_permisos` (`id_permisos`),
  ADD UNIQUE KEY `id_roles` (`id_roles`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `secciones_años`
--
ALTER TABLE `secciones_años`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_secciones` (`id_secciones`),
  ADD UNIQUE KEY `id_años` (`id_años`);

--
-- Indices de la tabla `secciones_estudiantes`
--
ALTER TABLE `secciones_estudiantes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_estudiantes` (`id_estudiantes`),
  ADD UNIQUE KEY `id_secciones` (`id_secciones`);

--
-- Indices de la tabla `secciones_horarios`
--
ALTER TABLE `secciones_horarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_horarios` (`id_horarios`),
  ADD UNIQUE KEY `id_secciones` (`id_secciones`);

--
-- Indices de la tabla `tutor_legal`
--
ALTER TABLE `tutor_legal`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `tutor_pagos`
--
ALTER TABLE `tutor_pagos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_tutor` (`id_tutor`),
  ADD UNIQUE KEY `id_pago` (`id_pago`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `años`
--
ALTER TABLE `años`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `años_materias`
--
ALTER TABLE `años_materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `docente_guia`
--
ALTER TABLE `docente_guia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estudiantes_tutor`
--
ALTER TABLE `estudiantes_tutor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estudiante_ficha`
--
ALTER TABLE `estudiante_ficha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ficha_medica`
--
ALTER TABLE `ficha_medica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lapso`
--
ALTER TABLE `lapso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `materias_docentes`
--
ALTER TABLE `materias_docentes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles_permisos`
--
ALTER TABLE `roles_permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `secciones`
--
ALTER TABLE `secciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `secciones_años`
--
ALTER TABLE `secciones_años`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `secciones_estudiantes`
--
ALTER TABLE `secciones_estudiantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `secciones_horarios`
--
ALTER TABLE `secciones_horarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tutor_pagos`
--
ALTER TABLE `tutor_pagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `años_materias`
--
ALTER TABLE `años_materias`
  ADD CONSTRAINT `años_materias_ibfk_1` FOREIGN KEY (`id_años`) REFERENCES `años` (`id`),
  ADD CONSTRAINT `años_materias_ibfk_2` FOREIGN KEY (`id_materias`) REFERENCES `materias` (`id`);

--
-- Filtros para la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD CONSTRAINT `bitacora_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `docente_guia`
--
ALTER TABLE `docente_guia`
  ADD CONSTRAINT `docente_guia_ibfk_1` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`cedula`),
  ADD CONSTRAINT `docente_guia_ibfk_2` FOREIGN KEY (`id_secciones`) REFERENCES `secciones` (`id`);

--
-- Filtros para la tabla `estudiantes_tutor`
--
ALTER TABLE `estudiantes_tutor`
  ADD CONSTRAINT `estudiantes_tutor_ibfk_1` FOREIGN KEY (`id_estudiantes`) REFERENCES `estudiantes` (`cedula`),
  ADD CONSTRAINT `estudiantes_tutor_ibfk_2` FOREIGN KEY (`id_tutor`) REFERENCES `tutor_legal` (`cedula`);

--
-- Filtros para la tabla `estudiante_ficha`
--
ALTER TABLE `estudiante_ficha`
  ADD CONSTRAINT `estudiante_ficha_ibfk_1` FOREIGN KEY (`id_ficha`) REFERENCES `ficha_medica` (`id`),
  ADD CONSTRAINT `estudiante_ficha_ibfk_2` FOREIGN KEY (`id_estudiantes`) REFERENCES `estudiantes` (`cedula`);

--
-- Filtros para la tabla `materias_docentes`
--
ALTER TABLE `materias_docentes`
  ADD CONSTRAINT `materias_docentes_ibfk_1` FOREIGN KEY (`id_materias`) REFERENCES `materias` (`id`),
  ADD CONSTRAINT `materias_docentes_ibfk_2` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`cedula`);

--
-- Filtros para la tabla `roles_permisos`
--
ALTER TABLE `roles_permisos`
  ADD CONSTRAINT `roles_permisos_ibfk_1` FOREIGN KEY (`id_roles`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `roles_permisos_ibfk_2` FOREIGN KEY (`id_permisos`) REFERENCES `permisos` (`id`);

--
-- Filtros para la tabla `secciones_años`
--
ALTER TABLE `secciones_años`
  ADD CONSTRAINT `secciones_años_ibfk_1` FOREIGN KEY (`id_secciones`) REFERENCES `secciones` (`id`),
  ADD CONSTRAINT `secciones_años_ibfk_2` FOREIGN KEY (`id_años`) REFERENCES `años` (`id`);

--
-- Filtros para la tabla `secciones_estudiantes`
--
ALTER TABLE `secciones_estudiantes`
  ADD CONSTRAINT `secciones_estudiantes_ibfk_1` FOREIGN KEY (`id_estudiantes`) REFERENCES `estudiantes` (`cedula`),
  ADD CONSTRAINT `secciones_estudiantes_ibfk_2` FOREIGN KEY (`id_secciones`) REFERENCES `secciones` (`id`);

--
-- Filtros para la tabla `secciones_horarios`
--
ALTER TABLE `secciones_horarios`
  ADD CONSTRAINT `secciones_horarios_ibfk_2` FOREIGN KEY (`id_secciones`) REFERENCES `secciones` (`id`);

--
-- Filtros para la tabla `tutor_pagos`
--
ALTER TABLE `tutor_pagos`
  ADD CONSTRAINT `tutor_pagos_ibfk_1` FOREIGN KEY (`id_tutor`) REFERENCES `tutor_legal` (`cedula`),
  ADD CONSTRAINT `tutor_pagos_ibfk_2` FOREIGN KEY (`id_pago`) REFERENCES `pagos` (`id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
