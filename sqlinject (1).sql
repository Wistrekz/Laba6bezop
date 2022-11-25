-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 25 2022 г., 13:22
-- Версия сервера: 8.0.24
-- Версия PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `sqlinject`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `kom` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `kom`) VALUES
(1, 'jhbhb'),
(2, '//<%~jhbjhb'),
(4, '///\\\\%*<>$#'),
(6, 'ddgg'),
(7, 'SELECT * FROM `comments`'),
(8, 'SELECT * FROM `comments`'),
(9, 'SELECT `name`, `pass` FROM `users` WHERE name= \'$username\' AND pass = \'$password\''),
(10, 'SELECT `name`, `pass` FROM `users` WHERE name= \'$username\' AND pass = \'$password\''),
(11, 'DELETE TABLE `users`'),
(12, 'DROP TABLE comments'),
(13, 'DROP TABLE `comments`'),
(14, 'DROP TABLE `comments`'),
(15, 'DROP TABLE `comments`'),
(16, 'DROP TABLE `comments`'),
(17, 'DROP TABLE `comments`'),
(18, 'DROP TABLE `comments`'),
(19, 'DROP TABLE `comments`'),
(20, 'DROP TABLE `sqlinject`.`comments`'),
(21, '\"DROP TABLE `sqlinject`.`comments`\"'),
(22, '\"DROP TABLE `sqlinject`.`comments`\"'),
(23, 'DROP TABLE `comments`'),
(24, 'DROP TABLE `comments`'),
(25, 'DROP TABLE `comments`'),
(27, 'DROP TABLE `comments`'),
(28, 'DROP TABLE `comments`'),
(29, 'DROP TABLE `comments`'),
(30, 'DROP TABLE `comments`'),
(31, '22222'),
(32, '22222'),
(33, '22222'),
(34, '22222'),
(35, '666'),
(36, 'f6f6c6'),
(37, 'f6f6c6'),
(38, '.;oiu'),
(39, '.;oiu'),
(40, '.;oiu'),
(41, '.;oiu'),
(42, '.;oiu'),
(43, '78865'),
(44, 'DROP TABLE `comments`'),
(45, 'DROP TABLE `comments`'),
(54, ' ERCEVC'),
(55, '78/66/62/55/'),
(56, '78/6662/55'),
(57, '56&7855'),
(63, 'as'),
(64, '<h1>isdjc</h1>'),
(65, '<h1>isjd</h1>\r\n'),
(66, 'sdjfjkadsnf'),
(67, 'sdjbfh'),
(68, '<b>sdjbfh</b>');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `pass`) VALUES
(4, 'ty', 'c20ad4d76fe97759aa27a0c99bff6710'),
(7, 'ty', '827ccb0eea8a706c4c34a16891f84e7b'),
(8, 'oo', 'c20ad4d76fe97759aa27a0c99bff6710'),
(9, 'ttt', 'e4da3b7fbbce2345d7772b0674a318d5'),
(10, 're', 'c4ca4238a0b923820dcc509a6f75849b'),
(11, 'qw', 'c4ca4238a0b923820dcc509a6f75849b');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
