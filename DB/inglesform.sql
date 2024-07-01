-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-09-2023 a las 00:50:42
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inglesform`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `Pregunta` varchar(200) NOT NULL,
  `reading` int(11) NOT NULL,
  `language` int(11) NOT NULL,
  `listening` int(11) NOT NULL,
  `passage` int(11) NOT NULL,
  `situation` int(11) NOT NULL,
  `conversation` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `Pregunta`, `reading`, `language`, `listening`, `passage`, `situation`, `conversation`) VALUES
(1, 'This Saturday Mara’s going to:', 1, 0, 0, 1, 0, ''),
(2, 'Eileen thinks that her job is:', 1, 0, 0, 2, 0, ''),
(3, 'Sheila and Judy are:', 1, 0, 0, 3, 0, ''),
(4, 'In this reading, concentration refers to a person’s ability to', 1, 0, 0, 4, 0, ''),
(5, 'Athletes who can concentrate are more likely to', 1, 0, 0, 4, 0, ''),
(6, '“Are the bags ready?”“Yes, _______.”', 0, 1, 0, 0, 0, ''),
(7, '_______ are meeting for the ﬁrst time.', 0, 0, 1, 0, 1, 'https://www.youtube.com/embed/ucAcL2RTyFo?si=4A8eOuXs0hibDEG5'),
(8, 'Sharon _______.', 0, 0, 1, 0, 2, 'https://www.youtube.com/embed/Jc6NxynCIiw?si=bgAUCTfXTqVeI513'),
(9, 'I live _______ 4040 Oak Avenue.', 0, 1, 0, 0, 0, ''),
(10, 'The example of the boiling tea kettle shows that steam is:', 1, 0, 0, 5, 0, ''),
(11, 'The ﬁrst steam engines:', 1, 0, 0, 5, 0, ''),
(12, 'To visitors, everything in the United States seems:', 1, 0, 0, 6, 0, ''),
(13, 'To Japanese and European visitors, the downtown sections of Boston and Philadelphia seem:', 1, 0, 0, 6, 0, ''),
(14, 'The typical American farm:', 1, 0, 0, 6, 0, ''),
(15, 'The article implies that people in the United States are inﬂuenced by:', 1, 0, 0, 6, 0, ''),
(16, 'The main idea of the article is that:', 1, 0, 0, 7, 0, ''),
(17, 'Modern communications enable people to:', 1, 0, 0, 7, 0, ''),
(18, 'In comparison with a telephone call, e-mail is:', 1, 0, 0, 7, 0, ''),
(19, '_______ is a new type of communication made possible by e-mail.', 1, 0, 0, 7, 0, ''),
(20, 'At ﬁrst, people were very _______ biofeedback.', 1, 0, 0, 8, 0, ''),
(21, 'Biofeedback instruments ______.', 1, 0, 0, 8, 0, ''),
(22, 'Blood ﬂow is an example of a:', 1, 0, 0, 8, 0, ''),
(23, 'The EMG:', 1, 0, 0, 8, 0, ''),
(24, 'According to the article, biofeedback:', 1, 0, 0, 8, 0, ''),
(25, '“I like to cook.”“_______ do I.”', 0, 1, 0, 0, 0, ''),
(26, 'David enjoys _______ sports on TV.', 0, 1, 0, 0, 0, ''),
(27, '_______ everyone I know plays a musical instrument.', 0, 1, 0, 0, 0, ''),
(28, 'Yesterday’s game caused a lot of _______.', 0, 1, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `id` int(11) NOT NULL,
  `Respuesta` varchar(45) NOT NULL,
  `idPregunta` int(11) NOT NULL,
  `respuestaCorrecta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`id`, `Respuesta`, `idPregunta`, `respuestaCorrecta`) VALUES
(1, 'Stay at home', 1, 0),
(2, 'Have lunch downtown', 1, 0),
(3, 'Go to a concert', 1, 1),
(4, 'Fix lunch for her friends', 1, 0),
(5, 'Difﬁcult', 2, 0),
(6, 'Interesting', 2, 0),
(7, 'Important', 2, 0),
(8, 'Boring', 2, 1),
(9, 'Traveling with Millie', 3, 0),
(10, 'Taking guitar lessons', 3, 0),
(11, 'Camping at the beach', 3, 1),
(12, 'Learning lots of Spanish', 3, 0),
(13, 'Stay in one place', 4, 0),
(14, 'Focus on a task', 4, 1),
(15, 'Hear certain sounds', 4, 0),
(16, 'Ignore instructions', 4, 0),
(17, 'Compete', 5, 0),
(18, 'Win', 5, 1),
(19, 'Relax', 5, 0),
(20, 'Run', 5, 0),
(21, 'they’re', 6, 0),
(22, 'there are', 6, 0),
(23, 'their', 6, 0),
(24, 'they are', 6, 1),
(25, 'Ann and Tomas', 7, 0),
(26, 'Ann and Yoshi', 7, 0),
(27, 'Yoshi and Tomas', 7, 1),
(28, 'Ann, Tomas, and Yoshi', 7, 0),
(29, 'usually eats ﬁsh', 8, 0),
(30, 'is eating the chicken', 8, 0),
(31, 'is going to have ﬁsh', 8, 1),
(32, 'prefers ﬁsh to chicken', 8, 0),
(33, 'on', 9, 0),
(34, 'at', 9, 1),
(35, 'in', 9, 0),
(36, 'nex', 9, 0),
(37, 'Useful', 10, 0),
(38, 'Efﬁcient', 10, 0),
(39, 'Powerful', 10, 1),
(40, 'Necessary', 10, 0),
(41, 'Didn’t pump water', 11, 0),
(42, 'Cost too much to build', 11, 0),
(43, 'Were difﬁcult to make', 11, 0),
(44, 'Used too much fuel', 11, 1),
(45, 'Larger', 12, 1),
(46, 'Similar', 12, 0),
(47, 'More expensive', 12, 0),
(48, 'Interesting', 12, 0),
(49, 'Out of scale', 13, 0),
(50, 'The right size', 13, 1),
(51, 'Too old', 13, 0),
(52, 'Very beautiful', 13, 0),
(53, 'Is similar to farms everywhere', 14, 0),
(54, 'Uses a lot of machinery', 14, 1),
(55, 'Is run by large families', 14, 0),
(56, 'Doesn’t require much work', 14, 0),
(57, 'The amount of available space', 15, 1),
(58, 'The need to grow lots of food', 15, 0),
(59, 'Visitors’ impressions of their country', 15, 0),
(60, 'Farming practices in Europe and Asia', 15, 0),
(61, 'These days people don’t communicate enough', 16, 0),
(62, 'Modern means of communication cost too much', 16, 0),
(63, 'Letter and phone calls are more effective', 16, 0),
(64, 'e-mail is changing the way we live', 16, 1),
(65, 'See each other more often', 17, 0),
(66, 'Write more letters and telegrams', 17, 0),
(67, 'Keep in contact with one another', 17, 1),
(68, 'Move from place to place quickly', 17, 0),
(69, 'More acceptable', 18, 0),
(70, 'More personal', 18, 0),
(71, 'Slower', 18, 0),
(72, 'Cheaper', 18, 1),
(73, 'A personal message', 19, 0),
(74, 'A chat room', 19, 1),
(75, 'Long-distance discussion', 19, 0),
(76, 'Sending information', 19, 0),
(77, 'nervous about', 20, 0),
(78, 'interested in', 20, 1),
(79, 'familiar with', 20, 0),
(80, 'opposed to', 20, 0),
(81, 'act like a kind of medicine', 21, 0),
(82, 'cause people to get excited', 21, 0),
(83, 'are put on a patient’s body', 21, 1),
(84, 'teach people to exercise', 21, 0),
(85, 'Technique', 22, 0),
(86, 'Signal', 22, 0),
(87, 'Function', 22, 1),
(88, 'Problem', 22, 0),
(89, 'Relaxes the muscles', 23, 0),
(90, 'Measures tension', 23, 1),
(91, 'Causes movement', 23, 0),
(92, 'Produces symptoms', 23, 0),
(93, 'Is more popular than ever', 24, 0),
(94, 'Causes chronic tension', 24, 0),
(95, 'Cures all types of headaches', 24, 0),
(96, 'Has had limited success', 24, 1),
(97, 'And', 25, 0),
(98, 'So', 25, 1),
(99, 'Also', 25, 0),
(100, 'Too', 25, 0),
(101, 'watching', 26, 1),
(102, 'watch', 26, 0),
(103, 'to watch', 26, 0),
(104, 'watched', 26, 0),
(105, 'The most', 27, 0),
(106, 'Almost', 27, 1),
(107, 'All', 27, 0),
(108, 'Most of', 27, 0),
(109, 'excited', 28, 0),
(110, 'exciting', 28, 0),
(111, 'excite', 28, 0),
(112, 'excitement', 28, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultados`
--

CREATE TABLE `resultados` (
  `id` int(11) NOT NULL,
  `resultado` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `resultados`
--

INSERT INTO `resultados` (`id`, `resultado`, `email`, `nombre`, `apellido`) VALUES
(166, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(167, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(168, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(169, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(170, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(171, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(172, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(173, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(174, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(175, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(176, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(177, 2, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(178, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(179, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(180, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(181, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(182, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(183, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(184, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(185, 0, '0', '0', '0'),
(186, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(187, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(188, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(189, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(190, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(191, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(192, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(193, 0, 'profile.email', 'profile.name', 'profile.lastname'),
(194, 0, 'profile.email', 'profile.name', 'profile.lastname'),
(195, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(196, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(197, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(198, 0, 'profile.email', 'profile.name', 'profile.lastname'),
(199, 0, 'profile.email', 'profile.name', 'profile.lastname'),
(200, 0, 'profile.email', 'profile.name', 'profile.lastname'),
(201, 0, 'profile.email', 'profile.name', 'profile.lastname'),
(202, 0, 'profile.email', 'profile.name', 'profile.lastname'),
(203, 0, 'hola2@gmail.com', 'Carlos', 'Perez'),
(204, 0, 'hola2@gmail.com', 'Carlos', 'Perez'),
(205, 8, 'prueba@gmail.com', 'Pablo ', 'Anaya'),
(206, 0, 'prueba@gmail.com', 'Pablo ', 'Anaya'),
(207, 0, 'prueba@gmail.com', 'Pablo ', 'Anaya'),
(208, 0, 'hola2@gmail.com', 'Carlos', 'Perez'),
(209, 0, 'hola2@gmail.com', 'Carlos', 'Perez'),
(210, 0, 'hola2@gmail.com', 'Carlos', 'Perez'),
(211, 0, 'hola2@gmail.com', 'Carlos', 'Perez'),
(212, 0, 'hola2@gmail.com', 'Carlos', 'Perez'),
(213, 0, 'hola2@gmail.com', 'Carlos', 'Perez'),
(214, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(215, 0, 'hola2@gmail.com', 'Carlos', 'Perez'),
(216, 0, 'hola2@gmail.com', 'Carlos', 'Perez'),
(217, 0, 'hola2@gmail.com', 'Carlos', 'Perez'),
(218, 0, 'hola2@gmail.com', 'Carlos', 'Perez'),
(219, 0, 'hola2@gmail.com', 'Carlos', 'Perez'),
(220, 0, 'hola2@gmail.com', 'Carlos', 'Perez'),
(221, 0, 'hola2@gmail.com', 'Carlos', 'Perez'),
(222, 0, 'hola2@gmail.com', 'Carlos', 'Perez'),
(223, 0, 'hola2@gmail.com', 'Carlos', 'Perez'),
(224, 0, 'hola2@gmail.com', 'Carlos', 'Perez'),
(225, 0, 'hola2@gmail.com', 'Carlos', 'Perez'),
(226, 0, 'hola2@gmail.com', 'Carlos', 'Perez'),
(227, 0, 'hola2@gmail.com', 'Carlos', 'Perez'),
(228, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(229, 0, 'fei555@msn.com', 'Félix', 'Gutierrez'),
(230, 0, 'fei555@msn.com', 'Félix', 'Gutierrez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin` int(1) NOT NULL,
  `interviewer` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `password`, `admin`, `interviewer`) VALUES
(112, 'Félix', 'Gutierrez', 'fei555@msn.com', '$2a$10$a7JuObowILc0ix5SlD6.HuR.HRsAprb3sC5buNgMy3.K2QgZcYzqm', 1, ''),
(113, 'Prueba', 'Prueba', 'hola@gmail.com', '$2a$10$y9IQkkakX0XCFa6h8dBFCOEHeu4h9TiR6W0ZbTOFjLp/XDXD3FNaS', 0, 'Carlos'),
(114, 'tt', 'tt', 'fei55@msn.com', '$2a$10$tJ.bJyKloW.DmzAltGSzLOnhiRhWSBd1Jp1nzZdbMzUCockKOuRva', 0, 'ttt'),
(115, 'tt', 'tt', 'fei5@msn.com', '$2a$10$rF3CBH7b5sgEWv1h11y.oept8GS2QvprQ4sEKgVumVK01Vnyi2dZG', 0, 'ttt'),
(116, 'ee', 'eeee', '12345@hola.com', '$2a$10$Re.gB58TaGj.nbzjP24eI.1UqA6KLXQSvipCnTygzZMXbgJ4TUZM6', 0, 'eeeeeeeeee'),
(117, 'ee', 'eeee', 'fei55tt5@msn.com', '$2a$10$rg9AjnNvVVM9xRjsM5TaQe7lpoZEZrmzER8fqmH51l0fYAkeWMP7y', 0, 'eeeeeeeeee'),
(118, 'Carlos', 'Perez', 'hola1@gmail.com', '$2a$10$awI9ms/dYbZv2/oyqVY0auOj0V5viCxQjITa2jgIhB4XQHzyC5wIO', 0, 'Sebastian'),
(119, 'Carlos', 'Perez', 'hola2@gmail.com', '$2a$10$yiOyb4t2pwqOC8txPrQ05.Ud/5rh.B9XQyZUedxhXiws8WVST6Xg6', 0, 'Sebastian'),
(120, 'Pablo ', 'Anaya', 'prueba@gmail.com', '$2a$10$fKOhvjgmEM.l0r9WengOQeobmk8wswDjyMJjKggE9cMbaBZch0a6C', 0, 'Sebastian');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id`,`Respuesta`);

--
-- Indices de la tabla `resultados`
--
ALTER TABLE `resultados`
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
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT de la tabla `resultados`
--
ALTER TABLE `resultados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
