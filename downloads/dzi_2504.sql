-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Време на генериране: 24 апр 2025 в 19:25
-- Версия на сървъра: 10.4.32-MariaDB
-- Версия на PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данни: `dzi_2504`
--

-- --------------------------------------------------------

--
-- Структура на таблица `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add course', 7, 'add_course'),
(26, 'Can change course', 7, 'change_course'),
(27, 'Can delete course', 7, 'delete_course'),
(28, 'Can view course', 7, 'view_course'),
(29, 'Can add registration', 8, 'add_registration'),
(30, 'Can change registration', 8, 'change_registration'),
(31, 'Can delete registration', 8, 'delete_registration'),
(32, 'Can view registration', 8, 'view_registration');

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$9LKJmcTMLCBuwBV1HtzhNB$KeIPSDxSh6jwlLMcI6h5tncxSB2WGsNfTL1zeFSeQGI=', '2025-04-23 22:03:48.990721', 1, 'dzi_25', '', '', '', 1, 1, '2025-03-31 18:09:29.742281');

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'main', 'course'),
(8, 'main', 'registration'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Структура на таблица `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-03-31 18:08:45.453937'),
(2, 'auth', '0001_initial', '2025-03-31 18:08:45.842628'),
(3, 'admin', '0001_initial', '2025-03-31 18:08:45.939606'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-03-31 18:08:45.944623'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-03-31 18:08:45.949651'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-03-31 18:08:45.989607'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-03-31 18:08:46.031563'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-03-31 18:08:46.043594'),
(9, 'auth', '0004_alter_user_username_opts', '2025-03-31 18:08:46.049598'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-03-31 18:08:46.082096'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-03-31 18:08:46.086674'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-03-31 18:08:46.094641'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-03-31 18:08:46.105936'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-03-31 18:08:46.119239'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-03-31 18:08:46.130864'),
(16, 'auth', '0011_update_proxy_permissions', '2025-03-31 18:08:46.135961'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-03-31 18:08:46.145454'),
(18, 'sessions', '0001_initial', '2025-03-31 18:08:46.169515'),
(19, 'main', '0001_initial', '2025-04-23 21:59:04.380908');

-- --------------------------------------------------------

--
-- Структура на таблица `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('hkql2w3ovecizlnmlafcagy15yoknccu', '.eJxVjDsOwjAQBe_iGln-ZZ1Q0ucM0Xp3wQFkS3FSIe4OkVJA-2bmvdSE25qnrckyzazOyqrT75aQHlJ2wHcst6qplnWZk94VfdCmx8ryvBzu30HGlr91BxAG9rYj7wafqE8uBgCyEpGZUNgkj9AjBTRG0F8tsoCJ4FyIROr9AeMjOEk:1u7iC4:EccM0Us9nK7o4EPiFdycbuNqjpuVW1KgtSeJ2SJ7PUA', '2025-05-07 22:03:48.994824');

-- --------------------------------------------------------

--
-- Структура на таблица `main_course`
--

CREATE TABLE `main_course` (
  `id` bigint(20) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `capacity` int(10) UNSIGNED NOT NULL CHECK (`capacity` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `main_course`
--

INSERT INTO `main_course` (`id`, `subject`, `description`, `start_date`, `end_date`, `capacity`) VALUES
(1, 'Лятна математика', 'Занимания по приложна и забавна математика за ученици.', '2024-07-01', '2024-07-15', 15),
(2, 'Програмиране за деца', 'Въведение в Scratch и Python за деца 3-7 клас.', '2024-07-05', '2024-07-20', 12),
(3, 'Рисуване и изобразително изкуство', 'Курс по класическо и модерно рисуване за малки и големи.', '2024-07-03', '2024-07-25', 10);

-- --------------------------------------------------------

--
-- Структура на таблица `main_registration`
--

CREATE TABLE `main_registration` (
  `id` bigint(20) NOT NULL,
  `child_name` varchar(100) NOT NULL,
  `child_age` int(10) UNSIGNED NOT NULL CHECK (`child_age` >= 0),
  `phone` varchar(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `course_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Схема на данните от таблица `main_registration`
--

INSERT INTO `main_registration` (`id`, `child_name`, `child_age`, `phone`, `email`, `created_at`, `course_id`) VALUES
(1, 'Иван Георгиев', 10, '+359888111222', 'ivan.g@kidsmail.bg', '2025-04-23 22:03:04.712839', 1),
(2, 'Мариела Тодорова', 9, '+359887555444', 'mariela.t@email.com', '2025-04-23 22:03:04.716678', 2),
(3, 'Радослав Петров', 11, '+359889777333', 'radoslav.p@example.bg', '2025-04-23 22:03:04.719679', 1),
(4, 'Даниела Цветкова', 8, '+359889222111', 'dani.cv@mail.bg', '2025-04-23 22:03:04.723856', 3);

--
-- Indexes for dumped tables
--

--
-- Индекси за таблица `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индекси за таблица `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Индекси за таблица `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Индекси за таблица `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индекси за таблица `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Индекси за таблица `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Индекси за таблица `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Индекси за таблица `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Индекси за таблица `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Индекси за таблица `main_course`
--
ALTER TABLE `main_course`
  ADD PRIMARY KEY (`id`);

--
-- Индекси за таблица `main_registration`
--
ALTER TABLE `main_registration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_registration_course_id_b8cc1b0a_fk_main_course_id` (`course_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `main_course`
--
ALTER TABLE `main_course`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `main_registration`
--
ALTER TABLE `main_registration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения за дъмпнати таблици
--

--
-- Ограничения за таблица `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ограничения за таблица `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения за таблица `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения за таблица `main_registration`
--
ALTER TABLE `main_registration`
  ADD CONSTRAINT `main_registration_course_id_b8cc1b0a_fk_main_course_id` FOREIGN KEY (`course_id`) REFERENCES `main_course` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
