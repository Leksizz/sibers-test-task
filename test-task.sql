-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: MySQL-8.2
-- Время создания: Июн 24 2024 г., 17:17
-- Версия сервера: 8.2.0
-- Версия PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test-task`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(55) NOT NULL,
  `lastname` varchar(55) NOT NULL,
  `login` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `gender` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `birthdate` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role` varchar(55) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `login`, `gender`, `birthdate`, `password`, `role`) VALUES
(77, 'Admin', 'Admin', 'Admin', 'male', '2024-06-23', '$2y$10$6tuc4vhpC5a/rOKGTz/hzusTpRbXIVbwFJZVVKCNGHq7CaSW/8E06', 'admin'),
(78, 'Matvey', 'Evgeniev', 'Matveev', 'male', '2024-05-29', '$2y$10$p.jhLhri9FxWQ9kz76CovOeClREordYFCPlQ6U3W1HtjXt8y9U0v2', 'user'),
(79, 'Anna', 'Ivanova', 'Beaty', 'female', '2024-06-20', '$2y$10$UrDZwiiWRMVTXJik0ZzvIe25TPl5cPj/f0r38emfG6NXtt4CjQ8tq', 'user'),
(80, 'Irina', 'Smirnova', 'Lili', 'female', '2024-05-17', '$2y$10$4N7.uYlSkbYyw88hsTdZLuLFsFGoKFrH3dYKjyYv9QxruBWnw4j3O', 'user'),
(81, 'Olga', 'Voronova', 'Bear', 'female', '2024-06-27', '$2y$10$vQeqeieKS66q9SXQJyg0TuquoATwcf3Pd7BnscgVDOLtjEXg/FmcO', 'user'),
(82, 'Elena', 'Nekrasova', 'Bird', 'female', '2024-05-16', '$2y$10$92xic3UM4YLYp7GBXYvrh.H0mHbbvJH3re2xFSmAGoYxYlIqNupIS', 'user'),
(83, 'Dmitriy', 'Mobov', 'Cat', 'male', '2024-05-03', '$2y$10$1pDNo9EKdJJX39jn3YThw.y55GWkIFy94WB28kq4W8hy/s7u.Mdde', 'user'),
(84, 'Pavel', 'Dmitriev', 'Octopus', 'male', '2024-06-08', '$2y$10$CgMDKPf8g.hFqKtBLpY/HeoBnZwY11H0jRj0Cz1O2hmqAI8TERTN6', 'user'),
(85, 'Oleg', 'Novov', 'Crocodile', 'male', '2024-05-30', '$2y$10$dJ4yYcHQ5Q.F9mH4WHBeZezTiBHCwZgXl3bHwKrBQgg0bZqYUl0US', 'user'),
(86, 'John', 'Brown', 'Green', NULL, '2024-05-30', '$2y$10$baLsUzXiosKBviAgK6oRDOrA1JLQIwqx8nnzn8Wa6JTR3.WDNOis.', 'user'),
(87, 'Sergey', 'Morozov', 'Blue', 'male', '2024-06-02', '$2y$10$1b7QTzweIgqQTV3qZ.ruhOnSuBG5lZIt2mzqUK6Ez0QTmdj33Dwza', 'user'),
(88, 'Inna', 'Vladimirova', 'Yellow', 'female', '2024-06-09', '$2y$10$X5cCMYK85hzU3yvOKhgb5ucaszSUpwvl4WzHiAG2IwiJwRxo6Qcea', 'user'),
(89, 'Svetlana', 'Skolova', 'Red', 'female', '2020-06-11', '$2y$10$AoaXyKzfUzhAs2qvRrw4C.u.G8uKaqw6vrQi5vr.GMj6AG664AYV.', 'user'),
(90, 'Aleksandr', 'Boylov', 'Bor', 'male', '2024-06-21', '$2y$10$XE6eX6/6vLqFUx9nr69T4eKXPMJ30wuNCf2yJKCD6gOg.PatAHVhO', 'user'),
(91, 'Kirill', 'Starov', 'Kimber', 'male', '2024-05-31', '$2y$10$7VkYJAIYvsslR8WtF0Ex7.N9xkwMIzM6TwHYt3j8P4Ww.rJyQlbEu', 'user'),
(92, 'Lev', 'Tigrov', 'Ligr', 'male', '2024-05-24', '$2y$10$bGZDeGlgcsjaHDW3iwuu2O6kcTquHPFU/pmHhBhmS1MiFf7krTjS2', 'user'),
(93, 'Jim', 'Milton', 'Jimble', 'male', '2024-06-22', '$2y$10$C.V0sYRC96UiAYDE0W6Mr.UajFzf0uqfiMtp5F4cqqTXEyLvvGDTS', 'user'),
(94, 'TImur', 'Novgorodov', 'Moscow', 'male', '2024-06-06', '$2y$10$OVKBnDpFwneqA45a2KUqPea9dCJJacVJQ4qEQ9JPMTrug1t7..5HK', 'user'),
(95, 'Arsen', 'Zhdanov', 'Novosibirsk', 'female', '2024-05-27', '$2y$10$vi83BPSqp8WSX6S34n/YT.dT1BvwOQDJ5E2mV3.3a8GFJ9ndeyPAa', 'user'),
(96, 'Galina', 'Karpova', 'Tree', 'female', '2024-06-20', '$2y$10$huz3Jr8aL77rMZAmffs6jOtdpLhBfQuLkQDMlRjITsMnn3xR70PcG', 'user'),
(97, 'Andrey', 'Ivanov', 'Andr', 'male', '2024-06-13', '$2y$10$jWOsEXSkx/umg.W6For/E.L7l1YeAq8C.LL0zyLXLPof548NjpYeu', 'user');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
