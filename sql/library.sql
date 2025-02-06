-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 06 2025 г., 12:50
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `library`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about_content`
--

CREATE TABLE `about_content` (
  `id` int(11) NOT NULL,
  `section` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `about_content`
--

INSERT INTO `about_content` (`id`, `section`, `identifier`, `content`, `created_at`, `updated_at`) VALUES
(1, 'welcome', 'title', 'Ваша идеальная онлайн библиотека', '2025-01-17 12:00:51', '2025-01-19 11:57:34'),
(2, 'hero', 'title', 'Добро пожаловать в мир книг!', '2025-01-17 12:02:03', '2025-01-19 11:57:39');

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_firstname` varchar(100) NOT NULL,
  `author_lastname` varchar(100) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `pdf_file` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `views` int(11) NOT NULL DEFAULT 0,
  `meta_keywords` varchar(255) DEFAULT NULL COMMENT 'META Keywords',
  `meta_description` text DEFAULT NULL COMMENT 'META Description',
  `image_alt` varchar(255) DEFAULT NULL COMMENT 'ALT текст для изображения',
  `is_hidden` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `title`, `author_firstname`, `author_lastname`, `category_id`, `description`, `short_description`, `cover_image`, `pdf_file`, `created_at`, `views`, `meta_keywords`, `meta_description`, `image_alt`, `is_hidden`) VALUES
(46, 'Властелин Колец', 'Джон Рональд', 'Руэл Толкин', 26, 'Эпическая фэнтезийная сага, рассказывающая о Средиземье и борьбе против Тёмного Властелина Саурона. Главные герои, хоббиты Фродо и Сэм, отправляются в опасное путешествие, чтобы уничтожить Кольцо Всевластия и спасти мир от тьмы. Книга наполнена магией, приключениями, битвами и глубокими размышлениями о добре и зле, дружбе и предательстве.', 'Эпическое фэнтези о хоббитах, спасающих мир от Тёмного Властелина, уничтожая Кольцо Всевластия.', 'cover_1736947715_6787b803aa10a.jpg', 'book_1736947715_6787b803aa486.pdf', '2025-01-15 16:28:35', 3, 'Книга властелин колец, хобиты, Властелин, кольца, история, книга.', 'Эпическое фэнтези о хоббитах, спасающих мир от Тёмного Властелина, уничтожая Кольцо Всевластия. Властелин колец, кольца.1', 'Властелин_колец', 0),
(49, 'Маленький принц', 'Антуан де ', 'Сент-Экзюпери', 31, 'Философская сказка, рассказывающая о путешествии Маленького принца по разным планетам. Встречая разных персонажей, он размышляет о природе человеческих отношений, дружбе, любви и смысле жизни. Книга обращается к детям и взрослым, напоминая о важности духовных ценностей.', 'Философская сказка о путешествии принца по планетам и его размышлениях о смысле жизни и человеческих отношениях.', 'cover_1736948094_6787b97e07fb0.jpg', 'book_1736948163_6787b9c356b2e.pdf', '2025-01-15 16:34:54', 1, 'уыпрыур', 'Философская сказка, рассказывающая о путешествии Маленького принца по разным планетам. Встречая разных персонажей, он размышляет о природе человеческих отношений, дружбе, любви и смысле жизни. ', 'Маленький_принц', 0),
(50, 'Код да Винчи', 'Дэн', 'Браун', 22, 'Захватывающий детективный триллер, в котором профессор Роберт Лэнгдон расследует загадочное убийство, связанное с тайнами ордена Тамплиеров и скрытыми символами в искусстве Леонардо да Винчи. Книга полна интриг, загадок и исторических фактов, переплетенных с вымыслом.', 'Детективный триллер о расследовании убийства, связанного с тайнами Тамплиеров и искусством Леонардо да Винчи.', 'cover_1736948423_6787bac72f84f.jpg', 'book_1736948379_6787ba9b54c26.pdf', '2025-01-15 16:39:39', 2, 'дайвинчи, код, читать, онлайн', 'Захватывающий детективный триллер, в котором профессор Роберт Лэнгдон расследует загадочное убийство, связанное с тайнами ордена Тамплиеров и скрытыми символами в искусстве Леонардо да Винчи. ', 'Дайвинчи_код', 0),
(51, 'Алхимик', 'Пауло', 'Коэльо', 20, 'Философская притча о пастухе Сантьяго, который отправляется в путешествие, чтобы найти сокровища, спрятанные у египетских пирамид. Книга рассказывает о важности следования за своей мечтой, преодоления страхов и прислушивания к своему сердцу.', 'Философская притча о пастухе, ищущем сокровища, и важности следования за мечтой.', 'cover_1736948559_6787bb4f72f35.jpg', 'book_1736948559_6787bb4f73130.pdf', '2025-01-15 16:42:39', 2, 'филосовия, притца, филосовская притча, читать, бесплатно', 'Философская притча о пастухе, ищущем сокровища, и важности следования за мечтой.', 'Алхимик', 0),
(52, 'Зеленая миля', 'Стивен', 'Кинг', 33, 'Мистическая драма о тюремном блоке смертников, где заключенный Джон Коффи обладает сверхъестественными способностями. Книга размышляет о добре и зле, справедливости и милосердии, а также затрагивает темы расизма и смертной казни.', 'Мистическая драма о заключенном со сверхъестественными способностями в тюремном блоке смертников.', 'cover_1736949101_6787bd6d35097.jpg', 'book_1736949101_6787bd6d352c6.pdf', '2025-01-15 16:51:41', 2, 'Драма читать бесплатно Зеленая миля ', 'Мистическая драма о тюремном блоке смертников, где заключенный Джон Коффи обладает сверхъестественными способностями. Книга размышляет о добре и зле, справедливости и милосердии, а также затрагивает темы расизма и смертной казни.', 'Зеленая_миля', 0),
(53, 'Унесенные ветром', 'Маргарет', 'Митчелл', 37, 'Эпический роман о жизни Скарлетт О’Хара на фоне Гражданской войны в США. Книга рассказывает о любви, выживании, амбициях и о том, как война меняет людей и их судьбы.', 'Эпический роман о жизни Скарлетт О’Хара на фоне Гражданской войны и её стремлении к выживанию.', 'cover_1736949424_6787beb0c4cb6.jpg', 'book_1736949424_6787beb0c4ec8.pdf', '2025-01-15 16:54:07', 2, 'Роман читать бесплатно унесенные ветры', 'Эпический роман о жизни Скарлетт О’Хара на фоне Гражданской войны в США. Книга рассказывает о любви, выживании, амбициях и о том, как война меняет людей и их судьбы.', 'Унесенные_ветры', 0),
(55, 'цфацф', 'ацфа', 'цфафца', 21, '', '', NULL, NULL, '2025-01-19 15:03:56', 0, '', '', '', 1),
(56, 'цфацфа', 'цфафц', 'ацфа', 25, '', '', NULL, NULL, '2025-01-19 15:04:02', 0, '', '', '', 1),
(57, 'цацфа', 'цфацфа', 'цфацфа', 25, '', '', NULL, NULL, '2025-01-19 15:04:08', 0, '', '', '', 1),
(58, 'цфаца', 'цфацф', 'ацфа', 31, '', '', NULL, NULL, '2025-01-19 15:04:15', 0, '', '', '', 1),
(59, 'цфацфа', 'цффаца', 'ца', 25, '', '', NULL, NULL, '2025-01-19 15:04:20', 0, '', '', '', 1),
(60, 'цацфа', 'цацфа', 'цацф', 25, '', '', NULL, NULL, '2025-01-19 15:04:26', 0, '', '', '', 1),
(61, 'цафцфа', 'цфа', 'цац', 28, '', '', NULL, NULL, '2025-01-19 15:04:32', 0, '', '', '', 1),
(62, 'xbxdg', 'xdgdgx', 'dgxgxd', 22, '', '', NULL, NULL, '2025-01-24 16:36:36', 0, '', '', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `book_views`
--

CREATE TABLE `book_views` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `book_views`
--

INSERT INTO `book_views` (`id`, `book_id`, `user_id`, `created_at`) VALUES
(1, 36, 1, '2025-01-14 13:35:08'),
(2, 35, 1, '2025-01-14 13:35:10'),
(3, 38, 1, '2025-01-14 13:35:46'),
(4, 37, 1, '2025-01-14 13:36:59'),
(5, 39, 1, '2025-01-14 13:38:00'),
(6, 35, 21, '2025-01-14 13:45:33'),
(7, 38, 21, '2025-01-14 13:45:44'),
(8, 40, 1, '2025-01-14 17:28:24'),
(9, 42, 24, '2025-01-15 12:27:19'),
(10, 46, 24, '2025-01-15 13:32:50'),
(11, 50, 24, '2025-01-15 14:02:32'),
(12, 53, 24, '2025-01-17 14:08:16'),
(13, 52, 24, '2025-01-17 14:08:22'),
(14, 49, 24, '2025-01-17 14:08:37'),
(15, 50, 31, '2025-01-17 14:21:08'),
(16, 46, 31, '2025-01-17 14:21:16'),
(17, 46, 35, '2025-01-17 14:21:44'),
(18, 51, 24, '2025-01-21 15:14:38'),
(19, 52, 39, '2025-01-31 17:09:13'),
(20, 51, 39, '2025-02-03 14:06:43'),
(21, 53, 39, '2025-02-03 14:19:06');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(20, 'Фантастика'),
(21, 'Реалистическая проза'),
(22, 'Детектив'),
(23, 'Приключенческая литература'),
(24, 'Любовный роман '),
(25, 'Исторический роман'),
(26, 'Фэнтези'),
(27, 'Магический реализм'),
(28, 'Триллер'),
(31, 'Сказка'),
(32, 'Философия'),
(33, 'Драма'),
(34, 'Дневник'),
(35, 'Биография'),
(37, 'Роман');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `book_id`, `user_id`, `text`, `created_at`) VALUES
(16, 49, 24, 'вмуы', '2025-01-17 14:08:45'),
(17, 50, 24, 'пуыпы', '2025-01-19 10:49:28'),
(18, 50, 24, 'вапвпк', '2025-01-19 11:51:44'),
(19, 50, 24, 'па', '2025-01-21 15:15:00'),
(20, 53, 24, 'd', '2025-01-28 14:24:38'),
(22, 46, 24, 'врвкр', '2025-02-04 14:50:53'),
(23, 46, 24, 'а', '2025-02-04 14:50:55'),
(24, 46, 24, 'р', '2025-02-04 14:50:58'),
(25, 46, 24, 'р', '2025-02-04 14:51:00'),
(26, 46, 24, 'р', '2025-02-04 14:51:02'),
(27, 46, 24, 'р', '2025-02-04 14:51:04'),
(28, 46, 24, 'вап', '2025-02-04 14:51:07'),
(29, 46, 24, 'рва', '2025-02-04 14:51:09'),
(30, 46, 24, 'раврвар', '2025-02-04 14:51:12');

-- --------------------------------------------------------

--
-- Структура таблицы `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `book_id`, `created_at`) VALUES
(20, 31, 50, '2025-01-17 14:21:09'),
(24, 24, 50, '2025-01-19 12:05:43'),
(26, 24, 51, '2025-01-24 13:36:52');

-- --------------------------------------------------------

--
-- Структура таблицы `page_content`
--

CREATE TABLE `page_content` (
  `id` int(11) NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `block_identifier` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `page_content`
--

INSERT INTO `page_content` (`id`, `page_url`, `block_identifier`, `content`, `created_at`, `updated_at`) VALUES
(1, 'site/index', 'welcome_title', 'Добро пожаловать в нашу библиотеку!', '2025-01-17 11:53:18', '2025-02-06 11:04:06'),
(2, 'site/index', 'feature_2_text', 'Доступ к библиотеке с любого устройства 24/7', '2025-01-17 11:53:55', '2025-01-28 14:39:52'),
(7, 'site/index', 'welcome_subtitle', 'Откройте для себя мир книг', '2025-01-28 14:39:18', '2025-01-28 14:39:46'),
(8, 'site/index', 'feature_2_title', 'Читайте где угодно', '2025-01-28 14:39:19', '2025-01-28 14:39:47'),
(9, 'site/index', 'feature_3_title', 'Бесплатно', '2025-01-28 14:39:21', '2025-01-28 14:39:49'),
(10, 'site/index', 'feature_1_title', 'Безграничный доступ', '2025-01-28 14:39:22', '2025-02-06 11:04:13'),
(11, 'site/index', 'feature_1_text', 'Более 1000 книг различных жанров в вашем распоряжении', '2025-01-28 14:39:24', '2025-01-28 14:39:53'),
(12, 'site/index', 'feature_3_text', 'Все книги доступны бесплатно после регистрации', '2025-01-28 14:39:26', '2025-01-28 14:39:50'),
(13, 'site/about', 'welcome_title', 'Ваша идеальная онлайн библиотека', '2025-01-28 14:43:42', '2025-02-06 11:04:29'),
(14, 'site/about', 'genre_title_5', 'Образование', '2025-01-28 15:00:37', '2025-01-28 15:00:50'),
(15, 'page-editor/index', 'welcome_title', 'Добро пожаловать в нашу библиотеку!fdg', '2025-01-31 17:36:43', '2025-02-03 14:44:39'),
(16, 'page-editor/index', 'feature_3_text', 'Все книги доступны бесплатно после регистрацииGRDGDR', '2025-01-31 17:37:38', '2025-01-31 17:37:38'),
(17, 'site/about', 'hero_title', 'Добро пожаловать в мир книг!', '2025-02-04 14:50:26', '2025-02-06 11:04:25');

-- --------------------------------------------------------

--
-- Структура таблицы `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` int(11) NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `current_title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `current_description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `keywords` text DEFAULT NULL,
  `current_keywords` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `page_url`, `title`, `current_title`, `description`, `current_description`, `created_at`, `updated_at`, `keywords`, `current_keywords`) VALUES
(1, 'site/index', 'Главная1', 'Библиотека', 'Читайте лучшие книги онлайн! Огромная библиотека электронных книг: бестселлеры, классика, новинки. Начни читать бесплатно прямо сейчас! Ключевые слова: электронные книги, онлайн библиотека, читать книги, бестселлеры, классика, новинки1', 'Добро пожаловать в нашу онлайн библиотеку! У нас вы найдете огромную коллекцию книг различных жанров. Читайте, скачивайте и наслаждайтесь чтением.', '2025-01-19 10:53:33', '2025-02-05 15:22:47', 'библиотека, книги, чтение, электронные книги1', NULL),
(2, 'site/about', 'О нас', 'О нас', 'Узнайте больше о нашей библиотеке. Мы предоставляем доступ к огромной коллекции книг, создаем комфортную среду для чтения и развиваем любовь к литературе.', 'Узнайте больше о нашей библиотеке. Мы предоставляем доступ к огромной коллекции книг, создаем комфортную среду для чтения и развиваем любовь к литературе.', '2025-01-19 10:53:33', '2025-01-21 15:32:34', 'о библиотеке, контакты, информация', NULL),
(3, 'book/books', 'Библиотека книг', 'Библиотека книг', 'Найдите свою следующую книгу в нашей онлайн библиотеке! Удобный поиск по жанрам, авторам и названиям. Читайте электронные книги онлайн бесплатно!  библиотека книг, онлайн книги, электронные книги, читать онлайн, поиск книг, жанры, авторы', 'Исследуйте нашу обширную коллекцию книг. Художественная литература, научные труды, учебники и многое другое.', '2025-01-19 10:53:33', '2025-01-21 15:32:34', 'каталог книг, электронная библиотека, книги онлайн', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `registration_date` datetime DEFAULT current_timestamp(),
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password_hash`, `registration_date`, `is_admin`) VALUES
(24, 'sinnior', 'sinnior@gmail.com', '$2y$13$jyYq2BiGeXs/gIU3LNzLfepIQNPcgvxJC2lqg8M7LhG48.UsgR26K', '2025-01-15 14:57:40', 2),
(31, 'user1', 'user1@gmail.com', '$2y$13$O4cCd2nqDb2.KU3.J6BTnuWdVMA0uRykheNjOhM8qcgDq8SQs/Ugu', '2025-01-15 16:44:27', 0),
(32, 'user2', 'user2@gmail.com', '$2y$13$dKqLhixftkY7aC7VoIolLuexn3kZz2gPiJFSPLw7rdcIWHgt1VNfS', '2025-01-15 16:46:11', 0),
(33, 'user3', 'user3@gmail.com', '$2y$13$s..fEGgElkDVafcjIBqCzez5UWXMw2M9MNap5H0/GsbbOnhL4anBK', '2025-01-15 16:46:28', 0),
(34, 'user4', 'user4@gmail.com', '$2y$13$sr0CmBSbZLNHSrdIeLNtte9mKKtBalm2wuMb1TEqyr/PznnDgayj6', '2025-01-15 16:46:47', 0),
(35, 'admin1', 'admin1@gmail.com', '$2y$13$Lp5lgIwp7bg6ZZ45MqnKUu2MevKjslXA.BPghggv/3FwkxWsaKVsu', '2025-01-15 16:47:10', 1),
(36, 'admin2', 'admin2@gmail.com', '$2y$13$kDjX9bdn4aFSuKF6.hK1e.a5ps8k4iZMPh8lWe6ERyjD7aSIERZ8G', '2025-01-15 16:47:27', 1),
(37, 'admin3', 'admin3@gmail.com', '$2y$13$eC42CCo6Rm/8.5COhJ8ie.ssZRZFU7zVGHRYjDOR4XD2XoEpfEOzW', '2025-01-15 16:47:44', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `view_history`
--

CREATE TABLE `view_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `viewed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `view_history`
--

INSERT INTO `view_history` (`id`, `user_id`, `book_id`, `viewed_at`) VALUES
(155, 31, 50, '2025-01-17 14:21:08'),
(156, 31, 46, '2025-01-17 14:22:10'),
(157, 35, 46, '2025-01-17 14:21:44'),
(168, 24, 52, '2025-02-04 16:11:34'),
(169, 24, 46, '2025-02-05 14:45:28'),
(170, 24, 50, '2025-02-04 15:45:13'),
(171, 24, 51, '2025-02-04 15:59:56'),
(172, 24, 53, '2025-02-04 16:00:15');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about_content`
--
ALTER TABLE `about_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_section_identifier` (`section`,`identifier`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `book_views`
--
ALTER TABLE `book_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-book_views-book_id` (`book_id`),
  ADD KEY `idx-book_views-user_id` (`user_id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-comments-book_id` (`book_id`),
  ADD KEY `idx-comments-user_id` (`user_id`);

--
-- Индексы таблицы `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Индексы таблицы `page_content`
--
ALTER TABLE `page_content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_page_block` (`page_url`,`block_identifier`);

--
-- Индексы таблицы `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_url` (`page_url`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `view_history`
--
ALTER TABLE `view_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about_content`
--
ALTER TABLE `about_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT для таблицы `book_views`
--
ALTER TABLE `book_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `page_content`
--
ALTER TABLE `page_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `view_history`
--
ALTER TABLE `view_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk-comments-book_id` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk-comments-user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `view_history`
--
ALTER TABLE `view_history`
  ADD CONSTRAINT `view_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `view_history_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
