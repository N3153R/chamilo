-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2016 a las 17:32:27
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chamilo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `access_url`
--

CREATE TABLE `access_url` (
  `id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `tms` datetime DEFAULT NULL,
  `url_type` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `access_url`
--

INSERT INTO `access_url` (`id`, `url`, `description`, `active`, `created_by`, `tms`, `url_type`) VALUES
(1, 'http://localhost/', ' ', 1, 1, '2016-11-11 09:23:19', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `access_url_rel_course`
--

CREATE TABLE `access_url_rel_course` (
  `id` int(11) NOT NULL,
  `c_id` int(11) DEFAULT NULL,
  `access_url_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `access_url_rel_course`
--

INSERT INTO `access_url_rel_course` (`id`, `c_id`, `access_url_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `access_url_rel_course_category`
--

CREATE TABLE `access_url_rel_course_category` (
  `id` int(11) NOT NULL,
  `access_url_id` int(11) NOT NULL,
  `course_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `access_url_rel_course_category`
--

INSERT INTO `access_url_rel_course_category` (`id`, `access_url_id`, `course_category_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `access_url_rel_session`
--

CREATE TABLE `access_url_rel_session` (
  `access_url_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `access_url_rel_user`
--

CREATE TABLE `access_url_rel_user` (
  `access_url_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `access_url_rel_user`
--

INSERT INTO `access_url_rel_user` (`access_url_id`, `user_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `access_url_rel_usergroup`
--

CREATE TABLE `access_url_rel_usergroup` (
  `id` int(11) NOT NULL,
  `access_url_id` int(11) NOT NULL,
  `usergroup_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `user_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `announcement_rel_group`
--

CREATE TABLE `announcement_rel_group` (
  `group_id` int(11) NOT NULL,
  `announcement_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `block`
--

CREATE TABLE `block` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `branch_sync`
--

CREATE TABLE `branch_sync` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `access_url_id` int(11) NOT NULL,
  `unique_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `branch_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `branch_ip` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` decimal(10,0) DEFAULT NULL,
  `longitude` decimal(10,0) DEFAULT NULL,
  `dwn_speed` int(11) DEFAULT NULL,
  `up_speed` int(11) DEFAULT NULL,
  `delay` int(11) DEFAULT NULL,
  `admin_mail` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_phone` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sync_trans_id` bigint(20) DEFAULT NULL,
  `last_sync_trans_date` datetime DEFAULT NULL,
  `last_sync_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ssl_pub_key` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch_type` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `lvl` int(11) DEFAULT NULL,
  `root` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `branch_sync`
--

INSERT INTO `branch_sync` (`id`, `parent_id`, `access_url_id`, `unique_id`, `branch_name`, `description`, `branch_ip`, `latitude`, `longitude`, `dwn_speed`, `up_speed`, `delay`, `admin_mail`, `admin_name`, `admin_phone`, `last_sync_trans_id`, `last_sync_trans_date`, `last_sync_type`, `ssl_pub_key`, `branch_type`, `lft`, `rgt`, `lvl`, `root`) VALUES
(1, NULL, 1, 'e23e7d36d9ee3af635d64d75c5f7318baa2b4e31', 'localhost', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fc20d52ebecac6a59d9ce6ae97b1f54a4e352837', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `branch_transaction`
--

CREATE TABLE `branch_transaction` (
  `id` bigint(20) NOT NULL,
  `status_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `transaction_id` bigint(20) NOT NULL,
  `action` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `origin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dest_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `external_info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_insert` datetime NOT NULL,
  `time_update` datetime NOT NULL,
  `failed_attempts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `branch_transaction_status`
--

CREATE TABLE `branch_transaction_status` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `career`
--

CREATE TABLE `career` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `from_user` int(11) DEFAULT NULL,
  `to_user` int(11) DEFAULT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sent` datetime NOT NULL,
  `recd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat_video`
--

CREATE TABLE `chat_video` (
  `id` int(11) NOT NULL,
  `from_user` int(11) NOT NULL,
  `to_user` int(11) NOT NULL,
  `room_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `class_item`
--

CREATE TABLE `class_item` (
  `id` int(11) NOT NULL,
  `code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `class_user`
--

CREATE TABLE `class_user` (
  `class_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `directory` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_language` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `category_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visibility` int(11) DEFAULT NULL,
  `show_score` int(11) DEFAULT NULL,
  `tutor_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visual_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department_url` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disk_quota` bigint(20) DEFAULT NULL,
  `last_visit` datetime DEFAULT NULL,
  `last_edit` datetime DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `subscribe` tinyint(1) DEFAULT NULL,
  `unsubscribe` tinyint(1) DEFAULT NULL,
  `registration_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `legal` longtext COLLATE utf8_unicode_ci,
  `activate_legal` int(11) DEFAULT NULL,
  `add_teachers_to_sessions_courses` tinyint(1) DEFAULT NULL,
  `course_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `course`
--

INSERT INTO `course` (`id`, `room_id`, `title`, `code`, `directory`, `course_language`, `description`, `category_code`, `visibility`, `show_score`, `tutor_name`, `visual_code`, `department_name`, `department_url`, `disk_quota`, `last_visit`, `last_edit`, `creation_date`, `expiration_date`, `subscribe`, `unsubscribe`, `registration_code`, `legal`, `activate_legal`, `add_teachers_to_sessions_courses`, `course_type_id`) VALUES
(1, NULL, 'Tecnico en Informatica', 'TI', 'TI', 'spanish', 'Descripción del curso', '', 2, 1, NULL, 'TI', '', '', 100000000, '2016-11-25 01:33:28', '2016-11-11 15:43:18', '2016-11-11 15:43:18', '2017-11-11 15:43:18', 1, 0, '', '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course_category`
--

CREATE TABLE `course_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tree_pos` int(11) DEFAULT NULL,
  `children_count` smallint(6) DEFAULT NULL,
  `auth_course_child` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_cat_child` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `course_category`
--

INSERT INTO `course_category` (`id`, `name`, `code`, `parent_id`, `tree_pos`, `children_count`, `auth_course_child`, `auth_cat_child`) VALUES
(1, 'Language skills', 'LANG', NULL, 1, 0, 'TRUE', 'TRUE'),
(2, 'PC Skills', 'PC', NULL, 2, 0, 'TRUE', 'TRUE'),
(3, 'Projects', 'PROJ', NULL, 3, 0, 'TRUE', 'TRUE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course_module`
--

CREATE TABLE `course_module` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `row` int(11) NOT NULL,
  `column` int(11) NOT NULL,
  `position` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `course_module`
--

INSERT INTO `course_module` (`id`, `name`, `link`, `image`, `row`, `column`, `position`) VALUES
(1, 'calendar_event', 'calendar/agenda.php', 'agenda.gif', 1, 1, 'basic'),
(2, 'link', 'link/link.php', 'links.gif', 4, 1, 'basic'),
(3, 'document', 'document/document.php', 'documents.gif', 3, 1, 'basic'),
(4, 'student_publication', 'work/work.php', 'works.gif', 3, 2, 'basic'),
(5, 'announcement', 'announcements/announcements.php', 'valves.gif', 2, 1, 'basic'),
(6, 'user', 'user/user.php', 'members.gif', 2, 3, 'basic'),
(7, 'forum', 'forum/index.php', 'forum.gif', 1, 2, 'basic'),
(8, 'quiz', 'exercice/exercice.php', 'quiz.gif', 2, 2, 'basic'),
(9, 'group', 'group/group.php', 'group.gif', 3, 3, 'basic'),
(10, 'course_description', 'course_description/', 'info.gif', 1, 3, 'basic'),
(11, 'chat', 'chat/chat.php', 'chat.gif', 0, 0, 'external'),
(12, 'dropbox', 'dropbox/index.php', 'dropbox.gif', 4, 2, 'basic'),
(13, 'tracking', 'tracking/courseLog.php', 'statistics.gif', 1, 3, 'courseadmin'),
(14, 'homepage_link', 'link/link.php?action=addlink', 'npage.gif', 1, 1, 'courseadmin'),
(15, 'course_setting', 'course_info/infocours.php', 'reference.gif', 1, 1, 'courseadmin'),
(16, 'External', '', 'external.gif', 0, 0, 'external'),
(17, 'AddedLearnpath', '', 'scormbuilder.gif', 0, 0, 'external'),
(18, 'learnpath', 'lp/lp_controller.php', 'scorms.gif', 5, 1, 'basic'),
(19, 'blog', 'blog/blog.php', 'blog.gif', 1, 2, 'basic'),
(20, 'blog_management', 'blog/blog_admin.php', 'blog_admin.gif', 1, 2, 'courseadmin'),
(21, 'course_maintenance', 'course_info/maintenance.php', 'backup.gif', 2, 3, 'courseadmin'),
(22, 'survey', 'survey/survey_list.php', 'survey.gif', 2, 1, 'basic'),
(23, 'wiki', 'wiki/index.php', 'wiki.gif', 2, 3, 'basic'),
(24, 'gradebook', 'gradebook/index.php', 'gradebook.gif', 2, 2, 'basic'),
(25, 'glossary', 'glossary/index.php', 'glossary.gif', 2, 1, 'basic'),
(26, 'notebook', 'notebook/index.php', 'notebook.gif', 2, 1, 'basic'),
(27, 'attendance', 'attendance/index.php', 'attendance.gif', 2, 1, 'basic'),
(28, 'course_progress', 'course_progress/index.php', 'course_progress.gif', 2, 1, 'basic');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course_rel_class`
--

CREATE TABLE `course_rel_class` (
  `course_code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course_rel_user`
--

CREATE TABLE `course_rel_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `relation_type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `is_tutor` tinyint(1) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `user_course_cat` int(11) DEFAULT NULL,
  `legal_agreement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `course_rel_user`
--

INSERT INTO `course_rel_user` (`id`, `user_id`, `c_id`, `relation_type`, `status`, `is_tutor`, `sort`, `user_course_cat`, `legal_agreement`) VALUES
(1, 1, 1, 0, 1, 0, 1, 0, NULL),
(2, 3, 1, 0, 5, NULL, 1, 0, NULL),
(3, 4, 1, 0, 1, NULL, 1, 0, NULL),
(4, 5, 1, 0, 5, NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course_rel_user_catalogue`
--

CREATE TABLE `course_rel_user_catalogue` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `visible` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course_request`
--

CREATE TABLE `course_request` (
  `id` int(11) NOT NULL,
  `code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `directory` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `db_name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_language` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `category_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tutor_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visual_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `request_date` datetime NOT NULL,
  `objetives` longtext COLLATE utf8_unicode_ci,
  `target_audience` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `info` int(11) NOT NULL,
  `exemplary_content` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course_type`
--

CREATE TABLE `course_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `translation_var` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `props` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `course_type`
--

INSERT INTO `course_type` (`id`, `name`, `translation_var`, `description`, `props`) VALUES
(1, 'All tools', NULL, NULL, NULL),
(2, 'Entry exam', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_announcement`
--

CREATE TABLE `c_announcement` (
  `iid` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `c_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `end_date` date DEFAULT NULL,
  `display_order` int(11) NOT NULL,
  `email_sent` tinyint(1) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_announcement`
--

INSERT INTO `c_announcement` (`iid`, `id`, `c_id`, `title`, `content`, `end_date`, `display_order`, `email_sent`, `session_id`) VALUES
(1, 1, 1, 'Revisión de proyectos E-Learning', '', '2016-11-25', 1, NULL, 0),
(2, 2, 1, 'Revisión de proyectos E-Learning ', '', '2016-11-24', 2, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_announcement_attachment`
--

CREATE TABLE `c_announcement_attachment` (
  `iid` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `c_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `size` int(11) NOT NULL,
  `announcement_id` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_attendance`
--

CREATE TABLE `c_attendance` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `active` tinyint(1) NOT NULL,
  `attendance_qualify_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attendance_qualify_max` int(11) NOT NULL,
  `attendance_weight` double NOT NULL,
  `session_id` int(11) NOT NULL,
  `locked` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_attendance`
--

INSERT INTO `c_attendance` (`iid`, `c_id`, `id`, `name`, `description`, `active`, `attendance_qualify_title`, `attendance_qualify_max`, `attendance_weight`, `session_id`, `locked`) VALUES
(1, 1, 1, 'Asistencia', 'Asistencia', 1, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_attendance_calendar`
--

CREATE TABLE `c_attendance_calendar` (
  `iid` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `c_id` int(11) NOT NULL,
  `attendance_id` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `done_attendance` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_attendance_calendar`
--

INSERT INTO `c_attendance_calendar` (`iid`, `id`, `c_id`, `attendance_id`, `date_time`, `done_attendance`) VALUES
(1, 1, 1, 1, '2016-11-11 17:33:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_attendance_calendar_rel_group`
--

CREATE TABLE `c_attendance_calendar_rel_group` (
  `iid` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `c_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `calendar_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_attendance_result`
--

CREATE TABLE `c_attendance_result` (
  `iid` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `c_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `attendance_id` int(11) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_attendance_sheet`
--

CREATE TABLE `c_attendance_sheet` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `presence` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `attendance_calendar_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_attendance_sheet_log`
--

CREATE TABLE `c_attendance_sheet_log` (
  `iid` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `c_id` int(11) NOT NULL,
  `attendance_id` int(11) NOT NULL,
  `lastedit_date` datetime NOT NULL,
  `lastedit_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `lastedit_user_id` int(11) NOT NULL,
  `calendar_date_value` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_blog`
--

CREATE TABLE `c_blog` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `blog_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `blog_subtitle` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  `session_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_blog_attachment`
--

CREATE TABLE `c_blog_attachment` (
  `iid` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `c_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `size` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `blog_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_blog_comment`
--

CREATE TABLE `c_blog_comment` (
  `iid` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `date_creation` datetime NOT NULL,
  `blog_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `parent_comment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_blog_post`
--

CREATE TABLE `c_blog_post` (
  `iid` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `full_text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date_creation` datetime NOT NULL,
  `author_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_blog_rating`
--

CREATE TABLE `c_blog_rating` (
  `iid` int(11) NOT NULL,
  `rating_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `rating_type` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_blog_rel_user`
--

CREATE TABLE `c_blog_rel_user` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_blog_task`
--

CREATE TABLE `c_blog_task` (
  `iid` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `system_task` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_blog_task_rel_user`
--

CREATE TABLE `c_blog_task_rel_user` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `target_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_calendar_event`
--

CREATE TABLE `c_calendar_event` (
  `iid` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `c_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `parent_event_id` int(11) DEFAULT NULL,
  `session_id` int(11) NOT NULL,
  `all_day` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `color` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_calendar_event`
--

INSERT INTO `c_calendar_event` (`iid`, `room_id`, `id`, `c_id`, `title`, `content`, `start_date`, `end_date`, `parent_event_id`, `session_id`, `all_day`, `comment`, `color`) VALUES
(1, NULL, 1, 1, 'Revisión de proyectos E-Learning ', '', '2016-11-24 19:14:00', '2016-11-24 19:14:00', NULL, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_calendar_event_attachment`
--

CREATE TABLE `c_calendar_event_attachment` (
  `iid` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `c_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `size` int(11) NOT NULL,
  `agenda_id` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_calendar_event_repeat`
--

CREATE TABLE `c_calendar_event_repeat` (
  `iid` int(11) NOT NULL,
  `cal_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `cal_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cal_end` int(11) DEFAULT NULL,
  `cal_frequency` int(11) DEFAULT NULL,
  `cal_days` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_calendar_event_repeat_not`
--

CREATE TABLE `c_calendar_event_repeat_not` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `cal_id` int(11) NOT NULL,
  `cal_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_chat_connected`
--

CREATE TABLE `c_chat_connected` (
  `iid` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `c_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `to_group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_connection` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_course_description`
--

CREATE TABLE `c_course_description` (
  `iid` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `c_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `session_id` int(11) DEFAULT NULL,
  `description_type` int(11) NOT NULL,
  `progress` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_course_description`
--

INSERT INTO `c_course_description` (`iid`, `id`, `c_id`, `title`, `content`, `session_id`, `description_type`, `progress`) VALUES
(1, 1, 1, 'Técnico en Informática', '<p style="text-align: justify;">La carrera tiene como objetivo brindar una correcta formaci&oacute;n te&oacute;rico-pr&aacute;ctica en el &aacute;rea de Tecnolog&iacute;as de la Informaci&oacute;n de forma tal de lograr una r&aacute;pida inserci&oacute;n en el mercado laboral, as&iacute; como proporcionar las bases que permitan al egresado acompa&ntilde;ar los cambios permanentes propios del &aacute;rea, incluyendo la identificaci&oacute;n de problemas, el dise&ntilde;o de soluciones factibles, la evaluaci&oacute;n y selecci&oacute;n de soluciones y la implantaci&oacute;n empleando tecnolog&iacute;as de actualidad.</p>\r\n\r\n<p style="text-align: justify;">El T&eacute;cnico en Inform&aacute;tica es capaz de desempe&ntilde;arse en tareas de producci&oacute;n, dise&ntilde;o y mantenimiento de software en diversos tipos de proyectos de Sistemas de Informaci&oacute;n.</p>\r\n\r\n<p style="text-align: justify;">Colabora en el estudio de los problemas y las necesidades presentes en una empresa para determinar en qu&eacute; medida los Sistemas de Informaci&oacute;n pueden darle soluciones integrales a los mismos. Puede participar en equipos de trabajo interdisciplinarios, y empresas Pymes en el &aacute;rea de las Tecnolog&iacute;as de la Informaci&oacute;n.</p>\r\n', 0, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_course_setting`
--

CREATE TABLE `c_course_setting` (
  `iid` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `c_id` int(11) NOT NULL,
  `variable` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subkey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subkeytext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_course_setting`
--

INSERT INTO `c_course_setting` (`iid`, `id`, `c_id`, `variable`, `subkey`, `type`, `category`, `value`, `title`, `comment`, `subkeytext`) VALUES
(1, 1, 1, 'email_alert_manager_on_new_doc', NULL, NULL, 'work', '0', '', NULL, NULL),
(2, 2, 1, 'email_alert_on_new_doc_dropbox', NULL, NULL, 'dropbox', '0', '', NULL, NULL),
(3, 3, 1, 'allow_user_edit_agenda', NULL, NULL, 'agenda', '0', '', NULL, NULL),
(4, 4, 1, 'allow_user_edit_announcement', NULL, NULL, 'announcement', '0', '', NULL, NULL),
(5, 5, 1, 'email_alert_manager_on_new_quiz', NULL, NULL, 'quiz', '1', '', NULL, NULL),
(6, 6, 1, 'allow_user_image_forum', NULL, NULL, 'forum', '1', '', NULL, NULL),
(7, 7, 1, 'course_theme', NULL, NULL, 'theme', '', '', NULL, NULL),
(8, 8, 1, 'allow_learning_path_theme', NULL, NULL, 'theme', '1', '', NULL, NULL),
(9, 9, 1, 'allow_open_chat_window', NULL, NULL, 'chat', '1', '', NULL, NULL),
(10, 10, 1, 'email_alert_to_teacher_on_new_user_in_course', NULL, NULL, 'registration', '0', '', NULL, NULL),
(11, 11, 1, 'allow_user_view_user_list', NULL, NULL, 'user', '1', '', NULL, NULL),
(12, 12, 1, 'display_info_advance_inside_homecourse', NULL, NULL, 'thematic_advance', '1', '', NULL, NULL),
(13, 13, 1, 'email_alert_students_on_new_homework', NULL, NULL, 'work', '0', '', NULL, NULL),
(14, 14, 1, 'enable_lp_auto_launch', NULL, NULL, 'learning_path', '0', '', NULL, NULL),
(15, 15, 1, 'pdf_export_watermark_text', NULL, NULL, 'learning_path', NULL, '', NULL, NULL),
(16, 16, 1, 'allow_public_certificates', NULL, NULL, 'certificates', NULL, '', NULL, NULL),
(17, 17, 1, 'documents_default_visibility', NULL, NULL, 'document', NULL, '', NULL, NULL),
(18, 18, 1, 'show_course_in_user_language', NULL, NULL, '', '2', '', NULL, NULL),
(19, NULL, 1, 'big_blue_button_record_and_store', 'bbb', 'checkbox', 'plugins', '1', '', NULL, NULL),
(20, NULL, 1, 'bbb_enable_conference_in_groups', 'bbb', 'checkbox', 'plugins', '1', '', NULL, NULL),
(21, NULL, 1, 'show_system_folders', NULL, NULL, NULL, NULL, 'show_system_folders', NULL, NULL),
(22, NULL, 1, 'exercise_invisible_in_session', NULL, NULL, NULL, NULL, 'exercise_invisible_in_session', NULL, NULL),
(23, NULL, 1, 'enable_forum_auto_launch', NULL, NULL, NULL, NULL, 'enable_forum_auto_launch', NULL, NULL),
(24, NULL, 1, 'lp_return_link', NULL, NULL, NULL, NULL, 'lp_return_link', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_document`
--

CREATE TABLE `c_document` (
  `iid` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `c_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filetype` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `readonly` tinyint(1) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_document`
--

INSERT INTO `c_document` (`iid`, `id`, `c_id`, `path`, `comment`, `title`, `filetype`, `size`, `readonly`, `session_id`) VALUES
(1, 1, 1, '/shared_folder', NULL, 'Carpetas de los usuarios', 'folder', 0, 0, 0),
(2, 2, 1, '/chat_files', NULL, 'Historial de conversaciones en el chat', 'folder', 0, 0, 0),
(3, 3, 1, '/chat_files/messages-2016-11-11.log.html', NULL, 'messages-2016-11-11.log.html', 'file', 3221, 0, 0),
(4, 4, 1, '/learning_path', NULL, 'Lecciones', 'folder', 0, 0, 0),
(5, 5, 1, '/learning_path/Leccion-1', NULL, 'Lección 1', 'folder', 0, 0, 0),
(6, 6, 1, '/shared_folder/sf_user_1', NULL, 'RODRIGUEZ VILLAR, NEISER', 'folder', 0, 0, 0),
(7, 7, 1, '/learning_path/Leccion-1/Video-1-Elaboracion-de-textos.html', '', 'Video 1: Elaboración de textos', 'file', 344, 0, 0),
(8, 8, 1, '/learning_path/Leccion-1/Video-3-Elaboracion-de-documentos-Curriculum.html', '', 'Video 3: Elaboración de documentos: Currículum', 'file', 344, 0, 0),
(9, 9, 1, '/learning_path/Leccion-1/Video-2-Correccion-ortografica-de-textos.html', '', 'Video 2: Corrección ortográfica de textos', 'file', 214, 0, 0),
(10, 10, 1, '/learning_path/Leccion-1/Video-4-Elaboracion-de-documentos-Redaccion-de-citas-y-bibliografia.html', '', 'Video 4: Elaboración de documentos: Redacción de citas y bibliografía', 'file', 214, 0, 0),
(11, 11, 1, '/learning_path/Leccion-1/Actividad-1-Elaboracion-de-documentos.html', '', 'Actividad 1: Elaboración de documentos', 'file', 214, 0, 0),
(12, 12, 1, '/bxxmi0mgv.pdf', NULL, 'bxxmi0mgv.pdf', 'file', 508949, 0, 0),
(13, 13, 1, '/learning_path/Leccion-2', NULL, 'Lección 2', 'folder', 0, 0, 0),
(14, 14, 1, '/learning_path/Leccion-2/Video-1-Elaboracion-de-presentaciones.html', '', 'Video 1: Elaboración de presentaciones', 'file', 214, 0, 0),
(15, 15, 1, '/learning_path/Leccion-2/Video-2-Mejorando-la-presentacion-con-elementos-de-mercadotecnia.html', '', 'Video 2: Mejorando la presentación con elementos de mercadotecnia', 'file', 214, 0, 0),
(16, 16, 1, '/learning_path/Leccion-2/Video-3-Mejorando-la-presentacion-con-elementos-de-diseno-grafico.html', '', 'Video 3: Mejorando la presentación con elementos de diseño gráfico', 'file', 214, 0, 0),
(17, 17, 1, '/learning_path/Leccion-2/Actividad-1-Elaboracion-de-presentaciones.html', '', 'Actividad 1: Elaboración de presentaciones', 'file', 214, 0, 0),
(18, 18, 1, '/learning_path/Leccion-3', NULL, 'Lección 3', 'folder', 0, 0, 0),
(19, 19, 1, '/learning_path/Leccion-3/Video-1-Publicacion-en-redes-sociales.html', '', 'Video 1: Publicación en redes sociales', 'file', 214, 0, 0),
(20, 20, 1, '/learning_path/Leccion-3/Video-2-Busqueda-de-informacion-en-la-red-para-la-solucion-de-problemas-cotidianos.html', '', 'Video 2: Búsqueda de información en la red para la solución de problemas cotidianos', 'file', 214, 0, 0),
(21, 21, 1, '/learning_path/Leccion-3/Actividad-1-Manejo-de-internet.html', '', 'Actividad 1: Manejo de internet', 'file', 214, 0, 0),
(22, 22, 1, '/learning_path/Leccion-1-1', NULL, 'Lección 1 - 1', 'folder', 0, 0, 0),
(23, 23, 1, '/learning_path/Leccion-1-1/Video-1-Nivel-2.html', '', 'Video 1 - Nivel 2', 'file', 214, 0, 0),
(24, 24, 1, '/mi3dPDPReBQ.mp4', NULL, 'mi3dPDPReBQ.mp4', 'file', 10225311, 0, 0),
(25, 25, 1, '/certificates', NULL, 'Certificados', 'folder', 0, 0, 0),
(26, 26, 1, '/shared_folder/sf_user_3', NULL, 'Alvares Soria, Carmen', 'folder', 0, 0, 0),
(27, 27, 1, '/certificates/Certificado-predeterminado.html', '', 'Certificado predeterminado', 'file', 1696, 0, 0),
(28, 28, 1, '/learning_path/Leccion-1/Video-2-Representacion-grafica-de-datos.html', '', 'Video 2: Representación gráfica de datos', 'file', 214, 0, 0),
(29, 29, 1, '/learning_path/Leccion-1/Video-3-Consolidacion-de-informacion-en-hojas-de-calculo.html', '', 'Video 3: Consolidación de información en hojas de cálculo', 'file', 214, 0, 0),
(30, 30, 1, '/learning_path/Leccion-1/Video-4-Elaboracion-y-uso-de-macros-y-plantillas-de-hojas-de-calculo.html', '', 'Video 4: Elaboración y uso de macros y plantillas de hojas de cálculo', 'file', 214, 0, 0),
(31, 31, 1, '/learning_path/Leccion-1/Actividad-1-Hoja-de-calculo.html', '', 'Actividad 1: Hoja de cálculo', 'file', 214, 0, 0),
(32, 32, 1, '/learning_path/Leccion-2-1', NULL, 'Lección 2 - 1', 'folder', 0, 0, 0),
(33, 33, 1, '/learning_path/Leccion-2-1/Video-1-Conceptos-de-audio-digital.html', '', 'Video 1: Conceptos de audio digital', 'file', 214, 0, 0),
(34, 34, 1, '/learning_path/Leccion-2-1/Video-2-Eliminacion-de-ruido.html', '', 'Video 2: Eliminación de ruido', 'file', 214, 0, 0),
(35, 35, 1, '/learning_path/Leccion-2-1/Video-3-Edicion-de-video.html', '', 'Video 3: Edición de video', 'file', 214, 0, 0),
(36, 36, 1, '/learning_path/Leccion-2-1/Actividad-1-Edicion-de-audio-y-video.html', '', 'Actividad 1: Edición de audio y video', 'file', 214, 0, 0),
(37, 37, 1, '/learning_path/Leccion-3-1', NULL, 'Lección 3 - 1', 'folder', 0, 0, 0),
(38, 38, 1, '/learning_path/Leccion-3-1/Video-1-Conceptos-de-imagenes-digitales.html', '', 'Video 1: Conceptos de imágenes digitales', 'file', 214, 0, 0),
(39, 39, 1, '/learning_path/Leccion-3-1/Video-2-Edicion-de-imagenes-digitales.html', '', 'Video 2: Edición de imágenes digitales', 'file', 214, 0, 0),
(40, 40, 1, '/learning_path/Leccion-3-1/Video-3-Diseno-de-graficos-3D.html', '', 'Video 3: Diseño de gráficos 3D', 'file', 214, 0, 0),
(41, 41, 1, '/learning_path/Leccion-3-1/Video-4-CAD-1-Usos-y-conceptos.html', '', 'Video 4: CAD 1: Usos y conceptos', 'file', 214, 0, 0),
(42, 42, 1, '/learning_path/Leccion-3-1/Video-5-Escalas.html', '', 'Video 5: Escalas', 'file', 214, 0, 0),
(43, 43, 1, '/learning_path/Leccion-3-1/Actividad-1-Edicion-de-imagenes-digitales-e-imagenes-3D.html', '', 'Actividad 1: Edición de imágenes digitales e imágenes 3D', 'file', 214, 0, 0),
(44, 44, 1, '/learning_path/Leccion-4', NULL, 'Lección 4', 'folder', 0, 0, 0),
(45, 45, 1, '/learning_path/Leccion-4/Video-1-Que-son-los-lenguajes-de-programacion.html', '', 'Video 1: ¿Qué son los lenguajes de programación?', 'file', 214, 0, 0),
(46, 46, 1, '/learning_path/Leccion-4/Video-2-Que-son-las-bases-de-datos.html', '', 'Video 2: ¿Qué son las bases de datos?', 'file', 214, 0, 0),
(47, 47, 1, '/learning_path/Leccion-4/Video-3-Utilizacion-de-apps.html', '', 'Video 3: Utilización de apps', 'file', 214, 0, 0),
(48, 48, 1, '/learning_path/Leccion-4/Actividad-1-Que-son-los-lenguajes-de-programacion.html', '', 'Actividad 1: ¿Qué son los lenguajes de programación?', 'file', 214, 0, 0),
(49, 49, 1, '/learning_path/Leccion-4/Actividad-2-Utilizacion-de-las-apps.html', '', 'Actividad 2: Utilización de las apps', 'file', 214, 0, 0),
(50, 50, 1, '/bq4fh2psz.pdf', NULL, 'bq4fh2psz.pdf', 'file', 278351, 0, 0),
(51, 51, 1, '/32x2ot4ky.pdf', NULL, '32x2ot4ky.pdf', 'file', 280513, 0, 0),
(52, 52, 1, '/68j0i5xe5.pdf', NULL, '68j0i5xe5.pdf', 'file', 53457, 0, 0),
(53, 53, 1, '/chat_files/messages-2016-11-21.log.html', NULL, 'messages-2016-11-21.log.html', 'file', 652, 0, 0),
(54, 54, 1, '/learning_path/Leccion-1-N3', NULL, 'Lección 1 - N3', 'folder', 0, 0, 0),
(55, 55, 1, '/learning_path/Leccion-1-N3/Video-1-Descripcion-de-los-sistemas-operativos.html', '', 'Video 1: Descripción de los sistemas operativos', 'file', 214, 0, 0),
(56, 56, 1, '/learning_path/Leccion-1-N3/Video-2-Explotacion-de-recursos-de-la-computadora-con-el-sistema-operativo.html', '', 'Video 2: Explotación de recursos de la computadora con el sistema operativo', 'file', 214, 0, 0),
(57, 57, 1, '/learning_path/Leccion-1-N3/Video-3-Respaldo-de-informacion.html', '', 'Video 3: Respaldo de información', 'file', 214, 0, 0),
(58, 58, 1, '/learning_path/Leccion-1-N3/Video-4-Recuperacion-de-informacion-por-dano-en-disco-duro.html', '', 'Video 4: Recuperación de información por daño en disco duro', 'file', 214, 0, 0),
(59, 59, 1, '/learning_path/Leccion-1-N3/Video-5-Solucion-de-fallas-con-disco-de-arranque.html', '', 'Video 5: Solución de fallas con disco de arranque', 'file', 214, 0, 0),
(60, 60, 1, '/learning_path/Leccion-1-N3/Video-6-Solucion-de-fallas-por-virus.html', '', 'Video 6: Solución de fallas por virus', 'file', 214, 0, 0),
(61, 61, 1, '/learning_path/Leccion-1-N3/Video-7-Principios-de-funcionamiento-de-redes-locales.html', '', 'Video 7: Principios de funcionamiento de redes locales', 'file', 214, 0, 0),
(62, 62, 1, '/tsb9sbpxb.pdf', NULL, 'tsb9sbpxb.pdf', 'file', 213961, 0, 0),
(63, 63, 1, '/learning_path/Leccion-2-N3', NULL, 'Lección 2 - N3', 'folder', 0, 0, 0),
(64, 64, 1, '/learning_path/Leccion-2-N3/Video-1-Instalacion-de-dispositivos-de-redes-inalambricas-WLAN.html', '', 'Video 1: Instalación de dispositivos de redes inalámbricas (WLAN)', 'file', 214, 0, 0),
(65, 65, 1, '/learning_path/Leccion-2-N3/Video-2-Configuracion-de-dispositivos-Wi-fi..html', '', 'Video 2: Configuración de dispositivos Wi-fi.', 'file', 214, 0, 0),
(66, 66, 1, '/learning_path/Leccion-2-N3/Video-3-Aplicacion-de-mecanismos-de-seguridad-en-redes-inalambricas.html', '', 'Video 3: Aplicación de mecanismos de seguridad en redes inalámbricas', 'file', 214, 0, 0),
(67, 67, 1, '/0vic3rolr.pdf', NULL, '0vic3rolr.pdf', 'file', 346823, 0, 0),
(68, 68, 1, '/learning_path/Leccion-1-N4', NULL, 'Lección 1 - N4', 'folder', 0, 0, 0),
(69, 69, 1, '/learning_path/Leccion-1-N4/Video-1-Sustentabilidad.html', '', 'Video 1: Sustentabilidad', 'file', 214, 0, 0),
(70, 70, 1, '/learning_path/Leccion-1-N4/Video-2-Beneficios-de-la-puesta-tierra-para-los-sistemas-computacionales.html', '', 'Video 2: Beneficios de la puesta a tierra para los sistemas computacionales', 'file', 214, 0, 0),
(71, 71, 1, '/learning_path/Leccion-1-N4/Video-3-Implementacion-de-aplicaciones-de-nube.html', '', 'Video 3: Implementación de aplicaciones de nube', 'file', 214, 0, 0),
(72, 72, 1, '/asnni9l9c.pdf', NULL, 'asnni9l9c.pdf', 'file', 63176, 0, 0),
(73, 73, 1, '/learning_path/Leccion-1-N1', NULL, 'Lección 1 - N1', 'folder', 0, 0, 0),
(74, 74, 1, '/learning_path/Leccion-2-N1', NULL, 'Lección 2 - N1', 'folder', 0, 0, 0),
(75, 75, 1, '/learning_path/Leccion-3-N1', NULL, 'Lección 3 - N1', 'folder', 0, 0, 0),
(76, 76, 1, '/learning_path/Leccion-1-N2', NULL, 'Lección 1 - N2', 'folder', 0, 0, 0),
(77, 77, 1, '/learning_path/Leccion-2-N2', NULL, 'Lección 2  - N2', 'folder', 0, 0, 0),
(78, 78, 1, '/learning_path/Leccion-3-N2', NULL, 'Lección 3 - N2', 'folder', 0, 0, 0),
(79, 79, 1, '/learning_path/Leccion-4-N2', NULL, 'Lección 4 - N2', 'folder', 0, 0, 0),
(80, 80, 1, 'CERTIFICADO-CURSO-FINALIZADO.html', '', 'CERTIFICADO - CURSO FINALIZADO', 'file', 213, 0, 0),
(81, 81, 1, '/VIDEOS-CURSOS', NULL, 'VIDEOS CURSOS', 'folder', 0, 0, 0),
(82, 82, 1, '/VIDEOS-CURSOS/Beneficios-de-la-puesta-tierra-para-los-sistemas-computacionales.mp4', NULL, 'Beneficios de la puesta a tierra para los sistemas computacionales.mp4', 'file', 10013904, 0, 0),
(83, 83, 1, '/VIDEOS-CURSOS/Correccion-ortografica-de-textos-YouTube.MKV', NULL, 'Corrección ortográfica de textos - YouTube.MKV', 'file', 9187576, 0, 0),
(84, 84, 1, '/VIDEOS-CURSOS/Edicion-de-imagenes-digitales.mp4', NULL, 'Edición de imágenes digitales.mp4', 'file', 7688870, 0, 0),
(85, 85, 1, '/VIDEOS-CURSOS/Elaboracion-de-documentos-Redaccion-de-citas-y-bibliografia.mp4', NULL, 'Elaboración de documentos  Redacción de citas y bibliografía.mp4', 'file', 10162555, 0, 0),
(86, 86, 1, '/VIDEOS-CURSOS/Escalas.mp4', NULL, 'Escalas.mp4', 'file', 3907450, 0, 0),
(87, 87, 1, '/VIDEOS-CURSOS/Elaboracion-de-textos-YouTube.MKV', NULL, 'Elaboración de textos - YouTube.MKV', 'file', 7463960, 0, 0),
(88, 88, 1, '/VIDEOS-CURSOS/Explotacion-de-recursos-de-la-computadora-con-el-sistema-operativo.mp4', NULL, 'Explotación de recursos de la computadora con el sistema operativo.mp4', 'file', 9106322, 0, 0),
(89, 89, 1, '/VIDEOS-CURSOS/Sustentabilidad.mp4', NULL, 'Sustentabilidad.mp4', 'file', 5186639, 0, 0),
(90, 90, 1, '/VIDEOS-CURSOS/Representacion-grafica-de-datos.mp4', NULL, 'Representación gráfica de datos.mp4', 'file', 9096585, 0, 0),
(91, 91, 1, '/VIDEOS-CURSOS/Tecnico-en-informatica-Introduccion-YouTube.MKV', NULL, 'Técnico en informática- Introduccion - YouTube.MKV', 'file', 2917834, 0, 0),
(92, 92, 1, '/learning_path/EXAMEN-FINAL', NULL, 'EXAMEN FINAL', 'folder', 0, 0, 0),
(93, 93, 1, '/learning_path/EXAMEN-FINAL/adfgadfgsdfgs.html', '', 'adfgadfgsdfgs', 'file', 214, 0, 0),
(94, 94, 1, '/chat_files/messages-2016-11-25.log.html', NULL, 'messages-2016-11-25.log.html', 'file', 0, 0, 0),
(95, 95, 1, '/chat_files/messages-2016-11-25_uid-1-5.log.html', NULL, 'messages-2016-11-25_uid-1-5.log.html', 'file', 650, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_dropbox_category`
--

CREATE TABLE `c_dropbox_category` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `cat_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `received` tinyint(1) NOT NULL,
  `sent` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_dropbox_feedback`
--

CREATE TABLE `c_dropbox_feedback` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `feedback_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `author_user_id` int(11) NOT NULL,
  `feedback` longtext COLLATE utf8_unicode_ci NOT NULL,
  `feedback_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_dropbox_file`
--

CREATE TABLE `c_dropbox_file` (
  `iid` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `c_id` int(11) NOT NULL,
  `uploader_id` int(11) NOT NULL,
  `filename` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `filesize` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upload_date` datetime NOT NULL,
  `last_upload_date` datetime NOT NULL,
  `cat_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_dropbox_file`
--

INSERT INTO `c_dropbox_file` (`iid`, `id`, `c_id`, `uploader_id`, `filename`, `filesize`, `title`, `description`, `author`, `upload_date`, `last_upload_date`, `cat_id`, `session_id`) VALUES
(1, 1, 1, 1, 'n3153r_5_9.jpg_58378ba444ca9', 93853, '5_9.jpg', '', '1', '2016-11-25 00:53:56', '2016-11-25 00:53:56', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_dropbox_person`
--

CREATE TABLE `c_dropbox_person` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_dropbox_person`
--

INSERT INTO `c_dropbox_person` (`iid`, `c_id`, `file_id`, `user_id`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_dropbox_post`
--

CREATE TABLE `c_dropbox_post` (
  `iid` int(11) NOT NULL,
  `feedback_date` datetime NOT NULL,
  `feedback` longtext COLLATE utf8_unicode_ci,
  `cat_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `dest_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_dropbox_post`
--

INSERT INTO `c_dropbox_post` (`iid`, `feedback_date`, `feedback`, `cat_id`, `session_id`, `c_id`, `file_id`, `dest_user_id`) VALUES
(1, '2016-11-25 00:53:56', NULL, 0, 0, 1, 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_forum_attachment`
--

CREATE TABLE `c_forum_attachment` (
  `iid` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `c_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `size` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_forum_category`
--

CREATE TABLE `c_forum_category` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `cat_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cat_comment` longtext COLLATE utf8_unicode_ci,
  `cat_order` int(11) NOT NULL,
  `locked` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_forum_forum`
--

CREATE TABLE `c_forum_forum` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `forum_id` int(11) NOT NULL,
  `forum_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `forum_comment` longtext COLLATE utf8_unicode_ci,
  `forum_threads` int(11) DEFAULT NULL,
  `forum_posts` int(11) DEFAULT NULL,
  `forum_last_post` int(11) DEFAULT NULL,
  `forum_category` int(11) DEFAULT NULL,
  `allow_anonymous` int(11) DEFAULT NULL,
  `allow_edit` int(11) DEFAULT NULL,
  `approval_direct_post` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allow_attachments` int(11) DEFAULT NULL,
  `allow_new_threads` int(11) DEFAULT NULL,
  `default_view` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forum_of_group` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forum_group_public_private` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forum_order` int(11) DEFAULT NULL,
  `locked` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `forum_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `lp_id` int(10) UNSIGNED NOT NULL,
  `moderated` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_forum_mailcue`
--

CREATE TABLE `c_forum_mailcue` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `thread_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_forum_notification`
--

CREATE TABLE `c_forum_notification` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `forum_id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_forum_post`
--

CREATE TABLE `c_forum_post` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `post_title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_text` longtext COLLATE utf8_unicode_ci,
  `thread_id` int(11) DEFAULT NULL,
  `forum_id` int(11) DEFAULT NULL,
  `poster_id` int(11) DEFAULT NULL,
  `poster_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_date` datetime DEFAULT NULL,
  `post_notification` tinyint(1) DEFAULT NULL,
  `post_parent_id` int(11) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_forum_thread`
--

CREATE TABLE `c_forum_thread` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `thread_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forum_id` int(11) DEFAULT NULL,
  `thread_replies` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `thread_poster_id` int(11) DEFAULT NULL,
  `thread_poster_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thread_views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `thread_last_post` int(11) DEFAULT NULL,
  `thread_date` datetime DEFAULT NULL,
  `thread_sticky` tinyint(1) DEFAULT NULL,
  `locked` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `thread_title_qualify` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thread_qualify_max` double NOT NULL,
  `thread_close_date` datetime DEFAULT NULL,
  `thread_weight` double NOT NULL,
  `thread_peer_qualify` tinyint(1) NOT NULL,
  `lp_item_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_forum_thread_qualify`
--

CREATE TABLE `c_forum_thread_qualify` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `qualify` double NOT NULL,
  `qualify_user_id` int(11) DEFAULT NULL,
  `qualify_time` datetime DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_forum_thread_qualify_log`
--

CREATE TABLE `c_forum_thread_qualify_log` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `qualify` double NOT NULL,
  `qualify_user_id` int(11) DEFAULT NULL,
  `qualify_time` datetime DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_glossary`
--

CREATE TABLE `c_glossary` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `glossary_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `display_order` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_glossary`
--

INSERT INTO `c_glossary` (`iid`, `c_id`, `glossary_id`, `name`, `description`, `display_order`, `session_id`) VALUES
(1, 1, 1, 'assembler', 'ensamblador', 1, 0),
(2, 1, 2, 'automatic shutdown', 'cierre autom?tico', 2, 0),
(3, 1, 3, 'background', 'fondo', 3, 0),
(4, 1, 4, 'background program', 'programa subordinado, programa ejecut?ndose?', 4, 0),
(5, 1, 5, '', 'procesarlo en el futuro)', 5, 0),
(6, 1, 6, 'backup', 'copia de seguridad', 6, 0),
(7, 1, 7, 'batch job', 'trabajo en serie, trabajo por lotes', 7, 0),
(8, 1, 8, 'bookmarks', 'favoritos', 8, 0),
(9, 1, 9, '(to) boot', 'iniciar', 9, 0),
(10, 1, 10, 'buffer', 'registro intermedio', 10, 0),
(11, 1, 11, 'bug', 'error de programaci?n o compilaci?n', 11, 0),
(12, 1, 12, 'byte', 'byte (8 bits), octeto', 12, 0),
(13, 1, 13, 'kilobyte, megabye, gigabyte, terabyte', '1024 bytes (kilobyte), 1024 kilobytes (megabyte),', 13, 0),
(14, 1, 14, 'chat', 'chatear, conversar, charlar (v?a Internet, relay chat)', 14, 0),
(15, 1, 15, 'click', 'hacer un click', 15, 0),
(16, 1, 16, 'clear', 'borrar, despejar, limpiar la pantalla', 16, 0),
(17, 1, 17, 'clipboard', 'portapapeles', 17, 0),
(18, 1, 18, 'command', 'comando, mandato, orden', 18, 0),
(19, 1, 19, '(to) compile', 'compilar', 19, 0),
(20, 1, 20, 'compiler', 'compilador', 20, 0),
(21, 1, 21, 'conflguration', 'configuraci?n', 21, 0),
(22, 1, 22, 'control panel', 'panel de control', 22, 0),
(23, 1, 23, '(to) debug', 'depurar, limpiar, corregir errores', 23, 0),
(24, 1, 24, 'delete', 'borrar, suprimir', 24, 0),
(25, 1, 25, 'directory', 'directorio', 25, 0),
(26, 1, 26, 'disk drive', 'unidad de discos', 26, 0),
(27, 1, 27, 'disk driver', 'disquetera', 27, 0),
(28, 1, 28, 'disk, disc', 'disco', 28, 0),
(29, 1, 29, 'diskette', 'disco flexible', 29, 0),
(30, 1, 30, 'display', 'visual, pantalla', 30, 0),
(31, 1, 31, 'done', 'hecho, terminado', 31, 0),
(32, 1, 32, 'drag and drop', 'arrastrar y soltar?', 32, 0),
(33, 1, 33, 'exit', 'salida, salir', 33, 0),
(34, 1, 34, 'file', 'archivo, fichero', 34, 0),
(35, 1, 35, 'firewall', 'firewall', 35, 0),
(36, 1, 36, 'floppy disk', 'disco flexible', 36, 0),
(37, 1, 37, 'folder', 'carpeta', 37, 0),
(38, 1, 38, 'foreground', 'primer plano, por encima', 38, 0),
(39, 1, 39, 'format', 'formatear, dar formato', 39, 0),
(40, 1, 40, 'gate', 'puerta', 40, 0),
(41, 1, 41, 'gateway', 'puerta, p?rtico', 41, 0),
(42, 1, 42, 'hacker', 'experto en burlar seguridad inform?tica', 42, 0),
(43, 1, 43, 'halt', 'parada', 43, 0),
(44, 1, 44, 'hard disk', 'disco r?gido', 44, 0),
(45, 1, 45, 'hard drive', 'disco duro (de memoria)', 45, 0),
(46, 1, 46, 'hardware', 'equipo f?sico', 46, 0),
(47, 1, 47, 'header', 'cabecera', 47, 0),
(48, 1, 48, 'home page, homepage', 'p?gina de inicio, p?gina (web) principal', 48, 0),
(49, 1, 49, 'icon', 'icono', 49, 0),
(50, 1, 50, 'initialize', 'inicializar', 50, 0),
(51, 1, 51, 'input', 'ingresar', 51, 0),
(52, 1, 52, 'interface', 'interfase', 52, 0),
(53, 1, 53, 'job', 'trabajo', 53, 0),
(54, 1, 54, 'keyboard', 'teclado', 54, 0),
(55, 1, 55, 'wireless keyboard', 'teclado inal?mbrico', 55, 0),
(56, 1, 56, 'keyword', 'palabra clave', 56, 0),
(57, 1, 57, 'laptop (computer)', 'ordenador port?til', 57, 0),
(58, 1, 58, 'load', 'cargar', 58, 0),
(59, 1, 59, 'log', 'registrar, fichero de datos', 59, 0),
(60, 1, 60, 'loop', 'bucle', 60, 0),
(61, 1, 61, 'malware', 'malware, c?digo/software malicioso', 61, 0),
(62, 1, 62, 'memory', 'memoria', 62, 0),
(63, 1, 63, 'RAM memory', 'memoria RAM', 63, 0),
(64, 1, 64, 'ROM memory', 'memoria ROM', 64, 0),
(65, 1, 65, 'monitor', 'monitor, consola', 65, 0),
(66, 1, 66, 'mount the filesystem', 'montar el sistema de archivos', 66, 0),
(67, 1, 67, 'mouse', 'rat?n', 67, 0),
(68, 1, 68, 'output', 'salir', 68, 0),
(69, 1, 69, 'overflow', 'desbordamiento', 69, 0),
(70, 1, 70, 'password', 'clave secreta, contrase?a', 70, 0),
(71, 1, 71, 'PC, personal computer', 'PC, ordenador personal', 71, 0),
(72, 1, 72, 'desktop computer', 'ordenador de escritorio, sobremesa', 72, 0),
(73, 1, 73, 'port', 'puerto, salida', 73, 0),
(74, 1, 74, 'power cable', 'cable de energ?a', 74, 0),
(75, 1, 75, '(to) print', 'imprimir', 75, 0),
(76, 1, 76, 'processor', 'procesador', 76, 0),
(77, 1, 77, 'prompt', 'gu?a, s?mbolo de la l?nea de comandos', 77, 0),
(78, 1, 78, '(to) quit', 'salir', 78, 0),
(79, 1, 79, '(to) reboot', 'reiniciar, reanudar', 79, 0),
(80, 1, 80, '(to) release', 'libertar, soltar', 80, 0),
(81, 1, 81, '(to) reset', 'restablecer, reiniciar', 81, 0),
(82, 1, 82, '(to) restart', 'reanudar', 82, 0),
(83, 1, 83, 'route', 'ruta', 83, 0),
(84, 1, 84, '(to) run', 'ejecutar', 84, 0),
(85, 1, 85, '(to) scan', 'escanear, explorar', 85, 0),
(86, 1, 86, 'screen', 'pantalla', 86, 0),
(87, 1, 87, 'search engine', 'motor de b?squeda, buscador', 87, 0),
(88, 1, 88, 'server', 'servidor', 88, 0),
(89, 1, 89, 'setup', 'alistar, preparar', 89, 0),
(90, 1, 90, 'shutdown', 'cerrar, apagar el sistema', 90, 0),
(91, 1, 91, 'software', 'software (programas)', 91, 0),
(92, 1, 92, 'spool', 'rebobinar,?enviar un trabajo a la memoria?', 92, 0),
(93, 1, 93, 'spreadsheet', 'hoja de c?lculo', 93, 0),
(94, 1, 94, 'spyware', 'spyware, software/programa esp?a', 94, 0),
(95, 1, 95, 'startup', 'inicializador', 95, 0),
(96, 1, 96, 'switch', 'conmutador', 96, 0),
(97, 1, 97, 'tableta', 'tablet', 97, 0),
(98, 1, 98, 'task', 'tarea', 98, 0),
(99, 1, 99, 'telnet', 'comunicarse v?a telnet', 99, 0),
(100, 1, 100, 'toolbar', 'barra de herramientas', 100, 0),
(101, 1, 101, 'trojan', 'troyano, c?digo malicioso', 101, 0),
(102, 1, 102, '(to) upgrade', 'actualizar', 102, 0),
(103, 1, 103, 'user name', 'nombre de usuario', 103, 0),
(104, 1, 104, 'virus', 'virus', 104, 0),
(105, 1, 105, 'anti-virus', 'antivirus', 105, 0),
(106, 1, 106, 'webcam', 'webcam', 106, 0),
(107, 1, 107, 'window', 'ventana de informaci?n', 107, 0),
(108, 1, 108, 'wireless', 'inal?mbrico', 108, 0),
(109, 1, 109, 'word processor', 'procesador de texto', 109, 0),
(110, 1, 110, 'workstation', 'estaci?n de trabajo', 110, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_group_category`
--

CREATE TABLE `c_group_category` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `doc_state` tinyint(1) NOT NULL,
  `calendar_state` tinyint(1) NOT NULL,
  `work_state` tinyint(1) NOT NULL,
  `announcements_state` tinyint(1) NOT NULL,
  `forum_state` tinyint(1) NOT NULL,
  `wiki_state` tinyint(1) NOT NULL,
  `chat_state` tinyint(1) NOT NULL,
  `max_student` int(11) NOT NULL,
  `self_reg_allowed` tinyint(1) NOT NULL,
  `self_unreg_allowed` tinyint(1) NOT NULL,
  `groups_per_user` int(11) NOT NULL,
  `display_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_group_category`
--

INSERT INTO `c_group_category` (`iid`, `c_id`, `id`, `title`, `description`, `doc_state`, `calendar_state`, `work_state`, `announcements_state`, `forum_state`, `wiki_state`, `chat_state`, `max_student`, `self_reg_allowed`, `self_unreg_allowed`, `groups_per_user`, `display_order`) VALUES
(1, 1, 2, 'Grupos por defecto', '', 1, 1, 1, 1, 1, 1, 1, 8, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_group_info`
--

CREATE TABLE `c_group_info` (
  `iid` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `c_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `max_student` int(11) NOT NULL,
  `doc_state` tinyint(1) NOT NULL,
  `calendar_state` tinyint(1) NOT NULL,
  `work_state` tinyint(1) NOT NULL,
  `announcements_state` tinyint(1) NOT NULL,
  `forum_state` tinyint(1) NOT NULL,
  `wiki_state` tinyint(1) NOT NULL,
  `chat_state` tinyint(1) NOT NULL,
  `secret_directory` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `self_registration_allowed` tinyint(1) NOT NULL,
  `self_unregistration_allowed` tinyint(1) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_group_rel_tutor`
--

CREATE TABLE `c_group_rel_tutor` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_group_rel_user`
--

CREATE TABLE `c_group_rel_user` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_item_property`
--

CREATE TABLE `c_item_property` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) DEFAULT NULL,
  `to_group_id` int(11) DEFAULT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `insert_user_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `tool` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `insert_date` datetime NOT NULL,
  `lastedit_date` datetime NOT NULL,
  `ref` int(11) NOT NULL,
  `lastedit_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lastedit_user_id` int(11) NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  `start_visible` datetime DEFAULT NULL,
  `end_visible` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_item_property`
--

INSERT INTO `c_item_property` (`iid`, `c_id`, `to_group_id`, `to_user_id`, `insert_user_id`, `session_id`, `id`, `tool`, `insert_date`, `lastedit_date`, `ref`, `lastedit_type`, `lastedit_user_id`, `visibility`, `start_visible`, `end_visible`) VALUES
(1, 1, NULL, NULL, 1, NULL, 1, 'document', '2016-11-11 15:43:20', '2016-11-11 15:43:20', 1, 'DocumentAdded', 1, 0, NULL, NULL),
(2, 1, NULL, NULL, 1, NULL, 2, 'document', '2016-11-11 15:43:20', '2016-11-25 01:55:44', 2, 'DocumentInFolderUpdated', 1, 0, NULL, NULL),
(3, 1, NULL, NULL, 1, NULL, 3, 'document', '2016-11-11 15:48:54', '2016-11-11 15:48:55', 3, 'DocumentInvisible', 1, 0, NULL, NULL),
(4, 1, NULL, NULL, 1, NULL, 4, 'document', '2016-11-11 15:50:16', '2016-11-11 15:50:16', 4, 'FolderCreated', 1, 1, NULL, NULL),
(5, 1, NULL, NULL, 1, NULL, 5, 'learnpath', '2016-11-11 15:58:15', '2016-11-11 15:58:15', 1, 'LearnpathAdded', 1, 1, NULL, NULL),
(6, 1, NULL, NULL, 1, NULL, 6, 'document', '2016-11-11 15:58:18', '2016-11-11 15:58:18', 5, 'FolderCreated', 1, 1, NULL, NULL),
(7, 1, NULL, NULL, 1, NULL, 7, 'document', '2016-11-11 16:08:25', '2016-11-11 16:08:25', 6, 'DocumentVisible', 1, 1, NULL, NULL),
(8, 1, NULL, NULL, 1, NULL, 8, 'document', '2016-11-11 16:25:35', '2016-11-11 16:25:35', 7, 'DocumentAdded', 1, 1, NULL, NULL),
(9, 1, NULL, NULL, 1, NULL, 9, 'document', '2016-11-11 16:27:10', '2016-11-11 16:27:10', 8, 'DocumentAdded', 1, 1, NULL, NULL),
(10, 1, NULL, NULL, 1, NULL, 10, 'document', '2016-11-11 16:27:22', '2016-11-11 16:27:22', 9, 'DocumentAdded', 1, 1, NULL, NULL),
(11, 1, NULL, NULL, 1, NULL, 11, 'document', '2016-11-11 16:27:39', '2016-11-11 16:27:39', 10, 'DocumentAdded', 1, 1, NULL, NULL),
(12, 1, NULL, NULL, 1, NULL, 12, 'document', '2016-11-11 16:27:56', '2016-11-11 16:27:56', 11, 'DocumentAdded', 1, 1, NULL, NULL),
(13, 1, NULL, NULL, 1, NULL, 13, 'document', '2016-11-11 16:34:14', '2016-11-11 16:34:14', 12, 'DocumentVisible', 1, 1, NULL, NULL),
(14, 1, NULL, NULL, 1, NULL, 14, 'learnpath', '2016-11-11 16:36:50', '2016-11-11 16:36:50', 2, 'LearnpathAdded', 1, 1, NULL, NULL),
(15, 1, NULL, NULL, 1, NULL, 15, 'document', '2016-11-11 16:36:53', '2016-11-11 16:36:53', 13, 'FolderCreated', 1, 1, NULL, NULL),
(16, 1, NULL, NULL, 1, NULL, 16, 'document', '2016-11-11 16:37:11', '2016-11-11 16:37:12', 14, 'DocumentAdded', 1, 1, NULL, NULL),
(17, 1, NULL, NULL, 1, NULL, 17, 'document', '2016-11-11 16:37:19', '2016-11-11 16:37:20', 15, 'DocumentAdded', 1, 1, NULL, NULL),
(18, 1, NULL, NULL, 1, NULL, 18, 'document', '2016-11-11 16:37:27', '2016-11-11 16:37:27', 16, 'DocumentAdded', 1, 1, NULL, NULL),
(19, 1, NULL, NULL, 1, NULL, 19, 'document', '2016-11-11 16:37:36', '2016-11-11 16:37:36', 17, 'DocumentAdded', 1, 1, NULL, NULL),
(20, 1, NULL, NULL, 1, NULL, 20, 'learnpath', '2016-11-11 16:38:30', '2016-11-11 16:38:30', 3, 'LearnpathAdded', 1, 1, NULL, NULL),
(21, 1, NULL, NULL, 1, NULL, 21, 'document', '2016-11-11 16:38:32', '2016-11-11 16:38:32', 18, 'FolderCreated', 1, 1, NULL, NULL),
(22, 1, NULL, NULL, 1, NULL, 22, 'document', '2016-11-11 16:38:41', '2016-11-11 16:38:41', 19, 'DocumentAdded', 1, 1, NULL, NULL),
(23, 1, NULL, NULL, 1, NULL, 23, 'document', '2016-11-11 16:38:49', '2016-11-11 16:38:49', 20, 'DocumentAdded', 1, 1, NULL, NULL),
(24, 1, NULL, NULL, 1, NULL, 24, 'document', '2016-11-11 16:38:57', '2016-11-11 16:38:58', 21, 'DocumentAdded', 1, 1, NULL, NULL),
(25, 1, NULL, NULL, 1, NULL, 25, 'learnpath', '2016-11-11 16:46:53', '2016-11-11 16:46:53', 4, 'LearnpathAdded', 1, 1, NULL, NULL),
(26, 1, NULL, NULL, 1, NULL, 26, 'document', '2016-11-11 16:46:55', '2016-11-11 16:46:55', 22, 'FolderCreated', 1, 1, NULL, NULL),
(27, 1, NULL, NULL, 1, NULL, 27, 'document', '2016-11-11 16:47:41', '2016-11-11 16:47:42', 23, 'DocumentAdded', 1, 1, NULL, NULL),
(28, 1, NULL, NULL, 1, NULL, 28, 'document', '2016-11-11 17:07:38', '2016-11-11 17:07:38', 24, 'DocumentVisible', 1, 1, NULL, NULL),
(29, 1, NULL, NULL, 1, NULL, 29, 'document', '2016-11-11 17:11:26', '2016-11-25 01:35:41', 25, 'DocumentInFolderUpdated', 1, 0, NULL, NULL),
(30, 1, NULL, NULL, 3, NULL, 30, 'document', '2016-11-11 17:12:45', '2016-11-11 17:12:46', 26, 'DocumentVisible', 3, 1, NULL, NULL),
(31, 1, NULL, NULL, 1, NULL, 31, 'glossary', '2016-11-11 17:23:13', '2016-11-11 17:23:13', 1, 'GlossaryAdded', 1, 1, NULL, NULL),
(32, 1, NULL, NULL, 1, NULL, 32, 'glossary', '2016-11-11 17:23:13', '2016-11-11 17:23:13', 2, 'GlossaryAdded', 1, 1, NULL, NULL),
(33, 1, NULL, NULL, 1, NULL, 33, 'glossary', '2016-11-11 17:23:13', '2016-11-11 17:23:13', 3, 'GlossaryAdded', 1, 1, NULL, NULL),
(34, 1, NULL, NULL, 1, NULL, 34, 'glossary', '2016-11-11 17:23:13', '2016-11-11 17:23:13', 4, 'GlossaryAdded', 1, 1, NULL, NULL),
(35, 1, NULL, NULL, 1, NULL, 35, 'glossary', '2016-11-11 17:23:13', '2016-11-11 17:23:13', 5, 'GlossaryAdded', 1, 1, NULL, NULL),
(36, 1, NULL, NULL, 1, NULL, 36, 'glossary', '2016-11-11 17:23:14', '2016-11-11 17:23:14', 6, 'GlossaryAdded', 1, 1, NULL, NULL),
(37, 1, NULL, NULL, 1, NULL, 37, 'glossary', '2016-11-11 17:23:14', '2016-11-11 17:23:14', 7, 'GlossaryAdded', 1, 1, NULL, NULL),
(38, 1, NULL, NULL, 1, NULL, 38, 'glossary', '2016-11-11 17:23:14', '2016-11-11 17:23:14', 8, 'GlossaryAdded', 1, 1, NULL, NULL),
(39, 1, NULL, NULL, 1, NULL, 39, 'glossary', '2016-11-11 17:23:14', '2016-11-11 17:23:14', 9, 'GlossaryAdded', 1, 1, NULL, NULL),
(40, 1, NULL, NULL, 1, NULL, 40, 'glossary', '2016-11-11 17:23:14', '2016-11-11 17:23:14', 10, 'GlossaryAdded', 1, 1, NULL, NULL),
(41, 1, NULL, NULL, 1, NULL, 41, 'glossary', '2016-11-11 17:23:14', '2016-11-11 17:23:14', 11, 'GlossaryAdded', 1, 1, NULL, NULL),
(42, 1, NULL, NULL, 1, NULL, 42, 'glossary', '2016-11-11 17:23:14', '2016-11-11 17:23:14', 12, 'GlossaryAdded', 1, 1, NULL, NULL),
(43, 1, NULL, NULL, 1, NULL, 43, 'glossary', '2016-11-11 17:23:15', '2016-11-11 17:23:15', 13, 'GlossaryAdded', 1, 1, NULL, NULL),
(44, 1, NULL, NULL, 1, NULL, 44, 'glossary', '2016-11-11 17:23:15', '2016-11-11 17:23:15', 14, 'GlossaryAdded', 1, 1, NULL, NULL),
(45, 1, NULL, NULL, 1, NULL, 45, 'glossary', '2016-11-11 17:23:15', '2016-11-11 17:23:15', 15, 'GlossaryAdded', 1, 1, NULL, NULL),
(46, 1, NULL, NULL, 1, NULL, 46, 'glossary', '2016-11-11 17:23:15', '2016-11-11 17:23:15', 16, 'GlossaryAdded', 1, 1, NULL, NULL),
(47, 1, NULL, NULL, 1, NULL, 47, 'glossary', '2016-11-11 17:23:16', '2016-11-11 17:23:16', 17, 'GlossaryAdded', 1, 1, NULL, NULL),
(48, 1, NULL, NULL, 1, NULL, 48, 'glossary', '2016-11-11 17:23:16', '2016-11-11 17:23:16', 18, 'GlossaryAdded', 1, 1, NULL, NULL),
(49, 1, NULL, NULL, 1, NULL, 49, 'glossary', '2016-11-11 17:23:16', '2016-11-11 17:23:16', 19, 'GlossaryAdded', 1, 1, NULL, NULL),
(50, 1, NULL, NULL, 1, NULL, 50, 'glossary', '2016-11-11 17:23:17', '2016-11-11 17:23:17', 20, 'GlossaryAdded', 1, 1, NULL, NULL),
(51, 1, NULL, NULL, 1, NULL, 51, 'glossary', '2016-11-11 17:23:17', '2016-11-11 17:23:17', 21, 'GlossaryAdded', 1, 1, NULL, NULL),
(52, 1, NULL, NULL, 1, NULL, 52, 'glossary', '2016-11-11 17:23:17', '2016-11-11 17:23:17', 22, 'GlossaryAdded', 1, 1, NULL, NULL),
(53, 1, NULL, NULL, 1, NULL, 53, 'glossary', '2016-11-11 17:23:17', '2016-11-11 17:23:17', 23, 'GlossaryAdded', 1, 1, NULL, NULL),
(54, 1, NULL, NULL, 1, NULL, 54, 'glossary', '2016-11-11 17:23:17', '2016-11-11 17:23:17', 24, 'GlossaryAdded', 1, 1, NULL, NULL),
(55, 1, NULL, NULL, 1, NULL, 55, 'glossary', '2016-11-11 17:23:18', '2016-11-11 17:23:18', 25, 'GlossaryAdded', 1, 1, NULL, NULL),
(56, 1, NULL, NULL, 1, NULL, 56, 'glossary', '2016-11-11 17:23:18', '2016-11-11 17:23:18', 26, 'GlossaryAdded', 1, 1, NULL, NULL),
(57, 1, NULL, NULL, 1, NULL, 57, 'glossary', '2016-11-11 17:23:18', '2016-11-11 17:23:18', 27, 'GlossaryAdded', 1, 1, NULL, NULL),
(58, 1, NULL, NULL, 1, NULL, 58, 'glossary', '2016-11-11 17:23:18', '2016-11-11 17:23:18', 28, 'GlossaryAdded', 1, 1, NULL, NULL),
(59, 1, NULL, NULL, 1, NULL, 59, 'glossary', '2016-11-11 17:23:18', '2016-11-11 17:23:18', 29, 'GlossaryAdded', 1, 1, NULL, NULL),
(60, 1, NULL, NULL, 1, NULL, 60, 'glossary', '2016-11-11 17:23:18', '2016-11-11 17:23:18', 30, 'GlossaryAdded', 1, 1, NULL, NULL),
(61, 1, NULL, NULL, 1, NULL, 61, 'glossary', '2016-11-11 17:23:19', '2016-11-11 17:23:19', 31, 'GlossaryAdded', 1, 1, NULL, NULL),
(62, 1, NULL, NULL, 1, NULL, 62, 'glossary', '2016-11-11 17:23:19', '2016-11-11 17:23:19', 32, 'GlossaryAdded', 1, 1, NULL, NULL),
(63, 1, NULL, NULL, 1, NULL, 63, 'glossary', '2016-11-11 17:23:19', '2016-11-11 17:23:19', 33, 'GlossaryAdded', 1, 1, NULL, NULL),
(64, 1, NULL, NULL, 1, NULL, 64, 'glossary', '2016-11-11 17:23:19', '2016-11-11 17:23:19', 34, 'GlossaryAdded', 1, 1, NULL, NULL),
(65, 1, NULL, NULL, 1, NULL, 65, 'glossary', '2016-11-11 17:23:19', '2016-11-11 17:23:19', 35, 'GlossaryAdded', 1, 1, NULL, NULL),
(66, 1, NULL, NULL, 1, NULL, 66, 'glossary', '2016-11-11 17:23:19', '2016-11-11 17:23:19', 36, 'GlossaryAdded', 1, 1, NULL, NULL),
(67, 1, NULL, NULL, 1, NULL, 67, 'glossary', '2016-11-11 17:23:19', '2016-11-11 17:23:19', 37, 'GlossaryAdded', 1, 1, NULL, NULL),
(68, 1, NULL, NULL, 1, NULL, 68, 'glossary', '2016-11-11 17:23:20', '2016-11-11 17:23:20', 38, 'GlossaryAdded', 1, 1, NULL, NULL),
(69, 1, NULL, NULL, 1, NULL, 69, 'glossary', '2016-11-11 17:23:20', '2016-11-11 17:23:20', 39, 'GlossaryAdded', 1, 1, NULL, NULL),
(70, 1, NULL, NULL, 1, NULL, 70, 'glossary', '2016-11-11 17:23:20', '2016-11-11 17:23:20', 40, 'GlossaryAdded', 1, 1, NULL, NULL),
(71, 1, NULL, NULL, 1, NULL, 71, 'glossary', '2016-11-11 17:23:20', '2016-11-11 17:23:20', 41, 'GlossaryAdded', 1, 1, NULL, NULL),
(72, 1, NULL, NULL, 1, NULL, 72, 'glossary', '2016-11-11 17:23:20', '2016-11-11 17:23:20', 42, 'GlossaryAdded', 1, 1, NULL, NULL),
(73, 1, NULL, NULL, 1, NULL, 73, 'glossary', '2016-11-11 17:23:21', '2016-11-11 17:23:21', 43, 'GlossaryAdded', 1, 1, NULL, NULL),
(74, 1, NULL, NULL, 1, NULL, 74, 'glossary', '2016-11-11 17:23:21', '2016-11-11 17:23:21', 44, 'GlossaryAdded', 1, 1, NULL, NULL),
(75, 1, NULL, NULL, 1, NULL, 75, 'glossary', '2016-11-11 17:23:21', '2016-11-11 17:23:21', 45, 'GlossaryAdded', 1, 1, NULL, NULL),
(76, 1, NULL, NULL, 1, NULL, 76, 'glossary', '2016-11-11 17:23:21', '2016-11-11 17:23:21', 46, 'GlossaryAdded', 1, 1, NULL, NULL),
(77, 1, NULL, NULL, 1, NULL, 77, 'glossary', '2016-11-11 17:23:22', '2016-11-11 17:23:22', 47, 'GlossaryAdded', 1, 1, NULL, NULL),
(78, 1, NULL, NULL, 1, NULL, 78, 'glossary', '2016-11-11 17:23:22', '2016-11-11 17:23:22', 48, 'GlossaryAdded', 1, 1, NULL, NULL),
(79, 1, NULL, NULL, 1, NULL, 79, 'glossary', '2016-11-11 17:23:22', '2016-11-11 17:23:22', 49, 'GlossaryAdded', 1, 1, NULL, NULL),
(80, 1, NULL, NULL, 1, NULL, 80, 'glossary', '2016-11-11 17:23:23', '2016-11-11 17:23:23', 50, 'GlossaryAdded', 1, 1, NULL, NULL),
(81, 1, NULL, NULL, 1, NULL, 81, 'glossary', '2016-11-11 17:23:23', '2016-11-11 17:23:23', 51, 'GlossaryAdded', 1, 1, NULL, NULL),
(82, 1, NULL, NULL, 1, NULL, 82, 'glossary', '2016-11-11 17:23:23', '2016-11-11 17:23:23', 52, 'GlossaryAdded', 1, 1, NULL, NULL),
(83, 1, NULL, NULL, 1, NULL, 83, 'glossary', '2016-11-11 17:23:23', '2016-11-11 17:23:23', 53, 'GlossaryAdded', 1, 1, NULL, NULL),
(84, 1, NULL, NULL, 1, NULL, 84, 'glossary', '2016-11-11 17:23:23', '2016-11-11 17:23:23', 54, 'GlossaryAdded', 1, 1, NULL, NULL),
(85, 1, NULL, NULL, 1, NULL, 85, 'glossary', '2016-11-11 17:23:23', '2016-11-11 17:23:23', 55, 'GlossaryAdded', 1, 1, NULL, NULL),
(86, 1, NULL, NULL, 1, NULL, 86, 'glossary', '2016-11-11 17:23:24', '2016-11-11 17:23:24', 56, 'GlossaryAdded', 1, 1, NULL, NULL),
(87, 1, NULL, NULL, 1, NULL, 87, 'glossary', '2016-11-11 17:23:24', '2016-11-11 17:23:24', 57, 'GlossaryAdded', 1, 1, NULL, NULL),
(88, 1, NULL, NULL, 1, NULL, 88, 'glossary', '2016-11-11 17:23:24', '2016-11-11 17:23:24', 58, 'GlossaryAdded', 1, 1, NULL, NULL),
(89, 1, NULL, NULL, 1, NULL, 89, 'glossary', '2016-11-11 17:23:24', '2016-11-11 17:23:24', 59, 'GlossaryAdded', 1, 1, NULL, NULL),
(90, 1, NULL, NULL, 1, NULL, 90, 'glossary', '2016-11-11 17:23:24', '2016-11-11 17:23:24', 60, 'GlossaryAdded', 1, 1, NULL, NULL),
(91, 1, NULL, NULL, 1, NULL, 91, 'glossary', '2016-11-11 17:23:24', '2016-11-11 17:23:24', 61, 'GlossaryAdded', 1, 1, NULL, NULL),
(92, 1, NULL, NULL, 1, NULL, 92, 'glossary', '2016-11-11 17:23:25', '2016-11-11 17:23:25', 62, 'GlossaryAdded', 1, 1, NULL, NULL),
(93, 1, NULL, NULL, 1, NULL, 93, 'glossary', '2016-11-11 17:23:25', '2016-11-11 17:23:25', 63, 'GlossaryAdded', 1, 1, NULL, NULL),
(94, 1, NULL, NULL, 1, NULL, 94, 'glossary', '2016-11-11 17:23:25', '2016-11-11 17:23:25', 64, 'GlossaryAdded', 1, 1, NULL, NULL),
(95, 1, NULL, NULL, 1, NULL, 95, 'glossary', '2016-11-11 17:23:25', '2016-11-11 17:23:25', 65, 'GlossaryAdded', 1, 1, NULL, NULL),
(96, 1, NULL, NULL, 1, NULL, 96, 'glossary', '2016-11-11 17:23:25', '2016-11-11 17:23:25', 66, 'GlossaryAdded', 1, 1, NULL, NULL),
(97, 1, NULL, NULL, 1, NULL, 97, 'glossary', '2016-11-11 17:23:25', '2016-11-11 17:23:25', 67, 'GlossaryAdded', 1, 1, NULL, NULL),
(98, 1, NULL, NULL, 1, NULL, 98, 'glossary', '2016-11-11 17:23:26', '2016-11-11 17:23:26', 68, 'GlossaryAdded', 1, 1, NULL, NULL),
(99, 1, NULL, NULL, 1, NULL, 99, 'glossary', '2016-11-11 17:23:26', '2016-11-11 17:23:26', 69, 'GlossaryAdded', 1, 1, NULL, NULL),
(100, 1, NULL, NULL, 1, NULL, 100, 'glossary', '2016-11-11 17:23:26', '2016-11-11 17:23:26', 70, 'GlossaryAdded', 1, 1, NULL, NULL),
(101, 1, NULL, NULL, 1, NULL, 101, 'glossary', '2016-11-11 17:23:26', '2016-11-11 17:23:26', 71, 'GlossaryAdded', 1, 1, NULL, NULL),
(102, 1, NULL, NULL, 1, NULL, 102, 'glossary', '2016-11-11 17:23:27', '2016-11-11 17:23:27', 72, 'GlossaryAdded', 1, 1, NULL, NULL),
(103, 1, NULL, NULL, 1, NULL, 103, 'glossary', '2016-11-11 17:23:27', '2016-11-11 17:23:27', 73, 'GlossaryAdded', 1, 1, NULL, NULL),
(104, 1, NULL, NULL, 1, NULL, 104, 'glossary', '2016-11-11 17:23:27', '2016-11-11 17:23:27', 74, 'GlossaryAdded', 1, 1, NULL, NULL),
(105, 1, NULL, NULL, 1, NULL, 105, 'glossary', '2016-11-11 17:23:28', '2016-11-11 17:23:28', 75, 'GlossaryAdded', 1, 1, NULL, NULL),
(106, 1, NULL, NULL, 1, NULL, 106, 'glossary', '2016-11-11 17:23:28', '2016-11-11 17:23:28', 76, 'GlossaryAdded', 1, 1, NULL, NULL),
(107, 1, NULL, NULL, 1, NULL, 107, 'glossary', '2016-11-11 17:23:28', '2016-11-11 17:23:28', 77, 'GlossaryAdded', 1, 1, NULL, NULL),
(108, 1, NULL, NULL, 1, NULL, 108, 'glossary', '2016-11-11 17:23:28', '2016-11-11 17:23:28', 78, 'GlossaryAdded', 1, 1, NULL, NULL),
(109, 1, NULL, NULL, 1, NULL, 109, 'glossary', '2016-11-11 17:23:29', '2016-11-11 17:23:29', 79, 'GlossaryAdded', 1, 1, NULL, NULL),
(110, 1, NULL, NULL, 1, NULL, 110, 'glossary', '2016-11-11 17:23:29', '2016-11-11 17:23:29', 80, 'GlossaryAdded', 1, 1, NULL, NULL),
(111, 1, NULL, NULL, 1, NULL, 111, 'glossary', '2016-11-11 17:23:29', '2016-11-11 17:23:29', 81, 'GlossaryAdded', 1, 1, NULL, NULL),
(112, 1, NULL, NULL, 1, NULL, 112, 'glossary', '2016-11-11 17:23:30', '2016-11-11 17:23:30', 82, 'GlossaryAdded', 1, 1, NULL, NULL),
(113, 1, NULL, NULL, 1, NULL, 113, 'glossary', '2016-11-11 17:23:30', '2016-11-11 17:23:30', 83, 'GlossaryAdded', 1, 1, NULL, NULL),
(114, 1, NULL, NULL, 1, NULL, 114, 'glossary', '2016-11-11 17:23:30', '2016-11-11 17:23:30', 84, 'GlossaryAdded', 1, 1, NULL, NULL),
(115, 1, NULL, NULL, 1, NULL, 115, 'glossary', '2016-11-11 17:23:30', '2016-11-11 17:23:30', 85, 'GlossaryAdded', 1, 1, NULL, NULL),
(116, 1, NULL, NULL, 1, NULL, 116, 'glossary', '2016-11-11 17:23:30', '2016-11-11 17:23:30', 86, 'GlossaryAdded', 1, 1, NULL, NULL),
(117, 1, NULL, NULL, 1, NULL, 117, 'glossary', '2016-11-11 17:23:31', '2016-11-11 17:23:31', 87, 'GlossaryAdded', 1, 1, NULL, NULL),
(118, 1, NULL, NULL, 1, NULL, 118, 'glossary', '2016-11-11 17:23:31', '2016-11-11 17:23:31', 88, 'GlossaryAdded', 1, 1, NULL, NULL),
(119, 1, NULL, NULL, 1, NULL, 119, 'glossary', '2016-11-11 17:23:31', '2016-11-11 17:23:31', 89, 'GlossaryAdded', 1, 1, NULL, NULL),
(120, 1, NULL, NULL, 1, NULL, 120, 'glossary', '2016-11-11 17:23:31', '2016-11-11 17:23:31', 90, 'GlossaryAdded', 1, 1, NULL, NULL),
(121, 1, NULL, NULL, 1, NULL, 121, 'glossary', '2016-11-11 17:23:31', '2016-11-11 17:23:31', 91, 'GlossaryAdded', 1, 1, NULL, NULL),
(122, 1, NULL, NULL, 1, NULL, 122, 'glossary', '2016-11-11 17:23:31', '2016-11-11 17:23:31', 92, 'GlossaryAdded', 1, 1, NULL, NULL),
(123, 1, NULL, NULL, 1, NULL, 123, 'glossary', '2016-11-11 17:23:31', '2016-11-11 17:23:31', 93, 'GlossaryAdded', 1, 1, NULL, NULL),
(124, 1, NULL, NULL, 1, NULL, 124, 'glossary', '2016-11-11 17:23:31', '2016-11-11 17:23:31', 94, 'GlossaryAdded', 1, 1, NULL, NULL),
(125, 1, NULL, NULL, 1, NULL, 125, 'glossary', '2016-11-11 17:23:32', '2016-11-11 17:23:32', 95, 'GlossaryAdded', 1, 1, NULL, NULL),
(126, 1, NULL, NULL, 1, NULL, 126, 'glossary', '2016-11-11 17:23:32', '2016-11-11 17:23:32', 96, 'GlossaryAdded', 1, 1, NULL, NULL),
(127, 1, NULL, NULL, 1, NULL, 127, 'glossary', '2016-11-11 17:23:32', '2016-11-11 17:23:32', 97, 'GlossaryAdded', 1, 1, NULL, NULL),
(128, 1, NULL, NULL, 1, NULL, 128, 'glossary', '2016-11-11 17:23:32', '2016-11-11 17:23:32', 98, 'GlossaryAdded', 1, 1, NULL, NULL),
(129, 1, NULL, NULL, 1, NULL, 129, 'glossary', '2016-11-11 17:23:32', '2016-11-11 17:23:32', 99, 'GlossaryAdded', 1, 1, NULL, NULL),
(130, 1, NULL, NULL, 1, NULL, 130, 'glossary', '2016-11-11 17:23:32', '2016-11-11 17:23:32', 100, 'GlossaryAdded', 1, 1, NULL, NULL),
(131, 1, NULL, NULL, 1, NULL, 131, 'glossary', '2016-11-11 17:23:33', '2016-11-11 17:23:33', 101, 'GlossaryAdded', 1, 1, NULL, NULL),
(132, 1, NULL, NULL, 1, NULL, 132, 'glossary', '2016-11-11 17:23:33', '2016-11-11 17:23:33', 102, 'GlossaryAdded', 1, 1, NULL, NULL),
(133, 1, NULL, NULL, 1, NULL, 133, 'glossary', '2016-11-11 17:23:33', '2016-11-11 17:23:33', 103, 'GlossaryAdded', 1, 1, NULL, NULL),
(134, 1, NULL, NULL, 1, NULL, 134, 'glossary', '2016-11-11 17:23:33', '2016-11-11 17:23:33', 104, 'GlossaryAdded', 1, 1, NULL, NULL),
(135, 1, NULL, NULL, 1, NULL, 135, 'glossary', '2016-11-11 17:23:34', '2016-11-11 17:23:34', 105, 'GlossaryAdded', 1, 1, NULL, NULL),
(136, 1, NULL, NULL, 1, NULL, 136, 'glossary', '2016-11-11 17:23:34', '2016-11-11 17:23:34', 106, 'GlossaryAdded', 1, 1, NULL, NULL),
(137, 1, NULL, NULL, 1, NULL, 137, 'glossary', '2016-11-11 17:23:34', '2016-11-11 17:23:34', 107, 'GlossaryAdded', 1, 1, NULL, NULL),
(138, 1, NULL, NULL, 1, NULL, 138, 'glossary', '2016-11-11 17:23:35', '2016-11-11 17:23:35', 108, 'GlossaryAdded', 1, 1, NULL, NULL),
(139, 1, NULL, NULL, 1, NULL, 139, 'glossary', '2016-11-11 17:23:35', '2016-11-11 17:23:35', 109, 'GlossaryAdded', 1, 1, NULL, NULL),
(140, 1, NULL, NULL, 1, NULL, 140, 'glossary', '2016-11-11 17:23:35', '2016-11-11 17:23:35', 110, 'GlossaryAdded', 1, 1, NULL, NULL),
(141, 1, NULL, NULL, 1, NULL, 141, 'course_description', '2016-11-11 17:26:34', '2016-11-11 17:26:34', 1, 'CourseDescriptionAdded', 1, 1, NULL, NULL),
(142, 1, NULL, NULL, 1, NULL, 142, 'thematic', '2016-11-11 17:28:45', '2016-11-11 17:29:50', 1, 'ThematicDeleted', 1, 1, NULL, NULL),
(143, 1, NULL, NULL, 1, NULL, 143, 'attendance', '2016-11-11 17:30:51', '2016-11-11 17:30:51', 1, 'AttendanceAdded', 1, 1, NULL, NULL),
(144, 1, NULL, NULL, 1, NULL, 144, 'survey', '2016-11-11 17:42:13', '2016-11-25 01:04:08', 1, 'SurveyUpdated', 1, 1, NULL, NULL),
(145, 1, NULL, NULL, 1, NULL, 145, 'document', '2016-11-11 17:42:50', '2016-11-25 00:35:41', 27, 'DocumentUpdated', 1, 1, NULL, NULL),
(146, 1, NULL, NULL, 1, NULL, 146, 'document', '2016-11-18 01:07:38', '2016-11-18 01:07:39', 28, 'DocumentAdded', 1, 1, NULL, NULL),
(147, 1, NULL, NULL, 1, NULL, 147, 'document', '2016-11-18 01:07:48', '2016-11-18 01:07:49', 29, 'DocumentAdded', 1, 1, NULL, NULL),
(148, 1, NULL, NULL, 1, NULL, 148, 'document', '2016-11-18 01:08:18', '2016-11-18 01:08:19', 30, 'DocumentAdded', 1, 1, NULL, NULL),
(149, 1, NULL, NULL, 1, NULL, 149, 'document', '2016-11-18 01:08:28', '2016-11-18 01:08:29', 31, 'DocumentAdded', 1, 1, NULL, NULL),
(150, 1, NULL, NULL, 1, NULL, 150, 'learnpath', '2016-11-18 01:09:01', '2016-11-18 01:09:01', 5, 'LearnpathAdded', 1, 1, NULL, NULL),
(151, 1, NULL, NULL, 1, NULL, 151, 'document', '2016-11-18 01:09:03', '2016-11-18 01:09:04', 32, 'FolderCreated', 1, 1, NULL, NULL),
(152, 1, NULL, NULL, 1, NULL, 152, 'document', '2016-11-18 01:09:42', '2016-11-18 01:09:42', 33, 'DocumentAdded', 1, 1, NULL, NULL),
(153, 1, NULL, NULL, 1, NULL, 153, 'document', '2016-11-18 01:09:50', '2016-11-18 01:09:50', 34, 'DocumentAdded', 1, 1, NULL, NULL),
(154, 1, NULL, NULL, 1, NULL, 154, 'document', '2016-11-18 01:09:57', '2016-11-18 01:09:58', 35, 'DocumentAdded', 1, 1, NULL, NULL),
(155, 1, NULL, NULL, 1, NULL, 155, 'document', '2016-11-18 01:10:23', '2016-11-18 01:10:23', 36, 'DocumentAdded', 1, 1, NULL, NULL),
(156, 1, NULL, NULL, 1, NULL, 156, 'learnpath', '2016-11-18 01:10:54', '2016-11-18 01:10:54', 6, 'LearnpathAdded', 1, 1, NULL, NULL),
(157, 1, NULL, NULL, 1, NULL, 157, 'document', '2016-11-18 01:10:55', '2016-11-18 01:10:56', 37, 'FolderCreated', 1, 1, NULL, NULL),
(158, 1, NULL, NULL, 1, NULL, 158, 'document', '2016-11-18 01:11:09', '2016-11-18 01:11:09', 38, 'DocumentAdded', 1, 1, NULL, NULL),
(159, 1, NULL, NULL, 1, NULL, 159, 'document', '2016-11-18 01:11:17', '2016-11-18 01:11:17', 39, 'DocumentAdded', 1, 1, NULL, NULL),
(160, 1, NULL, NULL, 1, NULL, 160, 'document', '2016-11-18 01:11:25', '2016-11-18 01:11:25', 40, 'DocumentAdded', 1, 1, NULL, NULL),
(161, 1, NULL, NULL, 1, NULL, 161, 'document', '2016-11-18 01:11:37', '2016-11-18 01:11:37', 41, 'DocumentAdded', 1, 1, NULL, NULL),
(162, 1, NULL, NULL, 1, NULL, 162, 'document', '2016-11-18 01:11:45', '2016-11-18 01:11:45', 42, 'DocumentAdded', 1, 1, NULL, NULL),
(163, 1, NULL, NULL, 1, NULL, 163, 'document', '2016-11-18 01:11:53', '2016-11-18 01:11:53', 43, 'DocumentAdded', 1, 1, NULL, NULL),
(164, 1, NULL, NULL, 1, NULL, 164, 'learnpath', '2016-11-18 01:13:22', '2016-11-18 01:13:22', 7, 'LearnpathAdded', 1, 1, NULL, NULL),
(165, 1, NULL, NULL, 1, NULL, 165, 'document', '2016-11-18 01:13:24', '2016-11-18 01:13:24', 44, 'FolderCreated', 1, 1, NULL, NULL),
(166, 1, NULL, NULL, 1, NULL, 166, 'document', '2016-11-18 01:13:39', '2016-11-18 01:13:39', 45, 'DocumentAdded', 1, 1, NULL, NULL),
(167, 1, NULL, NULL, 1, NULL, 167, 'document', '2016-11-18 01:13:47', '2016-11-18 01:13:47', 46, 'DocumentAdded', 1, 1, NULL, NULL),
(168, 1, NULL, NULL, 1, NULL, 168, 'document', '2016-11-18 01:13:55', '2016-11-18 01:13:55', 47, 'DocumentAdded', 1, 1, NULL, NULL),
(169, 1, NULL, NULL, 1, NULL, 169, 'document', '2016-11-18 01:14:07', '2016-11-18 01:14:08', 48, 'DocumentAdded', 1, 1, NULL, NULL),
(170, 1, NULL, NULL, 1, NULL, 170, 'document', '2016-11-18 01:14:17', '2016-11-18 01:14:17', 49, 'DocumentAdded', 1, 1, NULL, NULL),
(171, 1, NULL, NULL, 1, NULL, 171, 'quiz', '2016-11-21 14:59:07', '2016-11-21 19:18:46', 1, 'QuizUpdated', 1, 1, NULL, NULL),
(172, 1, NULL, NULL, 1, NULL, 172, 'quiz', '2016-11-21 15:04:24', '2016-11-21 19:25:15', 2, 'QuizDeleted', 1, 2, NULL, NULL),
(173, 1, NULL, NULL, 1, NULL, 173, 'quiz', '2016-11-21 15:05:09', '2016-11-24 04:57:51', 3, 'QuizUpdated', 1, 1, NULL, NULL),
(174, 1, NULL, NULL, 1, NULL, 174, 'quiz', '2016-11-21 15:07:06', '2016-11-24 05:06:04', 4, 'QuizUpdated', 1, 1, NULL, NULL),
(175, 1, NULL, NULL, 1, NULL, 175, 'quiz', '2016-11-21 15:08:23', '2016-11-24 22:41:21', 5, 'QuizUpdated', 1, 1, NULL, NULL),
(176, 1, NULL, NULL, 1, NULL, 176, 'quiz', '2016-11-21 15:09:37', '2016-11-24 05:02:59', 6, 'QuizUpdated', 1, 1, NULL, NULL),
(177, 1, NULL, NULL, 1, NULL, 177, 'quiz', '2016-11-21 15:10:26', '2016-11-21 15:10:26', 7, 'QuizQuestionAdded', 1, 1, NULL, NULL),
(178, 1, NULL, NULL, 1, NULL, 178, 'quiz', '2016-11-21 15:10:56', '2016-11-21 15:10:56', 8, 'QuizQuestionAdded', 1, 1, NULL, NULL),
(179, 1, NULL, NULL, 1, NULL, 179, 'quiz', '2016-11-21 15:11:27', '2016-11-21 15:11:27', 9, 'QuizQuestionAdded', 1, 1, NULL, NULL),
(180, 1, NULL, NULL, 1, NULL, 180, 'quiz', '2016-11-21 15:22:05', '2016-11-21 15:22:05', 10, 'QuizQuestionAdded', 1, 1, NULL, NULL),
(181, 1, NULL, NULL, 1, NULL, 181, 'document', '2016-11-21 17:29:41', '2016-11-21 17:29:41', 50, 'DocumentVisible', 1, 1, NULL, NULL),
(182, 1, NULL, NULL, 1, NULL, 182, 'document', '2016-11-21 17:35:54', '2016-11-21 17:35:54', 51, 'DocumentVisible', 1, 1, NULL, NULL),
(183, 1, NULL, NULL, 1, NULL, 183, 'document', '2016-11-21 17:43:01', '2016-11-21 17:43:01', 52, 'DocumentVisible', 1, 1, NULL, NULL),
(184, 1, NULL, NULL, 1, NULL, 184, 'document', '2016-11-21 19:12:20', '2016-11-21 19:12:20', 53, 'DocumentInvisible', 1, 0, NULL, NULL),
(185, 1, NULL, NULL, 1, NULL, 185, 'quiz', '2016-11-21 19:21:37', '2016-11-21 19:21:37', 11, 'QuizQuestionAdded', 1, 1, NULL, NULL),
(186, 1, NULL, NULL, 1, NULL, 186, 'quiz', '2016-11-21 19:22:14', '2016-11-21 19:22:14', 12, 'QuizQuestionAdded', 1, 1, NULL, NULL),
(187, 1, NULL, NULL, 1, NULL, 187, 'quiz', '2016-11-21 19:22:51', '2016-11-21 19:22:51', 13, 'QuizQuestionAdded', 1, 1, NULL, NULL),
(188, 1, NULL, NULL, 1, NULL, 188, 'quiz', '2016-11-21 19:23:28', '2016-11-21 19:23:28', 14, 'QuizQuestionAdded', 1, 1, NULL, NULL),
(189, 1, NULL, NULL, 1, NULL, 189, 'quiz', '2016-11-21 19:24:00', '2016-11-21 19:24:00', 15, 'QuizQuestionAdded', 1, 1, NULL, NULL),
(190, 1, NULL, NULL, 1, NULL, 190, 'quiz', '2016-11-21 19:24:37', '2016-11-21 19:24:37', 16, 'QuizQuestionAdded', 1, 1, NULL, NULL),
(191, 1, NULL, NULL, 1, NULL, 191, 'quiz', '2016-11-21 19:27:05', '2016-11-21 19:27:05', 17, 'QuizQuestionAdded', 1, 1, NULL, NULL),
(192, 1, NULL, NULL, 1, NULL, 192, 'quiz', '2016-11-21 19:27:42', '2016-11-21 19:27:42', 18, 'QuizQuestionAdded', 1, 1, NULL, NULL),
(193, 1, NULL, NULL, 1, NULL, 193, 'quiz', '2016-11-21 19:30:26', '2016-11-21 19:30:26', 19, 'QuizQuestionAdded', 1, 1, NULL, NULL),
(194, 1, NULL, NULL, 1, NULL, 194, 'quiz', '2016-11-21 19:31:09', '2016-11-21 19:31:09', 20, 'QuizQuestionAdded', 1, 1, NULL, NULL),
(195, 1, NULL, NULL, 1, NULL, 195, 'quiz', '2016-11-21 19:32:28', '2016-11-21 19:32:28', 21, 'QuizQuestionAdded', 1, 1, NULL, NULL),
(196, 1, NULL, NULL, 1, NULL, 196, 'work', '2016-11-21 23:41:25', '2016-11-21 23:41:25', 1, 'DirectoryCreated', 1, 1, NULL, NULL),
(197, 1, NULL, NULL, 3, NULL, 197, 'work', '2016-11-21 23:48:17', '2016-11-21 23:48:17', 2, 'DocumentAdded', 3, 1, NULL, NULL),
(198, 1, NULL, NULL, 1, NULL, 198, 'learnpath', '2016-11-24 03:59:09', '2016-11-24 03:59:09', 8, 'LearnpathAdded', 1, 1, NULL, NULL),
(199, 1, NULL, NULL, 1, NULL, 199, 'document', '2016-11-24 03:59:13', '2016-11-24 03:59:13', 54, 'FolderCreated', 1, 1, NULL, NULL),
(200, 1, NULL, NULL, 1, NULL, 200, 'document', '2016-11-24 03:59:36', '2016-11-24 03:59:36', 55, 'DocumentAdded', 1, 1, NULL, NULL),
(201, 1, NULL, NULL, 1, NULL, 201, 'document', '2016-11-24 03:59:47', '2016-11-24 03:59:48', 56, 'DocumentAdded', 1, 1, NULL, NULL),
(202, 1, NULL, NULL, 1, NULL, 202, 'document', '2016-11-24 03:59:57', '2016-11-24 03:59:57', 57, 'DocumentAdded', 1, 1, NULL, NULL),
(203, 1, NULL, NULL, 1, NULL, 203, 'document', '2016-11-24 04:00:06', '2016-11-24 04:00:06', 58, 'DocumentAdded', 1, 1, NULL, NULL),
(204, 1, NULL, NULL, 1, NULL, 204, 'document', '2016-11-24 04:00:16', '2016-11-24 04:00:16', 59, 'DocumentAdded', 1, 1, NULL, NULL),
(205, 1, NULL, NULL, 1, NULL, 205, 'document', '2016-11-24 04:00:26', '2016-11-24 04:00:26', 60, 'DocumentAdded', 1, 1, NULL, NULL),
(206, 1, NULL, NULL, 1, NULL, 206, 'document', '2016-11-24 04:00:36', '2016-11-24 04:00:36', 61, 'DocumentAdded', 1, 1, NULL, NULL),
(207, 1, NULL, NULL, 1, NULL, 207, 'document', '2016-11-24 04:02:10', '2016-11-24 04:02:10', 62, 'DocumentVisible', 1, 1, NULL, NULL),
(208, 1, NULL, NULL, 1, NULL, 208, 'learnpath', '2016-11-24 04:04:32', '2016-11-24 04:04:32', 9, 'LearnpathAdded', 1, 1, NULL, NULL),
(209, 1, NULL, NULL, 1, NULL, 209, 'document', '2016-11-24 04:04:36', '2016-11-24 04:04:36', 63, 'FolderCreated', 1, 1, NULL, NULL),
(210, 1, NULL, NULL, 1, NULL, 210, 'document', '2016-11-24 04:05:04', '2016-11-24 04:05:05', 64, 'DocumentAdded', 1, 1, NULL, NULL),
(211, 1, NULL, NULL, 1, NULL, 211, 'document', '2016-11-24 04:05:13', '2016-11-24 04:05:14', 65, 'DocumentAdded', 1, 1, NULL, NULL),
(212, 1, NULL, NULL, 1, NULL, 212, 'document', '2016-11-24 04:05:26', '2016-11-24 04:05:26', 66, 'DocumentAdded', 1, 1, NULL, NULL),
(213, 1, NULL, NULL, 1, NULL, 213, 'document', '2016-11-24 04:05:41', '2016-11-24 04:05:42', 67, 'DocumentVisible', 1, 1, NULL, NULL),
(214, 1, NULL, NULL, 1, NULL, 214, 'learnpath', '2016-11-24 04:06:32', '2016-11-24 04:06:32', 10, 'LearnpathAdded', 1, 1, NULL, NULL),
(215, 1, NULL, NULL, 1, NULL, 215, 'document', '2016-11-24 04:06:35', '2016-11-24 04:06:36', 68, 'FolderCreated', 1, 1, NULL, NULL),
(216, 1, NULL, NULL, 1, NULL, 216, 'document', '2016-11-24 04:06:43', '2016-11-24 04:06:43', 69, 'DocumentAdded', 1, 1, NULL, NULL),
(217, 1, NULL, NULL, 1, NULL, 217, 'document', '2016-11-24 04:07:16', '2016-11-24 04:07:16', 70, 'DocumentAdded', 1, 1, NULL, NULL),
(218, 1, NULL, NULL, 1, NULL, 218, 'document', '2016-11-24 04:07:25', '2016-11-24 04:07:25', 71, 'DocumentAdded', 1, 1, NULL, NULL),
(219, 1, NULL, NULL, 1, NULL, 219, 'document', '2016-11-24 04:07:36', '2016-11-24 04:07:36', 72, 'DocumentVisible', 1, 1, NULL, NULL),
(220, 1, NULL, NULL, 1, NULL, 220, 'document', '2016-11-24 04:08:43', '2016-11-24 04:08:43', 73, 'FolderCreated', 1, 1, NULL, NULL),
(221, 1, NULL, NULL, 1, NULL, 221, 'document', '2016-11-24 04:09:02', '2016-11-24 04:09:03', 74, 'FolderCreated', 1, 1, NULL, NULL),
(222, 1, NULL, NULL, 1, NULL, 222, 'document', '2016-11-24 04:09:21', '2016-11-24 04:09:22', 75, 'FolderCreated', 1, 1, NULL, NULL),
(223, 1, NULL, NULL, 1, NULL, 223, 'document', '2016-11-24 04:09:55', '2016-11-24 04:09:55', 76, 'FolderCreated', 1, 1, NULL, NULL),
(224, 1, NULL, NULL, 1, NULL, 224, 'document', '2016-11-24 04:10:13', '2016-11-24 04:10:14', 77, 'FolderCreated', 1, 1, NULL, NULL),
(225, 1, NULL, NULL, 1, NULL, 225, 'document', '2016-11-24 04:10:33', '2016-11-24 04:10:33', 78, 'FolderCreated', 1, 1, NULL, NULL),
(226, 1, NULL, NULL, 1, NULL, 226, 'document', '2016-11-24 04:10:57', '2016-11-24 04:10:57', 79, 'FolderCreated', 1, 1, NULL, NULL),
(227, 1, NULL, NULL, 1, NULL, 227, 'quiz', '2016-11-24 04:32:50', '2016-11-24 04:32:50', 22, 'QuizQuestionAdded', 1, 1, NULL, NULL),
(228, 1, NULL, NULL, 1, NULL, 228, 'quiz', '2016-11-24 04:33:24', '2016-11-24 04:33:24', 23, 'QuizQuestionAdded', 1, 1, NULL, NULL),
(229, 1, NULL, NULL, 1, NULL, 229, 'quiz', '2016-11-24 04:34:10', '2016-11-24 04:34:10', 24, 'QuizQuestionAdded', 1, 1, NULL, NULL),
(230, 1, NULL, NULL, 1, NULL, 230, 'quiz', '2016-11-24 04:34:42', '2016-11-24 04:34:42', 25, 'QuizQuestionAdded', 1, 1, NULL, NULL),
(231, 1, NULL, NULL, 1, NULL, 231, 'quiz', '2016-11-24 04:36:29', '2016-11-24 04:36:29', 26, 'QuizQuestionAdded', 1, 1, NULL, NULL),
(232, 1, NULL, NULL, 1, NULL, 232, 'quiz', '2016-11-24 04:37:06', '2016-11-24 04:37:06', 27, 'QuizQuestionAdded', 1, 1, NULL, NULL),
(233, 1, NULL, NULL, 1, NULL, 233, 'quiz', '2016-11-24 04:38:01', '2016-11-24 04:38:01', 28, 'QuizQuestionAdded', 1, 1, NULL, NULL),
(234, 1, NULL, NULL, 1, NULL, 234, 'quiz', '2016-11-24 04:39:56', '2016-11-24 04:39:56', 29, 'QuizQuestionAdded', 1, 1, NULL, NULL),
(235, 1, NULL, NULL, 1, NULL, 235, 'quiz', '2016-11-24 04:40:30', '2016-11-24 04:40:30', 30, 'QuizQuestionAdded', 1, 1, NULL, NULL),
(236, 1, NULL, NULL, 1, NULL, 236, 'work', '2016-11-24 04:52:26', '2016-11-24 04:52:26', 3, 'DirectoryCreated', 1, 1, NULL, NULL),
(237, 1, NULL, NULL, 1, NULL, 237, 'work', '2016-11-24 04:53:12', '2016-11-24 04:53:12', 4, 'DirectoryCreated', 1, 1, NULL, NULL),
(238, 1, NULL, NULL, 1, NULL, 238, 'work', '2016-11-24 04:54:32', '2016-11-24 04:54:32', 5, 'DirectoryCreated', 1, 1, NULL, NULL),
(239, 1, NULL, NULL, 1, NULL, 239, 'work', '2016-11-24 04:54:51', '2016-11-24 04:54:51', 6, 'DirectoryCreated', 1, 1, NULL, NULL),
(240, 1, NULL, NULL, 1, NULL, 240, 'work', '2016-11-24 04:55:06', '2016-11-24 04:55:06', 7, 'DirectoryCreated', 1, 1, NULL, NULL),
(241, 1, NULL, NULL, 1, NULL, 241, 'work', '2016-11-24 04:55:18', '2016-11-24 04:55:18', 8, 'DirectoryCreated', 1, 1, NULL, NULL),
(242, 1, NULL, NULL, 1, NULL, 242, 'work', '2016-11-24 04:55:44', '2016-11-24 04:55:44', 9, 'DirectoryCreated', 1, 1, NULL, NULL),
(243, 1, NULL, NULL, 1, NULL, 243, 'work', '2016-11-24 04:56:15', '2016-11-24 04:56:15', 10, 'DirectoryCreated', 1, 1, NULL, NULL),
(244, 1, NULL, NULL, 1, NULL, 244, 'work', '2016-11-24 04:56:32', '2016-11-24 04:56:32', 11, 'DirectoryCreated', 1, 1, NULL, NULL),
(245, 1, NULL, NULL, 1, NULL, 245, 'document', '2016-11-24 06:06:57', '2016-11-24 06:06:57', 80, 'DocumentAdded', 1, 1, NULL, NULL),
(246, 1, NULL, NULL, 1, NULL, 246, 'learnpath', '2016-11-24 14:38:39', '2016-11-25 01:19:00', 11, 'LearnpathDeleted', 1, 2, NULL, NULL),
(247, 1, NULL, NULL, 1, NULL, 247, 'document', '2016-11-24 22:19:18', '2016-11-24 23:21:52', 81, 'DocumentInFolderUpdated', 1, 1, NULL, NULL),
(248, 1, NULL, NULL, 1, NULL, 248, 'document', '2016-11-24 22:20:56', '2016-11-24 22:20:56', 82, 'DocumentVisible', 1, 1, NULL, NULL),
(249, 1, NULL, NULL, 1, NULL, 249, 'document', '2016-11-24 22:21:11', '2016-11-24 22:21:11', 83, 'DocumentVisible', 1, 1, NULL, NULL),
(250, 1, NULL, NULL, 1, NULL, 250, 'document', '2016-11-24 22:21:13', '2016-11-24 22:21:14', 84, 'DocumentVisible', 1, 1, NULL, NULL),
(251, 1, NULL, NULL, 1, NULL, 251, 'document', '2016-11-24 22:21:17', '2016-11-24 22:21:18', 85, 'DocumentVisible', 1, 1, NULL, NULL),
(252, 1, NULL, NULL, 1, NULL, 252, 'document', '2016-11-24 22:21:23', '2016-11-24 22:21:23', 86, 'DocumentVisible', 1, 1, NULL, NULL),
(253, 1, NULL, NULL, 1, NULL, 253, 'document', '2016-11-24 22:21:25', '2016-11-24 22:21:26', 87, 'DocumentVisible', 1, 1, NULL, NULL),
(254, 1, NULL, NULL, 1, NULL, 254, 'document', '2016-11-24 22:21:32', '2016-11-24 22:21:32', 88, 'DocumentVisible', 1, 1, NULL, NULL),
(255, 1, NULL, NULL, 1, NULL, 255, 'document', '2016-11-24 22:21:48', '2016-11-24 22:21:48', 89, 'DocumentVisible', 1, 1, NULL, NULL),
(256, 1, NULL, NULL, 1, NULL, 256, 'document', '2016-11-24 22:21:49', '2016-11-24 22:21:50', 90, 'DocumentVisible', 1, 1, NULL, NULL),
(257, 1, NULL, NULL, 1, NULL, 257, 'document', '2016-11-24 22:21:51', '2016-11-24 22:21:52', 91, 'DocumentVisible', 1, 1, NULL, NULL),
(258, 1, NULL, NULL, 1, NULL, 258, 'document', '2016-11-24 22:40:16', '2016-11-24 22:40:16', 92, 'FolderCreated', 1, 1, NULL, NULL),
(259, 1, NULL, NULL, 1, NULL, 259, 'document', '2016-11-24 23:55:13', '2016-11-24 23:55:13', 93, 'DocumentAdded', 1, 1, NULL, NULL),
(260, 1, NULL, NULL, 3, NULL, 260, 'work', '2016-11-25 00:18:58', '2016-11-25 00:18:58', 12, 'DocumentAdded', 3, 1, NULL, NULL),
(261, 1, NULL, 4, 1, NULL, 261, 'announcement', '2016-11-25 00:49:02', '2016-11-25 00:49:02', 1, 'AnnouncementAdded', 1, 1, NULL, NULL),
(262, 1, NULL, 1, 1, NULL, 262, 'announcement', '2016-11-25 00:49:03', '2016-11-25 00:49:03', 1, 'AnnouncementAdded', 1, 1, NULL, NULL),
(263, 1, NULL, 5, 1, NULL, 263, 'announcement', '2016-11-25 00:49:03', '2016-11-25 00:49:03', 1, 'AnnouncementAdded', 1, 1, NULL, NULL),
(264, 1, NULL, 3, 1, NULL, 264, 'announcement', '2016-11-25 00:49:03', '2016-11-25 00:49:03', 1, 'AnnouncementAdded', 1, 1, NULL, NULL),
(265, 1, NULL, NULL, 1, NULL, 265, 'thematic', '2016-11-25 00:50:33', '2016-11-25 00:52:38', 2, 'ThematicDeleted', 1, 1, NULL, NULL),
(266, 1, NULL, NULL, 1, NULL, 266, 'thematic_advance', '2016-11-25 00:51:07', '2016-11-25 00:52:03', 1, 'ThematicAdvanceDone', 1, 1, NULL, NULL),
(267, 1, NULL, NULL, 1, NULL, 267, 'thematic_advance', '2016-11-25 00:51:46', '2016-11-25 00:52:03', 2, 'ThematicAdvanceDone', 1, 1, NULL, NULL),
(268, 1, NULL, 5, 1, NULL, 268, 'dropbox', '2016-11-25 00:53:56', '2016-11-25 00:53:56', 1, 'DropboxFileAdded', 1, 1, NULL, NULL),
(269, 1, NULL, NULL, 1, NULL, 269, 'document', '2016-11-25 00:55:20', '2016-11-25 00:55:20', 94, 'DocumentInvisible', 1, 0, NULL, NULL),
(270, 1, NULL, NULL, 1, NULL, 270, 'document', '2016-11-25 00:55:44', '2016-11-25 00:55:44', 95, 'DocumentInvisible', 1, 0, NULL, NULL),
(271, 1, NULL, NULL, 3, NULL, 271, 'wiki', '2016-11-25 00:58:34', '2016-11-25 00:58:35', 1, 'WikiAdded', 3, 1, NULL, NULL),
(272, 1, NULL, NULL, 1, NULL, 272, 'calendar_event', '2016-11-25 01:15:34', '2016-11-25 01:15:34', 1, 'CalendareventVisible', 1, 1, '2016-11-24 19:14:00', NULL),
(273, 1, NULL, NULL, 1, NULL, 273, 'announcement', '2016-11-25 01:15:34', '2016-11-25 01:15:34', 2, 'AnnouncementAdded', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_link`
--

CREATE TABLE `c_link` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `category_id` int(11) DEFAULT NULL,
  `display_order` int(11) NOT NULL,
  `on_homepage` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_link_category`
--

CREATE TABLE `c_link_category` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `category_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `display_order` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_lp`
--

CREATE TABLE `c_lp` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `lp_type` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ref` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `path` longtext COLLATE utf8_unicode_ci NOT NULL,
  `force_commit` tinyint(1) NOT NULL,
  `default_view_mod` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'embedded',
  `default_encoding` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'UTF-8',
  `display_order` int(11) NOT NULL DEFAULT '0',
  `content_maker` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_local` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'local',
  `content_license` longtext COLLATE utf8_unicode_ci NOT NULL,
  `prevent_reinit` tinyint(1) NOT NULL DEFAULT '1',
  `js_lib` longtext COLLATE utf8_unicode_ci NOT NULL,
  `debug` tinyint(1) NOT NULL,
  `theme` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `preview_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` int(11) NOT NULL,
  `prerequisite` int(11) NOT NULL,
  `hide_toc_frame` tinyint(1) NOT NULL,
  `seriousgame_mode` tinyint(1) NOT NULL,
  `use_max_score` int(11) NOT NULL DEFAULT '1',
  `autolaunch` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `max_attempts` int(11) NOT NULL,
  `subscribe_users` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `modified_on` datetime NOT NULL,
  `publicated_on` datetime DEFAULT NULL,
  `expired_on` datetime DEFAULT NULL,
  `accumulate_scorm_time` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_lp`
--

INSERT INTO `c_lp` (`iid`, `c_id`, `id`, `lp_type`, `name`, `ref`, `description`, `path`, `force_commit`, `default_view_mod`, `default_encoding`, `display_order`, `content_maker`, `content_local`, `content_license`, `prevent_reinit`, `js_lib`, `debug`, `theme`, `preview_image`, `author`, `session_id`, `prerequisite`, `hide_toc_frame`, `seriousgame_mode`, `use_max_score`, `autolaunch`, `category_id`, `max_attempts`, `subscribe_users`, `created_on`, `modified_on`, `publicated_on`, `expired_on`, `accumulate_scorm_time`) VALUES
(1, 1, 1, 1, 'Lección 1 - N1', NULL, '', '', 0, 'embedded', 'UTF-8', 1, 'Chamilo', 'local', '', 1, '', 0, 'academica', '', '', 0, 0, 0, 0, 1, 0, 1, 0, 0, '2016-11-11 15:58:14', '2016-11-24 22:27:27', '2016-11-21 16:54:00', NULL, 1),
(2, 1, 2, 1, 'Lección 2 - N1', NULL, '', '', 0, 'embedded', 'UTF-8', 2, 'Chamilo', 'local', '', 1, '', 0, 'academica', '', '', 0, 1, 0, 0, 1, 0, 1, 0, 0, '2016-11-11 16:36:50', '2016-11-24 04:58:04', '2016-11-21 15:16:00', NULL, 1),
(3, 1, 3, 1, 'Lección 3 - N1', NULL, '', '', 0, 'embedded', 'UTF-8', 3, 'Chamilo', 'local', '', 1, '', 0, '', '', '', 0, 2, 0, 0, 1, 0, 1, 0, 0, '2016-11-11 16:38:30', '2016-11-24 04:58:38', '2016-11-21 15:13:00', NULL, 1),
(4, 1, 4, 1, 'Lección 1 - N2', NULL, '', '', 0, 'embedded', 'UTF-8', 4, 'Chamilo', 'local', '', 1, '', 0, '', '', '', 0, 3, 0, 0, 1, 0, 2, 0, 0, '2016-11-11 16:46:52', '2016-11-24 04:59:15', '2016-11-21 15:17:00', NULL, 1),
(5, 1, 5, 1, 'Lección 2  - N2', NULL, '', '', 0, 'embedded', 'UTF-8', 5, 'Chamilo', 'local', '', 1, '', 0, '', '', '', 0, 4, 0, 0, 1, 0, 2, 0, 0, '2016-11-18 01:09:01', '2016-11-24 04:59:53', '2016-11-21 15:17:00', NULL, 1),
(6, 1, 6, 1, 'Lección 3 - N2', NULL, '', '', 0, 'embedded', 'UTF-8', 6, 'Chamilo', 'local', '', 1, '', 0, '', '', '', 0, 5, 0, 0, 1, 0, 2, 0, 0, '2016-11-18 01:10:54', '2016-11-24 05:00:43', '2016-11-21 15:18:00', NULL, 1),
(7, 1, 7, 1, 'Lección 4 - N2', NULL, '', '', 0, 'embedded', 'UTF-8', 7, 'Chamilo', 'local', '', 1, '', 0, '', '', '', 0, 6, 0, 0, 1, 0, 2, 0, 0, '2016-11-18 01:13:21', '2016-11-24 05:02:31', '2016-11-21 15:19:00', NULL, 1),
(8, 1, 8, 1, 'Lección 1 - N3', NULL, '', '', 0, 'embedded', 'UTF-8', 8, 'Chamilo', 'local', '', 1, '', 0, '', '', '', 0, 7, 0, 0, 1, 0, 3, 0, 0, '2016-11-24 03:59:08', '2016-11-24 05:58:34', '0000-00-00 00:00:00', NULL, 1),
(9, 1, 9, 1, 'Lección 2 - N3', NULL, '', '', 0, 'embedded', 'UTF-8', 9, 'Chamilo', 'local', '', 1, '', 0, '', '', '', 0, 8, 0, 0, 1, 0, 3, 0, 0, '2016-11-24 04:04:32', '2016-11-24 05:59:21', '0000-00-00 00:00:00', NULL, 1),
(10, 1, 10, 1, 'Lección 1 - N4', NULL, '', '', 0, 'embedded', 'UTF-8', 10, 'Chamilo', 'local', '', 1, '', 0, '', '', '', 0, 9, 0, 0, 1, 0, 4, 0, 0, '2016-11-24 04:06:32', '2016-11-25 00:17:07', '0000-00-00 00:00:00', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_lp_category`
--

CREATE TABLE `c_lp_category` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_lp_category`
--

INSERT INTO `c_lp_category` (`iid`, `c_id`, `name`, `position`) VALUES
(1, 1, 'NIVEL 1', 0),
(2, 1, 'NIVEL 2', 1),
(3, 1, 'NIVEL 3', 2),
(4, 1, 'NIVEL 4', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_lp_category_user`
--

CREATE TABLE `c_lp_category_user` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_lp_item`
--

CREATE TABLE `c_lp_item` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `lp_id` int(11) NOT NULL,
  `item_type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ref` longtext COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(511) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(511) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` longtext COLLATE utf8_unicode_ci NOT NULL,
  `min_score` double NOT NULL,
  `max_score` double DEFAULT '100',
  `mastery_score` double DEFAULT NULL,
  `parent_item_id` int(11) NOT NULL,
  `previous_item_id` int(11) NOT NULL,
  `next_item_id` int(11) NOT NULL,
  `display_order` int(11) NOT NULL,
  `prerequisite` longtext COLLATE utf8_unicode_ci,
  `parameters` longtext COLLATE utf8_unicode_ci,
  `launch_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `max_time_allowed` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `terms` longtext COLLATE utf8_unicode_ci,
  `search_did` int(11) DEFAULT NULL,
  `audio` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prerequisite_min_score` double DEFAULT NULL,
  `prerequisite_max_score` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_lp_item`
--

INSERT INTO `c_lp_item` (`iid`, `c_id`, `id`, `lp_id`, `item_type`, `ref`, `title`, `description`, `path`, `min_score`, `max_score`, `mastery_score`, `parent_item_id`, `previous_item_id`, `next_item_id`, `display_order`, `prerequisite`, `parameters`, `launch_data`, `max_time_allowed`, `terms`, `search_did`, `audio`, `prerequisite_min_score`, `prerequisite_max_score`) VALUES
(2, 1, 2, 1, 'document', '2', 'Video 1: Elaboración de textos', '', '7', 0, 100, NULL, 0, 0, 4, 1, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(3, 1, 3, 1, 'document', '3', 'Video 3: Elaboración de documentos: Currículum', '', '8', 0, 100, NULL, 0, 4, 5, 3, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(4, 1, 4, 1, 'document', '4', 'Video 2: Corrección ortográfica de textos', '', '9', 0, 100, NULL, 0, 2, 3, 2, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(5, 1, 5, 1, 'document', '5', 'Video 4: Elaboración de documentos: Redacción de citas y bibliografía', '', '10', 0, 100, NULL, 0, 3, 7, 4, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(7, 1, 7, 1, 'document', '7', 'Actividad 1: Elaboración de documentos', '', '12', 0, 100, NULL, 0, 5, 41, 5, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(8, 1, 8, 2, 'document', '8', 'Video 1: Elaboración de presentaciones', '', '14', 0, 100, NULL, 0, 0, 9, 1, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(9, 1, 9, 2, 'document', '9', 'Video 2: Mejorando la presentación con elementos de mercadotecnia', '', '15', 0, 100, NULL, 0, 8, 10, 2, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(10, 1, 10, 2, 'document', '10', 'Video 3: Mejorando la presentación con elementos de diseño gráfico', '', '16', 0, 100, NULL, 0, 9, 38, 3, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(12, 1, 12, 3, 'document', '12', 'Video 1: Publicación en redes sociales', '', '19', 0, 100, NULL, 0, 0, 13, 1, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(13, 1, 13, 3, 'document', '13', 'Video 2: Búsqueda de información en la red para la solución de problemas cotidianos', '', '20', 0, 100, NULL, 0, 12, 39, 2, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(17, 1, 17, 4, 'document', '17', 'Video 1: Elaboración de reportes en hojas de cálculo', '', '24', 0, 100, NULL, 0, 18, 40, 4, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(18, 1, 18, 4, 'document', '18', 'Video 2: Representación gráfica de datos', '', '28', 0, 100, NULL, 0, 19, 17, 3, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(19, 1, 19, 4, 'document', '19', 'Video 3: Consolidación de información en hojas de cálculo', '', '29', 0, 100, NULL, 0, 20, 18, 2, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(20, 1, 20, 4, 'document', '20', 'Video 4: Elaboración y uso de macros y plantillas de hojas de cálculo', '', '30', 0, 100, NULL, 0, 0, 19, 1, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(22, 1, 22, 5, 'document', '22', 'Video 1: Conceptos de audio digital', '', '33', 0, 100, NULL, 0, 0, 23, 1, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(23, 1, 23, 5, 'document', '23', 'Video 2: Eliminación de ruido', '', '34', 0, 100, NULL, 0, 22, 24, 2, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(24, 1, 24, 5, 'document', '24', 'Video 3: Edición de video', '', '35', 0, 100, NULL, 0, 23, 25, 3, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(25, 1, 25, 5, 'document', '25', 'Actividad 1: Edición de audio y video', '', '36', 0, 100, NULL, 0, 24, 68, 4, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(26, 1, 26, 6, 'document', '26', 'Video 1: Conceptos de imágenes digitales', '', '38', 0, 100, NULL, 0, 0, 27, 1, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(27, 1, 27, 6, 'document', '27', 'Video 2: Edición de imágenes digitales', '', '39', 0, 100, NULL, 0, 26, 28, 2, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(28, 1, 28, 6, 'document', '28', 'Video 3: Diseño de gráficos 3D', '', '40', 0, 100, NULL, 0, 27, 29, 3, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(29, 1, 29, 6, 'document', '29', 'Video 4: CAD 1: Usos y conceptos', '', '41', 0, 100, NULL, 0, 28, 30, 4, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(30, 1, 30, 6, 'document', '30', 'Video 5: Escalas', '', '42', 0, 100, NULL, 0, 29, 31, 5, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(31, 1, 31, 6, 'document', '31', 'Actividad 1: Edición de imágenes digitales e imágenes 3D', '', '43', 0, 100, NULL, 0, 30, 70, 6, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(32, 1, 32, 7, 'document', '32', 'Video 1: ¿Qué son los lenguajes de programación?', '', '45', 0, 100, NULL, 0, 0, 33, 1, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(33, 1, 33, 7, 'document', '33', 'Video 2: ¿Qué son las bases de datos?', '', '46', 0, 100, NULL, 0, 32, 34, 2, '32', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(34, 1, 34, 7, 'document', '34', 'Video 3: Utilización de apps', '', '47', 0, 100, NULL, 0, 33, 35, 3, '33', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(35, 1, 35, 7, 'document', '35', 'Actividad 1: ¿Qué son los lenguajes de programación?', '', '48', 0, 100, NULL, 0, 34, 36, 4, '34', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(36, 1, 36, 7, 'document', '36', 'Actividad 2: Utilización de las apps', '', '49', 0, 100, NULL, 0, 35, 72, 5, '35', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(38, 1, 38, 2, 'document', '38', 'Actividad -1: Elaboración de presentaciones.', '', '50', 0, 100, NULL, 0, 10, 63, 4, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(39, 1, 39, 3, 'document', '39', 'Actividad 1: Manejo de internet ', '', '51', 0, 100, NULL, 0, 13, 61, 3, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(40, 1, 40, 4, 'document', '40', 'Actividad 1: Hoja de cálculo ', '', '52', 0, 100, NULL, 0, 17, 66, 5, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(41, 1, 41, 1, 'quiz', '41', 'Cuestionario de Leccion 1', '', '1', 0, 0, NULL, 0, 7, 42, 6, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(42, 1, 42, 1, 'student_publication', '42', 'Tarea Leccion 1 ', NULL, '1', 0, 100, NULL, 0, 41, 0, 7, '0', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(43, 1, 43, 8, 'document', '43', 'Video 1: Descripción de los sistemas operativos', '', '55', 0, 100, NULL, 0, 0, 44, 1, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(44, 1, 44, 8, 'document', '44', 'Video 2: Explotación de recursos de la computadora con el sistema operativo', '', '56', 0, 100, NULL, 0, 43, 45, 2, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(45, 1, 45, 8, 'document', '45', 'Video 3: Respaldo de información', '', '57', 0, 100, NULL, 0, 44, 46, 3, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(46, 1, 46, 8, 'document', '46', 'Video 4: Recuperación de información por daño en disco duro', '', '58', 0, 100, NULL, 0, 45, 47, 4, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(47, 1, 47, 8, 'document', '47', 'Video 5: Solución de fallas con disco de arranque', '', '59', 0, 100, NULL, 0, 46, 48, 5, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(48, 1, 48, 8, 'document', '48', 'Video 6: Solución de fallas por virus', '', '60', 0, 100, NULL, 0, 47, 49, 6, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(49, 1, 49, 8, 'document', '49', 'Video 7: Principios de funcionamiento de redes locales', '', '61', 0, 100, NULL, 0, 48, 51, 7, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(51, 1, 51, 8, 'document', '51', 'Actividad 1: Utilización del antivirus y recursos de la computadora', '', '62', 0, 100, NULL, 0, 49, 74, 8, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(52, 1, 52, 9, 'document', '52', 'Video 1: Instalación de dispositivos de redes inalámbricas (WLAN)', '', '64', 0, 100, NULL, 0, 0, 53, 1, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(53, 1, 53, 9, 'document', '53', 'Video 2: Configuración de dispositivos Wi-fi.', '', '65', 0, 100, NULL, 0, 52, 54, 2, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(54, 1, 54, 9, 'document', '54', 'Video 3: Aplicación de mecanismos de seguridad en redes inalámbricas', '', '66', 0, 100, NULL, 0, 53, 55, 3, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(55, 1, 55, 9, 'document', '55', 'Actividad 1: Principios de funcionamiento de redes locales', '', '67', 0, 100, NULL, 0, 54, 76, 4, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(56, 1, 56, 10, 'document', '56', 'Video 1: Sustentabilidad', '', '69', 0, 100, NULL, 0, 0, 57, 1, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(57, 1, 57, 10, 'document', '57', 'Video 2: Beneficios de la puesta a tierra para los sistemas computacionales', '', '70', 0, 100, NULL, 0, 56, 58, 2, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(58, 1, 58, 10, 'document', '58', 'Video 3: Implementación de aplicaciones de nube', '', '71', 0, 100, NULL, 0, 57, 59, 3, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(59, 1, 59, 10, 'document', '59', 'Actividad 1: Implementación para aplicaciones de nube', '', '72', 0, 100, NULL, 0, 58, 78, 4, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(61, 1, 61, 3, 'quiz', '61', 'Preguntas Leccion 3', NULL, '4', 0, 0, NULL, 0, 39, 65, 4, '0', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(63, 1, 63, 2, 'quiz', '63', 'Preguntas Leccion 2', NULL, '3', 0, 0, NULL, 0, 38, 64, 5, '0', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(64, 1, 64, 2, 'student_publication', '64', 'Tarea Leccion 2 - N1 ', NULL, '3', 0, 100, NULL, 0, 63, 0, 6, '0', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(65, 1, 65, 3, 'student_publication', '65', 'Tarea Leccion 3 - N1 ', NULL, '4', 0, 100, NULL, 0, 61, 0, 5, '0', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(66, 1, 66, 4, 'quiz', '66', 'Preguntas Leccion 1 - N2', NULL, '5', 0, 0, NULL, 0, 40, 67, 6, '0', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(67, 1, 67, 4, 'student_publication', '67', 'Tarea Leccion 1 - N2 ', NULL, '5', 0, 100, NULL, 0, 66, 0, 7, '0', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(68, 1, 68, 5, 'quiz', '68', 'Preguntas Leccion 2 - N2', NULL, '6', 0, 0, NULL, 0, 25, 69, 5, '0', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(69, 1, 69, 5, 'student_publication', '69', 'Tarea Leccion 2 - N2 ', NULL, '6', 0, 100, NULL, 0, 68, 0, 6, '0', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(70, 1, 70, 6, 'quiz', '70', 'Preguntas Leccion 3 - N2', '', '6', 0, 0, NULL, 0, 31, 71, 7, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(71, 1, 71, 6, 'student_publication', '71', 'Tarea Leccion 3 - N2 ', NULL, '7', 0, 100, NULL, 0, 70, 0, 8, '0', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(72, 1, 72, 7, 'quiz', '72', 'Preguntas Leccion 4 - N2', '', '5', 0, 0, NULL, 0, 36, 73, 6, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(73, 1, 73, 7, 'student_publication', '73', 'Tarea Leccion 4 - N2 ', NULL, '8', 0, 100, NULL, 0, 72, 0, 7, '0', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(74, 1, 74, 8, 'quiz', '74', 'Preguntas Leccion 1 - N3', '', '6', 0, 0, NULL, 0, 51, 75, 9, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(75, 1, 75, 8, 'student_publication', '75', 'Tarea Leccion 1 - N3 ', NULL, '9', 0, 100, NULL, 0, 74, 0, 10, '0', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(76, 1, 76, 9, 'quiz', '76', 'Preguntas Leccion 2- N3', '', '5', 0, 0, NULL, 0, 55, 77, 5, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(77, 1, 77, 9, 'student_publication', '77', 'Tarea Leccion 2 - N3 ', NULL, '10', 0, 100, NULL, 0, 76, 0, 6, '0', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(78, 1, 78, 10, 'quiz', '78', 'Preguntas Leccion 1 - N4', '', '4', 0, 0, NULL, 0, 59, 79, 5, '', NULL, '', '0', NULL, NULL, NULL, NULL, NULL),
(79, 1, 79, 10, 'student_publication', '79', 'Tarea Leccion 1 - N4 ', NULL, '11', 0, 100, NULL, 0, 78, 0, 6, '0', NULL, '', '0', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_lp_item_view`
--

CREATE TABLE `c_lp_item_view` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `lp_item_id` int(11) NOT NULL,
  `lp_view_id` int(11) NOT NULL,
  `view_count` int(11) NOT NULL,
  `start_time` int(11) NOT NULL,
  `total_time` int(11) NOT NULL,
  `score` double NOT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'not attempted',
  `suspend_data` longtext COLLATE utf8_unicode_ci,
  `lesson_location` longtext COLLATE utf8_unicode_ci,
  `core_exit` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `max_score` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_lp_item_view`
--

INSERT INTO `c_lp_item_view` (`iid`, `c_id`, `id`, `lp_item_id`, `lp_view_id`, `view_count`, `start_time`, `total_time`, `score`, `status`, `suspend_data`, `lesson_location`, `core_exit`, `max_score`) VALUES
(1, 1, 1, 1, 1, 1, 1478881344, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(2, 1, 2, 2, 1, 1, 1479755378, 63, 0, 'completed', '', '', 'none', '100'),
(3, 1, 3, 3, 1, 1, 1479755453, 5, 0, 'completed', '', '', 'none', '100'),
(4, 1, 4, 4, 1, 1, 1479755405, 41, 0, 'completed', '', '', 'none', '100'),
(5, 1, 5, 5, 1, 1, 1479755464, 5, 0, 'completed', '', '', 'none', '100'),
(6, 1, 6, 6, 1, 1, 1478881677, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(7, 1, 7, 7, 1, 1, 1479961350, 7, 0, 'completed', '', '', 'none', '100'),
(8, 1, 8, 8, 2, 1, 1479755975, 0, 0, 'completed', '', '', 'none', '100'),
(9, 1, 9, 9, 2, 1, 1478882240, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(10, 1, 10, 10, 2, 1, 1478882249, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(11, 1, 11, 11, 2, 1, 1478882257, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(12, 1, 12, 12, 3, 1, 1479741970, 0, 0, 'completed', '', '', 'none', '100'),
(13, 1, 13, 13, 3, 1, 1478882330, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(14, 1, 14, 14, 3, 1, 1478882339, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(15, 1, 15, 2, 4, 1, 1480028059, 195, 0, 'completed', '', '', 'none', '100'),
(16, 1, 16, 4, 4, 1, 1479750596, 832, 0, 'completed', '', '', 'none', '100'),
(17, 1, 17, 3, 4, 1, 1479750605, 63, 0, 'completed', '', '', 'none', '100'),
(18, 1, 18, 5, 4, 1, 1479750614, 40, 0, 'completed', '', '', 'none', '100'),
(19, 1, 19, 7, 4, 1, 1479757001, 308, 0, 'completed', '', '', 'none', '100'),
(20, 1, 20, 15, 5, 1, 1478882863, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(21, 1, 21, 16, 5, 1, 1478884077, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(22, 1, 22, 17, 5, 1, 1479431825, 0, 0, 'completed', '', '', 'none', '100'),
(23, 1, 23, 15, 6, 1, 1478884137, 1, 0, 'completed', '', '', 'none', '100'),
(24, 1, 24, 16, 6, 1, 1478884144, 44, 0, 'completed', '', '', 'none', '100'),
(25, 1, 25, 17, 6, 1, 1479965281, 59, 0, 'completed', '', '', 'none', '100'),
(26, 1, 26, 18, 5, 1, 1478884257, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(27, 1, 27, 19, 5, 1, 1479431270, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(28, 1, 28, 20, 5, 1, 1479431300, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(29, 1, 29, 21, 5, 1, 1479431310, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(30, 1, 30, 22, 7, 1, 1479741460, 0, 0, 'completed', '', '', 'none', '100'),
(31, 1, 31, 23, 7, 1, 1479431391, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(32, 1, 32, 24, 7, 1, 1479431399, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(33, 1, 33, 25, 7, 1, 1479431425, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(34, 1, 34, 26, 8, 1, 1479431470, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(35, 1, 35, 27, 8, 1, 1479431478, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(36, 1, 36, 28, 8, 1, 1479431486, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(37, 1, 37, 29, 8, 1, 1479431498, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(38, 1, 38, 30, 8, 1, 1479431506, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(39, 1, 39, 31, 8, 1, 1479431515, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(40, 1, 40, 32, 9, 1, 1479755052, 20, 0, 'completed', '', '', 'none', '100'),
(41, 1, 41, 33, 9, 1, 1479755077, 4, 0, 'completed', '', '', 'none', '100'),
(42, 1, 42, 34, 9, 1, 1479755083, 252, 0, 'completed', '', '', 'none', '100'),
(43, 1, 43, 35, 9, 1, 1479755342, 14, 0, 'completed', '', '', 'none', '100'),
(44, 1, 44, 36, 9, 1, 1479755341, 0, 0, 'completed', '', '', 'none', '100'),
(45, 1, 45, 12, 10, 1, 1479739219, 0, 0, 'completed', '', '', 'none', '100'),
(46, 1, 46, 13, 10, 1, 1479743390, 68, 0, 'completed', '', '', 'none', '100'),
(47, 1, 47, 14, 10, 1, 1479746144, 1604, 0, 'completed', '', '', 'none', '100'),
(48, 1, 48, 37, 3, 1, 1479741300, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(49, 1, 49, 8, 11, 1, 1479743060, 9, 0, 'completed', '', '', 'none', '100'),
(50, 1, 50, 9, 11, 1, 1479741342, 0, 0, 'completed', '', '', 'none', '100'),
(51, 1, 51, 10, 11, 1, 1479743105, 69, 0, 'completed', '', '', 'none', '100'),
(52, 1, 52, 11, 11, 1, 1479747375, 0, 0, 'completed', '', '', 'none', '100'),
(53, 1, 53, 37, 10, 1, 1479743317, 2362, 0, 'completed', '', '', 'none', '100'),
(54, 1, 54, 22, 12, 1, 1479746907, 1, 0, 'completed', '', '', 'none', '100'),
(55, 1, 55, 23, 12, 1, 1479746928, 78, 0, 'completed', '', '', 'none', '100'),
(56, 1, 56, 24, 12, 1, 1479747012, 2, 0, 'completed', '', '', 'none', '100'),
(57, 1, 57, 25, 12, 1, 1479966321, 36, 0, 'completed', '', '', 'none', '100'),
(58, 1, 58, 26, 13, 1, 1479750357, 88, 0, 'completed', '', '', 'none', '100'),
(59, 1, 59, 27, 13, 1, 1479750328, 24, 0, 'completed', '', '', 'none', '100'),
(60, 1, 60, 28, 13, 1, 1479750385, 4, 0, 'completed', '', '', 'none', '100'),
(61, 1, 61, 29, 13, 1, 1479750395, 2, 0, 'completed', '', '', 'none', '100'),
(62, 1, 62, 30, 13, 1, 1479750402, 2, 0, 'completed', '', '', 'none', '100'),
(63, 1, 63, 31, 13, 1, 1479966550, 148, 0, 'completed', '', '', 'none', '100'),
(64, 1, 64, 38, 2, 1, 1479749469, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(65, 1, 65, 39, 3, 1, 1479749780, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(66, 1, 66, 40, 5, 1, 1479750230, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(67, 1, 67, 32, 14, 1, 1479750434, 2, 0, 'completed', '', '', 'none', '100'),
(68, 1, 68, 33, 14, 1, 1479750455, 2, 0, 'completed', '', '', 'none', '100'),
(69, 1, 69, 34, 14, 1, 1479750462, 2, 0, 'completed', '', '', 'none', '100'),
(70, 1, 70, 35, 14, 1, 1479750469, 1, 0, 'completed', '', '', 'none', '100'),
(71, 1, 71, 36, 14, 1, 1479966798, 27, 0, 'completed', '', '', 'none', '100'),
(72, 1, 72, 41, 1, 1, 1479755927, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(73, 1, 73, 41, 4, 1, 1479756992, 253, 0, 'completed', '', '', 'none', '100'),
(74, 1, 74, 42, 1, 1, 1479771754, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(75, 1, 75, 42, 4, 1, 1480026560, 18, 0, 'completed', '', '', 'none', '100'),
(76, 1, 76, 43, 15, 1, 1479959977, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(77, 1, 77, 44, 15, 1, 1479959989, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(78, 1, 78, 45, 15, 1, 1479959999, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(79, 1, 79, 46, 15, 1, 1479960009, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(80, 1, 80, 47, 15, 1, 1479960018, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(81, 1, 81, 48, 15, 1, 1479960028, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(82, 1, 82, 49, 15, 1, 1479960037, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(83, 1, 83, 50, 15, 1, 1479960157, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(84, 1, 84, 51, 15, 1, 1479960164, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(85, 1, 85, 52, 16, 1, 1479960306, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(86, 1, 86, 53, 16, 1, 1479960316, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(87, 1, 87, 54, 16, 1, 1479960328, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(88, 1, 88, 55, 16, 1, 1479960356, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(89, 1, 89, 56, 17, 1, 1479967451, 0, 0, 'completed', '', '', 'none', '100'),
(90, 1, 90, 57, 17, 1, 1479960437, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(91, 1, 91, 58, 17, 1, 1479960446, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(92, 1, 92, 59, 17, 1, 1479960483, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(93, 1, 93, 60, 2, 1, 1479961658, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(94, 1, 94, 61, 3, 1, 1479961695, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(95, 1, 95, 62, 3, 1, 1479962505, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(96, 1, 96, 39, 10, 1, 1479962599, 103, 0, 'completed', '', '', 'none', '100'),
(97, 1, 97, 61, 10, 1, 1479962586, 98, 0, 'completed', '', '', 'none', '100'),
(98, 1, 98, 62, 10, 1, 1479962801, 49, 0, 'completed', '', '', 'none', '100'),
(99, 0, 99, 62, 10, 1, 1479962785, 0, 0, 'completed', '', '', 'none', '100'),
(100, 0, 100, 42, 4, 1, 1479962806, 0, 0, 'completed', '', '', 'none', '100'),
(101, 1, 101, 38, 11, 1, 1479962851, 131, 0, 'completed', '', '', 'none', '100'),
(102, 1, 102, 60, 11, 1, 1479962844, 93, 0, 'completed', '', '', 'none', '100'),
(103, 1, 103, 63, 2, 1, 1479963490, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(104, 1, 104, 64, 2, 1, 1479963490, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(105, 1, 105, 65, 3, 1, 1479963525, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(106, 1, 106, 66, 5, 1, 1479963563, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(107, 1, 107, 67, 5, 1, 1479963563, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(108, 1, 108, 68, 7, 1, 1479963596, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(109, 1, 109, 69, 7, 1, 1479963596, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(110, 1, 110, 70, 8, 1, 1479963632, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(111, 1, 111, 71, 8, 1, 1479963645, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(112, 1, 112, 72, 9, 1, 1479963670, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(113, 1, 113, 73, 9, 1, 1479963756, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(114, 1, 114, 74, 15, 1, 1479963781, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(115, 1, 115, 75, 15, 1, 1479963798, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(116, 1, 116, 76, 16, 1, 1479963917, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(117, 1, 117, 77, 16, 1, 1479963938, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(118, 1, 118, 78, 17, 1, 1479963966, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(119, 1, 119, 63, 11, 1, 1479964276, 512, 0, 'completed', NULL, NULL, 'none', NULL),
(120, 1, 120, 64, 11, 1, 1479965087, 12, 0, 'completed', '', '', 'none', '100'),
(121, 1, 121, 65, 10, 1, 1479965245, 11, 0, 'completed', '', '', 'none', '100'),
(122, 1, 122, 20, 6, 1, 1479965312, 2, 0, 'completed', '', '', 'none', '100'),
(123, 1, 123, 19, 6, 1, 1479965323, 1, 0, 'completed', '', '', 'none', '100'),
(124, 1, 124, 18, 6, 1, 1479965327, 6, 0, 'completed', '', '', 'none', '100'),
(125, 1, 125, 40, 6, 1, 1479965431, 880, 0, 'completed', '', '', 'none', '100'),
(126, 1, 126, 66, 6, 1, 1479965273, 61, 0, 'completed', '', '', 'none', '100'),
(127, 1, 127, 67, 6, 1, 1480027834, 21, 0, 'completed', '', '', 'none', '100'),
(128, 1, 128, 68, 12, 1, 1479966317, 13, 0, 'completed', '', '', 'none', '100'),
(129, 1, 129, 69, 12, 1, 1479966390, 51, 0, 'completed', '', '', 'none', '100'),
(130, 1, 130, 70, 13, 1, 1479966544, 85, 0, 'completed', '', '', 'none', '100'),
(131, 1, 131, 71, 13, 1, 1480027823, 43, 0, 'completed', '', '', 'none', '100'),
(132, 1, 132, 72, 14, 1, 1479966793, 45, 0, 'completed', NULL, NULL, 'none', NULL),
(133, 1, 133, 73, 14, 1, 1480027811, 0, 0, 'completed', '', '', 'none', '100'),
(134, 1, 134, 79, 17, 1, 1479967173, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(135, 1, 135, 43, 18, 1, 1479967211, 20, 0, 'completed', '', '', 'none', '100'),
(136, 1, 136, 44, 18, 1, 1479967237, 12, 0, 'completed', '', '', 'none', '100'),
(137, 1, 137, 45, 18, 1, 1479967254, 2, 0, 'completed', '', '', 'none', '100'),
(138, 1, 138, 46, 18, 1, 1479967261, 4, 0, 'completed', '', '', 'none', '100'),
(139, 1, 139, 47, 18, 1, 1479967313, 24, 0, 'completed', '', '', 'none', '100'),
(140, 1, 140, 48, 18, 1, 1479967342, 31, 0, 'completed', '', '', 'none', '100'),
(141, 1, 141, 49, 18, 1, 1479967325, 4, 0, 'completed', '', '', 'none', '100'),
(142, 1, 142, 51, 18, 1, 1479967331, 7, 0, 'completed', '', '', 'none', '100'),
(143, 1, 143, 74, 18, 1, 1479967208, 15, 0, 'completed', '', '', 'none', '100'),
(144, 1, 144, 75, 18, 1, 1480027799, 0, 0, 'completed', '', '', 'none', '100'),
(145, 1, 145, 80, 17, 1, 1479967618, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(146, 1, 146, 56, 19, 1, 1479968223, 22, 0, 'completed', '', '', 'none', '100'),
(147, 1, 147, 57, 19, 1, 1479968257, 19, 0, 'completed', '', '', 'none', '100'),
(148, 1, 148, 58, 19, 1, 1479968252, 0, 0, 'completed', '', '', 'none', '100'),
(149, 1, 149, 59, 19, 1, 1479968256, 48, 0, 'completed', '', '', 'none', '100'),
(150, 1, 150, 78, 19, 1, 1479967998, 30, 0, 'completed', '', '', 'none', '100'),
(151, 1, 151, 79, 19, 1, 1480033149, 135, 0, 'completed', '', '', 'none', '100'),
(152, 1, 152, 80, 19, 1, 1480028156, 33, 0, 'completed', '', '', 'none', '100'),
(153, 1, 153, 52, 20, 1, 1479968023, 20, 0, 'completed', '', '', 'none', '100'),
(154, 1, 154, 53, 20, 1, 1479968049, 4, 0, 'completed', '', '', 'none', '100'),
(155, 1, 155, 54, 20, 1, 1479968055, 3, 0, 'completed', '', '', 'none', '100'),
(156, 1, 156, 55, 20, 1, 1479968061, 55, 0, 'completed', '', '', 'none', '100'),
(157, 1, 157, 76, 20, 1, 1479968019, 82, 0, 'completed', '', '', 'none', '100'),
(158, 1, 158, 77, 20, 1, 1480027788, 8, 0, 'completed', '', '', 'none', '100'),
(159, 1, 159, 81, 21, 1, 1480027269, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(160, 1, 160, 82, 21, 1, 1480027282, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(161, 1, 161, 82, 22, 1, 1480027478, 0, 0, 'not attempted', NULL, NULL, 'none', NULL),
(162, 1, 162, 2, 23, 1, 1480028715, 57, 0, 'completed', '', '', 'none', '100'),
(163, 1, 163, 4, 23, 1, 1480028774, 4, 0, 'completed', '', '', 'none', '100'),
(164, 1, 164, 3, 23, 1, 1480028781, 10, 0, 'completed', '', '', 'none', '100'),
(165, 1, 165, 5, 23, 1, 1480028793, 25, 0, 'completed', '', '', 'none', '100'),
(166, 1, 166, 7, 23, 1, 1480028833, 68, 0, 'completed', '', '', 'none', '100'),
(167, 1, 167, 41, 23, 1, 1480028710, 72, 0, 'completed', '', '', 'none', '100'),
(168, 1, 168, 42, 23, 1, 1480028935, 0, 0, 'completed', '', '', 'none', '100'),
(169, 1, 169, 8, 24, 1, 1480029029, 2, 0, 'completed', '', '', 'none', '100'),
(170, 1, 170, 9, 24, 1, 1480029035, 5, 0, 'completed', '', '', 'none', '100'),
(171, 1, 171, 10, 24, 1, 1480029043, 2, 0, 'completed', '', '', 'none', '100'),
(172, 1, 172, 38, 24, 1, 1480029054, 138, 0, 'completed', '', '', 'none', '100'),
(173, 1, 173, 63, 24, 1, 1480029028, 83, 0, 'completed', '', '', 'none', '100'),
(174, 1, 174, 64, 24, 1, 1480029289, 0, 0, 'completed', '', '', 'none', '100'),
(175, 1, 175, 12, 25, 1, 1480037242, 9, 0, 'completed', '', '', 'none', '100'),
(176, 1, 176, 13, 25, 1, 1480029342, 2, 0, 'completed', '', '', 'none', '100'),
(177, 1, 177, 39, 25, 1, 1480029347, 7, 0, 'completed', '', '', 'none', '100'),
(178, 1, 178, 61, 25, 1, 1480029334, 73, 0, 'completed', NULL, NULL, 'none', NULL),
(179, 1, 179, 65, 25, 1, 1480037137, 19, 0, 'completed', '', '', 'none', '100'),
(180, 1, 180, 20, 26, 1, 1480029517, 15, 0, 'completed', '', '', 'none', '100'),
(181, 1, 181, 19, 26, 1, 1480029567, 16, 0, 'completed', '', '', 'none', '100'),
(182, 1, 182, 18, 26, 1, 1480029585, 29, 0, 'completed', '', '', 'none', '100'),
(183, 1, 183, 17, 26, 1, 1480029616, 3, 0, 'completed', '', '', 'none', '100'),
(184, 1, 184, 40, 26, 1, 1480029620, 17, 0, 'completed', '', '', 'none', '100'),
(185, 1, 185, 66, 26, 1, 1480029516, 251, 0, 'completed', '', '', 'none', '100'),
(186, 1, 186, 67, 26, 1, 1480029705, 53, 0, 'completed', '', '', 'none', '100'),
(187, 1, 187, 22, 27, 1, 1480029944, 1, 0, 'completed', '', '', 'none', '100'),
(188, 1, 188, 23, 27, 1, 1480029961, 44, 0, 'completed', '', '', 'none', '100'),
(189, 1, 189, 24, 27, 1, 1480030036, 37, 0, 'completed', '', '', 'none', '100'),
(190, 1, 190, 25, 27, 1, 1480030073, 2, 0, 'completed', '', '', 'none', '100'),
(191, 1, 191, 68, 27, 1, 1480029940, 16, 0, 'completed', '', '', 'none', '100'),
(192, 1, 192, 69, 27, 1, 1480030111, 0, 0, 'completed', '', '', 'none', '100'),
(193, 1, 193, 26, 28, 1, 1480030129, 32, 0, 'completed', '', '', 'none', '100'),
(194, 1, 194, 27, 28, 1, 1480030171, 60, 0, 'completed', '', '', 'none', '100'),
(195, 1, 195, 28, 28, 1, 1480030253, 14, 0, 'completed', '', '', 'none', '100'),
(196, 1, 196, 29, 28, 1, 1480030228, 7, 0, 'completed', '', '', 'none', '100'),
(197, 1, 197, 30, 28, 1, 1480030240, 3, 0, 'completed', '', '', 'none', '100'),
(198, 1, 198, 31, 28, 1, 1480030349, 81, 0, 'completed', '', '', 'none', '100'),
(199, 1, 199, 70, 28, 1, 1480030125, 59, 0, 'completed', '', '', 'none', '100'),
(200, 1, 200, 71, 28, 1, 1480030373, 0, 0, 'completed', '', '', 'none', '100'),
(201, 1, 201, 32, 29, 1, 1480030388, 27, 0, 'completed', '', '', 'none', '100'),
(202, 1, 202, 33, 29, 1, 1480030421, 4, 0, 'completed', '', '', 'none', '100'),
(203, 1, 203, 34, 29, 1, 1480030432, 15, 0, 'completed', '', '', 'none', '100'),
(204, 1, 204, 35, 29, 1, 1480030478, 78, 0, 'completed', '', '', 'none', '100'),
(205, 1, 205, 36, 29, 1, 1480030446, 10, 0, 'completed', '', '', 'none', '100'),
(206, 1, 206, 72, 29, 1, 1480030384, 50, 0, 'completed', '', '', 'none', '100'),
(207, 1, 207, 73, 29, 1, 1480030641, 0, 0, 'completed', '', '', 'none', '100'),
(208, 1, 208, 43, 30, 1, 1480030663, 20, 0, 'completed', '', '', 'none', '100'),
(209, 1, 209, 44, 30, 1, 1480030716, 20, 0, 'completed', '', '', 'none', '100'),
(210, 1, 210, 45, 30, 1, 1480030741, 25, 0, 'completed', '', '', 'none', '100'),
(211, 1, 211, 46, 30, 1, 1480030772, 2, 0, 'completed', '', '', 'none', '100'),
(212, 1, 212, 47, 30, 1, 1480030787, 13, 0, 'completed', '', '', 'none', '100'),
(213, 1, 213, 48, 30, 1, 1480030877, 2, 0, 'completed', '', '', 'none', '100'),
(214, 1, 214, 49, 30, 1, 1480030816, 14, 0, 'completed', '', '', 'none', '100'),
(215, 1, 215, 51, 30, 1, 1480030827, 47, 0, 'completed', '', '', 'none', '100'),
(216, 1, 216, 74, 30, 1, 1480030656, 15, 0, 'completed', '', '', 'none', '100'),
(217, 1, 217, 75, 30, 1, 1480030902, 0, 0, 'completed', '', '', 'none', '100'),
(218, 1, 218, 52, 31, 1, 1480030922, 36, 0, 'completed', '', '', 'none', '100'),
(219, 1, 219, 53, 31, 1, 1480030970, 6, 0, 'completed', '', '', 'none', '100'),
(220, 1, 220, 54, 31, 1, 1480031075, 98, 0, 'completed', '', '', 'none', '100'),
(221, 1, 221, 55, 31, 1, 1480030974, 98, 0, 'completed', '', '', 'none', '100'),
(222, 1, 222, 76, 31, 1, 1480030917, 86, 0, 'completed', '', '', 'none', '100'),
(223, 1, 223, 77, 31, 1, 1480031205, 0, 0, 'completed', '', '', 'none', '100'),
(224, 1, 224, 56, 32, 1, 1480031267, 2, 0, 'completed', '', '', 'none', '100'),
(225, 1, 225, 57, 32, 1, 1480031283, 24, 0, 'completed', '', '', 'none', '100'),
(226, 1, 226, 58, 32, 1, 1480031313, 15, 0, 'completed', '', '', 'none', '100'),
(227, 1, 227, 59, 32, 1, 1480031458, 146, 0, 'completed', '', '', 'none', '100'),
(228, 1, 228, 78, 32, 1, 1480031263, 115, 0, 'completed', '', '', 'none', '100'),
(229, 1, 229, 79, 32, 1, 1480031893, 0, 0, 'completed', '', '', 'none', '100'),
(230, 1, 230, 82, 33, 1, 1480031560, 0, 0, 'not attempted', NULL, NULL, 'none', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_lp_iv_interaction`
--

CREATE TABLE `c_lp_iv_interaction` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `lp_iv_id` bigint(20) NOT NULL,
  `interaction_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `interaction_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `weighting` double NOT NULL,
  `completion_time` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `correct_responses` longtext COLLATE utf8_unicode_ci NOT NULL,
  `student_response` longtext COLLATE utf8_unicode_ci NOT NULL,
  `result` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latency` varchar(16) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_lp_iv_objective`
--

CREATE TABLE `c_lp_iv_objective` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `lp_iv_id` bigint(20) NOT NULL,
  `order_id` int(11) NOT NULL,
  `objective_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `score_raw` double NOT NULL,
  `score_max` double NOT NULL,
  `score_min` double NOT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_lp_view`
--

CREATE TABLE `c_lp_view` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `lp_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `view_count` int(11) NOT NULL,
  `last_item` int(11) NOT NULL,
  `progress` int(11) DEFAULT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_lp_view`
--

INSERT INTO `c_lp_view` (`iid`, `c_id`, `id`, `lp_id`, `user_id`, `view_count`, `last_item`, `progress`, `session_id`) VALUES
(1, 1, 1, 1, 1, 1, 7, 71, 0),
(2, 1, 2, 2, 1, 1, 8, 17, 0),
(3, 1, 3, 3, 1, 1, 12, 20, 0),
(4, 1, 4, 1, 3, 1, 2, 100, 0),
(5, 1, 5, 4, 1, 1, 17, 14, 0),
(6, 1, 6, 4, 3, 1, 67, 100, 0),
(7, 1, 7, 5, 1, 1, 22, 17, 0),
(8, 1, 8, 6, 1, 1, 26, 0, 0),
(9, 1, 9, 7, 1, 1, 36, 71, 0),
(10, 1, 10, 3, 3, 1, 65, 100, 0),
(11, 1, 11, 2, 3, 1, 64, 100, 0),
(12, 1, 12, 5, 3, 1, 68, 100, 0),
(13, 1, 13, 6, 3, 1, 71, 100, 0),
(14, 1, 14, 7, 3, 1, 73, 100, 0),
(15, 1, 15, 8, 1, 1, 43, 0, 0),
(16, 1, 16, 9, 1, 1, 52, 0, 0),
(17, 1, 17, 10, 1, 1, 56, 17, 0),
(18, 1, 18, 8, 3, 1, 75, 100, 0),
(19, 1, 19, 10, 3, 1, 79, 100, 0),
(20, 1, 20, 9, 3, 1, 77, 100, 0),
(23, 1, 23, 1, 5, 1, 42, 100, 0),
(24, 1, 24, 2, 5, 1, 64, 100, 0),
(25, 1, 25, 3, 5, 1, 12, 100, 0),
(26, 1, 26, 4, 5, 1, 66, 100, 0),
(27, 1, 27, 5, 5, 1, 69, 100, 0),
(28, 1, 28, 6, 5, 1, 71, 100, 0),
(29, 1, 29, 7, 5, 1, 73, 100, 0),
(30, 1, 30, 8, 5, 1, 75, 100, 0),
(31, 1, 31, 9, 5, 1, 77, 100, 0),
(32, 1, 32, 10, 5, 1, 79, 100, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_notebook`
--

CREATE TABLE `c_notebook` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `notebook_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_online_connected`
--

CREATE TABLE `c_online_connected` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `last_connection` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_online_link`
--

CREATE TABLE `c_online_link` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_permission_group`
--

CREATE TABLE `c_permission_group` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  `tool` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_permission_task`
--

CREATE TABLE `c_permission_task` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `task_id` int(11) NOT NULL,
  `tool` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_permission_user`
--

CREATE TABLE `c_permission_user` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `tool` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_quiz`
--

CREATE TABLE `c_quiz` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `sound` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` tinyint(1) NOT NULL,
  `random` int(11) NOT NULL,
  `random_answers` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `results_disabled` int(11) NOT NULL,
  `access_condition` longtext COLLATE utf8_unicode_ci,
  `max_attempt` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `feedback_type` int(11) NOT NULL,
  `expired_time` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `propagate_neg` int(11) NOT NULL,
  `save_correct_answers` tinyint(1) NOT NULL,
  `review_answers` int(11) NOT NULL,
  `random_by_category` int(11) NOT NULL,
  `text_when_finished` longtext COLLATE utf8_unicode_ci,
  `display_category_name` int(11) NOT NULL,
  `pass_percentage` int(11) DEFAULT NULL,
  `question_selection_type` int(11) DEFAULT NULL,
  `hide_question_title` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_quiz`
--

INSERT INTO `c_quiz` (`iid`, `c_id`, `id`, `title`, `description`, `sound`, `type`, `random`, `random_answers`, `active`, `results_disabled`, `access_condition`, `max_attempt`, `start_time`, `end_time`, `feedback_type`, `expired_time`, `session_id`, `propagate_neg`, `save_correct_answers`, `review_answers`, `random_by_category`, `text_when_finished`, `display_category_name`, `pass_percentage`, `question_selection_type`, `hide_question_title`) VALUES
(1, 1, 1, 'Ejercicio 1', '', '', 2, 0, 0, 0, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, '', 1, 0, 1, 0),
(2, 1, 2, 'Ejercicio 2', '', '', 2, 0, 0, -1, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, '', 1, 0, 1, 0),
(3, 1, 3, 'Preguntas Leccion 2', '', '', 2, 0, 0, 0, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, '', 1, 0, 1, 0),
(4, 1, 4, 'Preguntas Leccion 3', '', '', 2, 0, 0, 0, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, '', 1, 0, 1, 0),
(5, 1, 5, 'Preguntas Leccion 1 - N2', '', '', 2, 0, 0, 0, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, '', 1, 0, 1, 0),
(6, 1, 6, 'Preguntas Leccion 2 - N2', '', '', 2, 0, 0, 0, 0, NULL, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, '', 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_quiz_answer`
--

CREATE TABLE `c_quiz_answer` (
  `iid` int(10) UNSIGNED NOT NULL,
  `id_auto` int(10) UNSIGNED NOT NULL,
  `c_id` int(10) UNSIGNED NOT NULL,
  `id` int(11) DEFAULT NULL,
  `question_id` int(11) NOT NULL,
  `answer` longtext COLLATE utf8_unicode_ci NOT NULL,
  `correct` int(11) DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `ponderation` double NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL,
  `hotspot_coordinates` longtext COLLATE utf8_unicode_ci,
  `hotspot_type` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `destination` longtext COLLATE utf8_unicode_ci,
  `answer_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_quiz_answer`
--

INSERT INTO `c_quiz_answer` (`iid`, `id_auto`, `c_id`, `id`, `question_id`, `answer`, `correct`, `comment`, `ponderation`, `position`, `hotspot_coordinates`, `hotspot_type`, `destination`, `answer_code`) VALUES
(1, 1, 1, 1, 1, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Presentaci&oacute;n y realizaci&oacute;n de dise&ntilde;o gr&aacute;fico</p>\r\n</body>\r\n</html>', 0, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(2, 2, 1, 2, 1, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Call Centers, Soporte a Sistemas, Empresas de Comercializaci&oacute;n de Productos y Servicios</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(3, 3, 1, 3, 1, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Actualizar inventarios de productos</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(4, 4, 1, 4, 1, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Mantenimiento de Laptops, Dispositivos M&oacute;viles, etc</p>\r\n</body>\r\n</html>', 1, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(5, 5, 1, 5, 2, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Manejo de equipo de oficina, Administra aplicaciones de comunicaci&oacute;n, Edici&oacute;n de im&aacute;genes, audio y video digitales</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(6, 6, 1, 6, 2, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Proporciona soporte en la instalaci&oacute;n y uso de aplicaciones. Manejo de equipo de oficina, Uso de aplicaciones y administra aplicaciones de comunicaci&oacute;n</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(7, 7, 1, 7, 2, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Maneja bases de datos, Edici&oacute;n de im&aacute;genes, audio y video digitales, Manejo de equipo de oficina</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(8, 8, 1, 8, 2, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Extrae informaci&oacute;n de bases de datos para elaborar reportes ejecutivos, Proporciona soporte en la instalaci&oacute;n y uso de aplicaciones y Administra aplicaciones de comunicaci&oacute;n</p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(9, 9, 1, 9, 3, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Herramientas del Sistema Operativo y de dise&ntilde;o asistido por computadora, Elaboraci&oacute;n de documentos administrativos y contables, Manejo de bases de datos</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(10, 10, 1, 10, 3, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Navegaci&oacute;n y uso de software libre para crear documentos administrativos y multimedia, Distintos lenguajes de programaci&oacute;n, Edici&oacute;n&nbsp; de im&aacute;genes, audio y v&iacute;deo digitales</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(11, 11, 1, 11, 3, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Distintos lenguajes de programaci&oacute;n, Manejo de bases de datos, Dise&ntilde;o gr&aacute;fico</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(12, 12, 1, 12, 3, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Comunicaci&oacute;n efectiva de la informaci&oacute;n escrita, sin errores ortogr&aacute;ficos ni de redacci&oacute;n, para todos los tipos de documentos que elabore, Herramientas del Sistema Operativo y de dise&ntilde;o asistido por computadora, Dise&ntilde;o gr&aacute;fico</p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(13, 13, 1, 13, 4, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>3, 1, 4, 2</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(14, 14, 1, 14, 4, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>1, 4, 3, 2&nbsp;</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(15, 15, 1, 15, 4, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body style="cursor: auto;">\r\n<p>4, 1 ,2 ,3</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(16, 16, 1, 16, 4, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>3, 2, 1, 4</p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(17, 17, 1, 17, 5, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>5</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(18, 18, 1, 18, 5, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>2</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(19, 19, 1, 19, 5, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>1</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(20, 20, 1, 20, 5, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>4</p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(21, 21, 1, 21, 5, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>3</p>\r\n</body>\r\n</html>', 0, '', 0, 5, '', '', '0@@0@@0@@0', NULL),
(22, 22, 1, 22, 6, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Agudas</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(23, 23, 1, 23, 6, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Sobreesdr&uacute;julas</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(24, 24, 1, 24, 6, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Esdr&uacute;julas</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(25, 25, 1, 25, 6, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Graves</p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(26, 26, 1, 26, 7, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Sobreesdr&uacute;julas</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(27, 27, 1, 27, 7, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Agudas</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(28, 28, 1, 28, 7, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Esdr&uacute;julas</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(29, 29, 1, 29, 7, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Graves</p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(30, 30, 1, 30, 8, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Saber ser</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(31, 31, 1, 31, 8, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Saber</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(32, 32, 1, 32, 8, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Saber hacer</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(33, 33, 1, 33, 8, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Saber valores</p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(34, 34, 1, 34, 9, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Educacionales, laborales y Vivenciales</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(35, 35, 1, 35, 9, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>De estudiante y de ciudadan</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(36, 36, 1, 36, 9, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>De la vida y sus valores</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(37, 37, 1, 37, 9, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>De oficio y servidor de la patria</p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(38, 38, 1, 38, 10, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>6</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(39, 39, 1, 39, 10, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>5</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(40, 40, 1, 40, 10, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>8</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(41, 41, 1, 41, 10, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>10</p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(42, 42, 1, 42, 11, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Se enlistan y destacan las caracter&iacute;sticas del grupo al que se dirige la informaci&oacute;n</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(43, 43, 1, 43, 11, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Se distribuyen gratuitamente muestras del nuevo producto y despu&eacute;s se lanza al mercado el producto</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(44, 44, 1, 44, 11, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Se oferta el producto a buen precio para que las personas lo puedan consumir estando a su alcance econ&oacute;mico</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(45, 45, 1, 45, 11, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p><span lang="ES">Se ofrece masivamente al mercado la mercanc&iacute;a pensando en las propias necesidades de las personas</span></p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(46, 46, 1, 46, 12, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>La atenci&oacute;n o las facilidades</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(47, 47, 1, 47, 12, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>La presentaci&oacute;n del producto o servicio</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(48, 48, 1, 48, 12, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p><span>El precio, la plaza o su calidad</span></p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(49, 49, 1, 49, 12, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Los cr&eacute;ditos o los descuentos</p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(50, 50, 1, 50, 13, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Disminuir los costos de producci&oacute;n</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(51, 51, 1, 51, 13, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Esperar las reacciones del mercado</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(52, 52, 1, 52, 13, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p><span>Resaltar claramente las diferencias entre ellos</span></p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(53, 53, 1, 53, 13, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Aumentar los precios a un costo razonable</p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(54, 54, 1, 54, 14, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Bases de datos, reportes financieros y pl&aacute;ticas motivacionales</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(55, 55, 1, 55, 14, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Conceptos de elaboraci&oacute;n de textos,&nbsp; mercadotecnia&nbsp; y de dise&ntilde;o gr&aacute;fico</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(56, 56, 1, 56, 14, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Valores, compromiso social y calidad</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(57, 57, 1, 57, 14, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Precio, cobertura y calidad</p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(58, 58, 1, 58, 15, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Precio, cobertura y calidad</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(59, 59, 1, 59, 15, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Transiciones y animaciones de elementos</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(60, 60, 1, 60, 15, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Valores, compromiso social y calidad</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(61, 61, 1, 61, 15, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>La consistencia, mantener simplicidad y consistencia</p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(62, 62, 1, 62, 16, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Mantener simplicidad y consistencia</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(63, 63, 1, 63, 16, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Mercadotecnia y dise&ntilde;o gr&aacute;fico</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(64, 64, 1, 64, 16, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Las transiciones y las animaciones de elementos</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(65, 65, 1, 65, 16, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Precio y calidad</p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(66, 66, 1, 66, 17, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p><label class="linky" for="q_280_1r1_1">Elementos en pir&aacute;mide</label></p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(67, 67, 1, 67, 17, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p><span lang="ES">Grupos de Personas</span></p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(68, 68, 1, 68, 17, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Categor&iacute;as estructurada</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(69, 69, 1, 69, 17, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Una plataforma limitada</p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(70, 70, 1, 70, 18, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>En bloques de conexi&oacute;n</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(71, 71, 1, 71, 18, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>F&iacute;sica o virtual</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(72, 72, 1, 72, 18, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Por comunicaci&oacute;n binaria</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(73, 73, 1, 73, 18, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Tridimensional</p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(74, 74, 1, 74, 19, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Redes de aprendizaje</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(75, 75, 1, 75, 19, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Redes de intercambio</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(76, 76, 1, 76, 19, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Redes de cultura</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(77, 77, 1, 77, 19, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Redes de informaci&oacute;n</p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(78, 78, 1, 78, 20, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Transacci&oacute;n virtual</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(79, 79, 1, 79, 20, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Compraventa electr&oacute;nica</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(80, 80, 1, 80, 20, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Comercio virtual</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(81, 81, 1, 81, 20, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Comercio electr&oacute;nico</p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(82, 82, 1, 82, 21, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Barra de navegaci&oacute;n</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(83, 83, 1, 83, 21, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Casilla de b&uacute;squeda</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(84, 84, 1, 84, 21, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Casilla de navegaci&oacute;n</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(85, 85, 1, 85, 21, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Barra de direcciones</p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(86, 86, 1, 86, 22, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Es la manera de organizar y presentar, un informe sintetizado de los datos registrados en una o varias hojas de c&aacute;lculo</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(87, 87, 1, 87, 22, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Es una manera de arreglar una o varias hojas de c&aacute;lculo</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(88, 88, 1, 88, 22, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Es la manera de presentar los datos analizados en una o varias hojas de c&aacute;lculo</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(89, 89, 1, 89, 22, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Es una manera de organizar y presentar los datos de una o varias hojas de c&aacute;lculo</p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(90, 90, 1, 90, 23, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Aplicar formato a los para analizarlo o tomar decisiones</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(91, 91, 1, 91, 23, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Aplicar a los datos con formato inform&aacute;tico para visualizarlo, analizarlo o tomar decisiones</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(92, 92, 1, 92, 23, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Aplicar formato a los datos tratando de presentar un dise&ntilde;o atractivo e inform&aacute;tico para visualizarlo, analizarlo o tomar decisiones</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(93, 93, 1, 93, 23, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Dar formato a los datos para que se vea bonito</p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(94, 94, 1, 94, 24, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>9, 4, 1, 5, 3, 8, 6, 7, 2</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(95, 95, 1, 95, 24, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>2, 4, 6, 8, 1, 3, 5, 7, 9</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(96, 96, 1, 96, 24, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>1,3, 5, 7, 9, 2, 4, 6, 8</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(97, 97, 1, 97, 24, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>5, 1, 9, 2, 6, 3, 8, 4, 7</p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(98, 98, 1, 98, 25, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>F&oacute;rmulas</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(99, 99, 1, 99, 25, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Inicio</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(100, 100, 1, 100, 25, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Dise&ntilde;o de p&aacute;gina</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(101, 101, 1, 101, 25, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Insertar</p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(102, 102, 1, 102, 26, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Celdas</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(103, 103, 1, 103, 26, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Numero</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(104, 104, 1, 104, 26, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Fuente</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(105, 105, 1, 105, 26, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Alineacion</p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(106, 106, 1, 106, 27, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Predecir comportamientos futuros y sacar certeras conclusiones</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(107, 107, 1, 107, 27, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Mostrar una hoja vac&iacute;a al inicio</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(108, 108, 1, 108, 27, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Te permite la edici&oacute;n de la informaci&oacute;n dentro de la hoja de c&aacute;lculo</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(109, 109, 1, 109, 27, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Escribir las f&oacute;rmulas una por una y que aparezca su resultado</p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(110, 110, 1, 110, 28, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Sumando la existencia inicial m&aacute;s la existencia final</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(111, 111, 1, 111, 28, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p><span lang="ES">Restando la existencia inicial menos la venta</span></p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(112, 112, 1, 112, 28, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Dividiendo la lista de productos entre la venta</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(113, 113, 1, 113, 28, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p><span lang="ES">Multiplicando la cantidad vendida por el precio unitario</span></p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(114, 114, 1, 114, 29, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>El ventilador</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(115, 115, 1, 115, 29, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>La voz</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(116, 116, 1, 116, 29, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>El micr&oacute;fono</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(117, 117, 1, 117, 29, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>El aud&iacute;fono</p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL),
(118, 118, 1, 118, 30, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Micr&oacute;fono</p>\r\n</body>\r\n</html>', 1, '', 0, 1, '', '', '0@@0@@0@@0', NULL),
(119, 119, 1, 119, 30, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>C&oacute;digo binario</p>\r\n</body>\r\n</html>', 0, '', 0, 2, '', '', '0@@0@@0@@0', NULL),
(120, 120, 1, 120, 30, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Circuito Integrado</p>\r\n</body>\r\n</html>', 0, '', 0, 3, '', '', '0@@0@@0@@0', NULL),
(121, 121, 1, 121, 30, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p>Bater&iacute;a</p>\r\n</body>\r\n</html>', 0, '', 0, 4, '', '', '0@@0@@0@@0', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_quiz_question`
--

CREATE TABLE `c_quiz_question` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `question` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `ponderation` double NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `picture` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL,
  `extra` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_quiz_question`
--

INSERT INTO `c_quiz_question` (`iid`, `c_id`, `id`, `question`, `description`, `ponderation`, `position`, `type`, `picture`, `level`, `extra`, `question_code`) VALUES
(1, 1, 1, 'El técnico en informática se desempeña en diferentes ambientes laborales como:', '', 0, 1, 1, '', 1, '', NULL),
(2, 1, 2, 'Tres de las principales actividades que desempeña un técnico en informática son:', '', 0, 2, 1, '', 1, '', NULL),
(3, 1, 3, '¿Qué necesita saber el técnico en informática?', '', 0, 3, 1, '', 1, '', NULL),
(4, 1, 4, 'Es el orden del procedimiento para generar y utilizar una tabla en un procesador de texto: 1. Da clic en la opción insertar Tabla 2. Da clic en Aceptar 3. Menú tabla 4. Elige el No. De columnas y filas', '', 0, 4, 1, '', 1, '', NULL),
(5, 1, 5, 'Son herramientas que se utilizan para cambiar el formato de un párrafo: ', '<p>1. Tama&ntilde;o, alineaci&oacute;n, color e interlineado</p>\r\n\r\n<p>2. Alineaci&oacute;n, diapositiva, vista, zoom</p>\r\n\r\n<p>3. Interlineado, tablas, tama&ntilde;o, celda</p>\r\n\r\n<p>4. Letra, hoja de c&aacute;lculo, alineaci&oacute;n, plantillas</p>\r\n\r\n<p>5. Tabla, negritas, funci&oacute;n, formato condicional&nbsp;</p>', 0, 5, 1, '', 1, '', NULL),
(6, 1, 6, 'Es el tipo de palabras que solo llevan acento escrito cuando terminan en "n", "s" o vocal:', '', 0, 6, 1, '', 1, '', NULL),
(7, 1, 7, 'La palabras público, práctico, gráfica son de tipo:', '', 0, 7, 1, '', 1, '', NULL),
(8, 1, 8, 'En el ejemplo de un jugador de futbol, cuando éste “se desmarca del jugador contrario”, demuestra:', '', 0, 8, 1, '', 1, '', NULL),
(9, 1, 9, 'El Currículum Vitae es un conjunto de Experiencias:', '', 0, 9, 1, '', 1, '', NULL),
(10, 1, 10, '2+4 =', '', 0, 1, 1, '', 1, '', NULL),
(11, 1, 11, 'En la mercadotecnia, es la forma para determinar las necesidades de las personas:', '', 0, 1, 1, '', 1, '', NULL),
(12, 1, 12, 'Del producto o del servicio debemos determinar qué cualidad se quiere resaltar a través de:', '', 0, 2, 1, '', 1, '', NULL),
(13, 1, 13, 'Cuando el producto tiene una calidad superior a los productos de la competencia, se debe:', '', 0, 3, 1, '', 1, '', NULL),
(14, 1, 14, 'Son conceptos que debes integrar en una presentación:', '', 0, 4, 1, '', 1, '', NULL),
(15, 1, 15, 'Algunos principios de diseño de diapositivas son:', '', 0, 5, 1, '', 1, '', NULL),
(16, 1, 16, 'En cuanto a la animación de las diapositivas existen dos parámetros a considerar:', '', 0, 6, 1, '', 1, '', NULL),
(17, 1, 17, 'Las redes sociales son estructuras sociales compuestas de:', '', 0, 1, 1, '', 1, '', NULL),
(18, 1, 18, 'La interacción con los miembros de la red social puede ser:', '', 0, 2, 1, '', 1, '', NULL),
(19, 1, 19, 'Cuando las redes sociales se utilizan para compartir conocimiento y no sólo para comunicarse se conocen como:', '', 0, 3, 1, '', 1, '', NULL),
(20, 1, 20, '¿Qué nombre reciben las transacciones de compra-venta que se hacen por Internet?', '', 0, 4, 1, '', 1, '', NULL),
(21, 1, 21, '¿Qué elemento de la pantalla del navegador permite ingresar palabras clave para hacer una búsqueda?', '', 0, 5, 1, '', 1, '', NULL),
(22, 1, 22, 'Es la descripción de lo que es un Reporte elaborado en una hoja de cálculo:', '', 0, 1, 1, '', 1, '', NULL),
(23, 1, 23, 'Es lo que permite realizar un reporte elaborado en una hoja de cálculo:', '', 0, 2, 1, '', 1, '', NULL),
(24, 1, 24, 'Es el orden de los pasos del procedimiento para realizar un reporte en una hoja de cálculo:', '<p>1. Selecciona la pesta&ntilde;a insertar en el grupo de tablas</p>\r\n\r\n<p>2. Para resaltar los datos del reporte en forma de tabla apl&iacute;cale formato utilizando la pesta&ntilde;a &ldquo;Inicio&rdquo; en el grupo &ldquo;Fuente&rdquo; y podr&aacute;s modificar tama&ntilde;o y el tipo de letra y aplica un color de fuente.</p>\r\n\r\n<p>3. Selecciona adem&aacute;s que el reporte lo ponga en una hoja nueva, haz clic en Aceptar para que aparezca la tabla din&aacute;mica, cada encabezado de columna se convierte en un campo que puede ser usado en el reporte.</p>\r\n\r\n<p>4. Selecciona los campos a utilizar para el reporte</p>\r\n\r\n<p>5. Clic en Tabla din&aacute;mica y luego en el men&uacute; desplegable Tabla din&aacute;mica, aparecer&aacute; la ventana crear tabla din&aacute;mica, como ya estaban selecciona los datos a analizar.</p>\r\n\r\n<p>6. Selecciona Gr&aacute;fico din&aacute;mico, aparece la ventana Insertar gr&aacute;fico.</p>\r\n\r\n<p>7. Selecciona el gr&aacute;fico adecuado para ejemplificar los datos analizados y da clic en el bot&oacute;n Aceptar.</p>\r\n\r\n<p>8. Una vez presentado el reporte para tener una mejor visualizaci&oacute;n de los datos se proceder&aacute; a realizar una presentaci&oacute;n gr&aacute;fica utilizando la pesta&ntilde;a Opciones del grupo Herramientas</p>\r\n\r\n<p>9. Primero analizar la informaci&oacute;n de los campos a analizar en el reporte</p>', 0, 3, 1, '', 1, '', NULL),
(25, 1, 25, 'Es la pestaña donde se encuentra la opción de tablas dinámicas:', '', 0, 4, 1, '', 1, '', NULL),
(26, 1, 26, 'Es el grupo donde se encuentran las herramientas para darle formato a un reporte:', '', 0, 5, 1, '', 1, '', NULL),
(27, 1, 27, 'El asistente para gráficos te permite:', '', 0, 6, 1, '', 1, '', NULL),
(28, 1, 28, 'Teniendo la siguiente tabla en una hoja de cálculo. La venta semanal en pesos se obtiene:', '<table border="1" cellpadding="0" cellspacing="0">\r\n	<tbody>\r\n		<tr>\r\n			<td valign="top" width="45">\r\n			<p align="center">4</p>\r\n			</td>\r\n			<td valign="top" width="89">\r\n			<p align="center">B</p>\r\n			</td>\r\n			<td valign="top" width="89">\r\n			<p align="center">C</p>\r\n			</td>\r\n			<td valign="top" width="89">\r\n			<p align="center">D</p>\r\n			</td>\r\n			<td valign="top" width="89">\r\n			<p align="center">E</p>\r\n			</td>\r\n			<td valign="top" width="89">\r\n			<p align="center">F</p>\r\n			</td>\r\n			<td valign="top" width="89">\r\n			<p align="center">G</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td valign="top" width="45">\r\n			<p align="center">5</p>\r\n			</td>\r\n			<td valign="top" width="89">\r\n			<p align="center">&nbsp;</p>\r\n			</td>\r\n			<td valign="top" width="89">\r\n			<p align="center">&nbsp;</p>\r\n			</td>\r\n			<td colspan="4" valign="top" width="354">\r\n			<p align="center">Semana</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width="45">\r\n			<p align="center">6</p>\r\n			</td>\r\n			<td valign="top" width="89">\r\n			<p align="center">Lista de productos</p>\r\n			</td>\r\n			<td valign="top" width="89">\r\n			<p align="center">Existencia inicial</p>\r\n			</td>\r\n			<td valign="top" width="89">\r\n			<p align="center">Cantidad vendida</p>\r\n			</td>\r\n			<td valign="top" width="89">\r\n			<p align="center">Precio unitario</p>\r\n			</td>\r\n			<td valign="top" width="89">\r\n			<p align="center">Venta</p>\r\n			</td>\r\n			<td valign="top" width="89">\r\n			<p align="center">Existencia final</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 0, 7, 1, '', 1, '', NULL),
(29, 1, 29, 'El dispositivo que convierte la señal acústica en una señal eléctrica es:', '', 0, 1, 1, '', 1, '', NULL),
(30, 1, 30, 'La digitalización es un proceso de conversión de una señal analógica a una señal digital.  El dispositivo encargado de hacerlo es un:', '', 0, 2, 1, '', 1, '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_quiz_question_category`
--

CREATE TABLE `c_quiz_question_category` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_quiz_question_option`
--

CREATE TABLE `c_quiz_question_option` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `question_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_quiz_question_rel_category`
--

CREATE TABLE `c_quiz_question_rel_category` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_quiz_rel_category`
--

CREATE TABLE `c_quiz_rel_category` (
  `iid` bigint(20) NOT NULL,
  `c_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `exercise_id` int(11) NOT NULL,
  `count_questions` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_quiz_rel_question`
--

CREATE TABLE `c_quiz_rel_question` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `question_order` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `exercice_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_quiz_rel_question`
--

INSERT INTO `c_quiz_rel_question` (`iid`, `c_id`, `question_order`, `question_id`, `exercice_id`) VALUES
(1, 1, 1, 1, 1),
(2, 1, 2, 2, 1),
(3, 1, 3, 3, 1),
(4, 1, 4, 4, 1),
(5, 1, 5, 5, 1),
(6, 1, 6, 6, 1),
(7, 1, 7, 7, 1),
(8, 1, 8, 8, 1),
(9, 1, 9, 9, 1),
(10, 1, 1, 10, 2),
(11, 1, 1, 11, 3),
(12, 1, 2, 12, 3),
(13, 1, 3, 13, 3),
(14, 1, 4, 14, 3),
(15, 1, 5, 15, 3),
(16, 1, 6, 16, 3),
(17, 1, 1, 17, 4),
(18, 1, 2, 18, 4),
(19, 1, 3, 19, 4),
(20, 1, 4, 20, 4),
(21, 1, 5, 21, 4),
(22, 1, 1, 22, 5),
(23, 1, 2, 23, 5),
(24, 1, 3, 24, 5),
(25, 1, 4, 25, 5),
(26, 1, 5, 26, 5),
(27, 1, 6, 27, 5),
(28, 1, 7, 28, 5),
(29, 1, 1, 29, 6),
(30, 1, 2, 30, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_resource`
--

CREATE TABLE `c_resource` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `source_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `resource_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_role`
--

CREATE TABLE `c_role` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `role_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `role_comment` longtext COLLATE utf8_unicode_ci,
  `default_role` tinyint(1) DEFAULT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_role_group`
--

CREATE TABLE `c_role_group` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `scope` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_role_permissions`
--

CREATE TABLE `c_role_permissions` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `default_perm` tinyint(1) NOT NULL,
  `role_id` int(11) NOT NULL,
  `tool` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_role_user`
--

CREATE TABLE `c_role_user` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `scope` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_student_publication`
--

CREATE TABLE `c_student_publication` (
  `iid` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_correction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_correction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `accepted` tinyint(1) DEFAULT NULL,
  `post_group_id` int(11) NOT NULL,
  `sent_date` datetime DEFAULT NULL,
  `filetype` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `has_properties` int(11) NOT NULL,
  `view_properties` tinyint(1) DEFAULT NULL,
  `qualification` double NOT NULL,
  `date_of_qualification` datetime DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `qualificator_id` int(11) NOT NULL,
  `weight` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `allow_text_assignment` int(11) NOT NULL,
  `contains_file` int(11) NOT NULL,
  `document_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_student_publication`
--

INSERT INTO `c_student_publication` (`iid`, `session_id`, `c_id`, `id`, `url`, `url_correction`, `title`, `title_correction`, `description`, `author`, `active`, `accepted`, `post_group_id`, `sent_date`, `filetype`, `has_properties`, `view_properties`, `qualification`, `date_of_qualification`, `parent_id`, `qualificator_id`, `weight`, `user_id`, `allow_text_assignment`, `contains_file`, `document_id`) VALUES
(1, NULL, 1, 1, '/Tarea-Leccion-1', NULL, 'Tarea Leccion 1 - N1', NULL, '<p>Esta tarea corresponde al desarrollo de la primera lecci&oacute;n.</p>', NULL, 1, 1, 0, '2016-11-21 23:41:24', 'folder', 1, 1, 0, NULL, 0, 0, 0, 1, 0, 0, 0),
(2, NULL, 1, 2, 'work/Tarea-Leccion-1/6b28c1cf5e967b8faf0d24dd6b40335a', NULL, 'Chamilo.pdf', NULL, '', NULL, 1, 1, 0, '2016-11-21 23:48:17', 'file', 0, NULL, 0, NULL, 1, 0, 0, 3, 0, 1, 0),
(3, NULL, 1, 3, '/Tarea-Leccion-2-N1', NULL, 'Tarea Leccion 2 - N1', NULL, '', NULL, 1, 1, 0, '2016-11-24 04:52:26', 'folder', 2, 1, 0, NULL, 0, 0, 0, 1, 0, 0, 0),
(4, NULL, 1, 4, '/Tarea-Leccion-3-N1', NULL, 'Tarea Leccion 3 - N1', NULL, '', NULL, 1, 1, 0, '2016-11-24 04:53:11', 'folder', 3, 1, 0, NULL, 0, 0, 0, 1, 0, 0, 0),
(5, NULL, 1, 5, '/Tarea-Leccion-1-N2', NULL, 'Tarea Leccion 1 - N2', NULL, '', NULL, 1, 1, 0, '2016-11-24 04:54:32', 'folder', 4, 1, 0, NULL, 0, 0, 0, 1, 0, 0, 0),
(6, NULL, 1, 6, '/Tarea-Leccion-2-N2', NULL, 'Tarea Leccion 2 - N2', NULL, '', NULL, 1, 1, 0, '2016-11-24 04:54:51', 'folder', 5, 1, 0, NULL, 0, 0, 0, 1, 0, 0, 0),
(7, NULL, 1, 7, '/Tarea-Leccion-3-N2', NULL, 'Tarea Leccion 3 - N2', NULL, '', NULL, 1, 1, 0, '2016-11-24 04:55:06', 'folder', 6, 1, 0, NULL, 0, 0, 0, 1, 0, 0, 0),
(8, NULL, 1, 8, '/Tarea-Leccion-4-N2', NULL, 'Tarea Leccion 4 - N2', NULL, '', NULL, 1, 1, 0, '2016-11-24 04:55:18', 'folder', 7, 1, 0, NULL, 0, 0, 0, 1, 0, 0, 0),
(9, NULL, 1, 9, '/Tarea-Leccion-1-N3', NULL, 'Tarea Leccion 1 - N3', NULL, '', NULL, 1, 1, 0, '2016-11-24 04:55:43', 'folder', 8, 1, 0, NULL, 0, 0, 0, 1, 0, 0, 0),
(10, NULL, 1, 10, '/Tarea-Leccion-2-N3', NULL, 'Tarea Leccion 2 - N3', NULL, '', NULL, 1, 1, 0, '2016-11-24 04:56:15', 'folder', 9, 1, 0, NULL, 0, 0, 0, 1, 0, 0, 0),
(11, NULL, 1, 11, '/Tarea-Leccion-1-N4', NULL, 'Tarea Leccion 1 - N4', NULL, '', NULL, 1, 1, 0, '2016-11-24 04:56:31', 'folder', 10, 1, 0, NULL, 0, 0, 0, 1, 0, 0, 0),
(12, NULL, 1, 12, 'work/Tarea-Leccion-1-N4/04dd616a2f54d704ae50c83b3946de28', NULL, 'mi3dPDPReBQ.mp4', NULL, '', NULL, 1, 1, 0, '2016-11-25 00:18:57', 'file', 0, NULL, 0, NULL, 11, 0, 0, 3, 0, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_student_publication_assignment`
--

CREATE TABLE `c_student_publication_assignment` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `expires_on` datetime DEFAULT NULL,
  `ends_on` datetime DEFAULT NULL,
  `add_to_calendar` int(11) NOT NULL,
  `enable_qualification` tinyint(1) NOT NULL,
  `publication_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_student_publication_assignment`
--

INSERT INTO `c_student_publication_assignment` (`iid`, `c_id`, `id`, `expires_on`, `ends_on`, `add_to_calendar`, `enable_qualification`, `publication_id`) VALUES
(1, 1, 1, NULL, NULL, 0, 0, 1),
(2, 1, 2, NULL, NULL, 0, 0, 3),
(3, 1, 3, NULL, NULL, 0, 0, 4),
(4, 1, 4, NULL, NULL, 0, 0, 5),
(5, 1, 5, NULL, NULL, 0, 0, 6),
(6, 1, 6, NULL, NULL, 0, 0, 7),
(7, 1, 7, NULL, NULL, 0, 0, 8),
(8, 1, 8, NULL, NULL, 0, 0, 9),
(9, 1, 9, NULL, NULL, 0, 0, 10),
(10, 1, 10, NULL, NULL, 0, 0, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_student_publication_comment`
--

CREATE TABLE `c_student_publication_comment` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `work_id` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `sent_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_student_publication_rel_document`
--

CREATE TABLE `c_student_publication_rel_document` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `work_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_student_publication_rel_user`
--

CREATE TABLE `c_student_publication_rel_user` (
  `iid` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `c_id` int(11) NOT NULL,
  `work_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_survey`
--

CREATE TABLE `c_survey` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci,
  `subtitle` longtext COLLATE utf8_unicode_ci,
  `author` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avail_from` date DEFAULT NULL,
  `avail_till` date DEFAULT NULL,
  `is_shared` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` longtext COLLATE utf8_unicode_ci,
  `surveythanks` longtext COLLATE utf8_unicode_ci,
  `creation_date` datetime NOT NULL,
  `invited` int(11) NOT NULL,
  `answered` int(11) NOT NULL,
  `invite_mail` longtext COLLATE utf8_unicode_ci NOT NULL,
  `reminder_mail` longtext COLLATE utf8_unicode_ci NOT NULL,
  `mail_subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `anonymous` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `access_condition` longtext COLLATE utf8_unicode_ci,
  `shuffle` tinyint(1) NOT NULL,
  `one_question_per_page` tinyint(1) NOT NULL,
  `survey_version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `survey_type` int(11) NOT NULL,
  `show_form_profile` int(11) NOT NULL,
  `form_fields` longtext COLLATE utf8_unicode_ci NOT NULL,
  `session_id` int(11) NOT NULL,
  `visible_results` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_survey`
--

INSERT INTO `c_survey` (`iid`, `c_id`, `survey_id`, `code`, `title`, `subtitle`, `author`, `lang`, `avail_from`, `avail_till`, `is_shared`, `template`, `intro`, `surveythanks`, `creation_date`, `invited`, `answered`, `invite_mail`, `reminder_mail`, `mail_subject`, `anonymous`, `access_condition`, `shuffle`, `one_question_per_page`, `survey_version`, `parent_id`, `survey_type`, `show_form_profile`, `form_fields`, `session_id`, `visible_results`) VALUES
(1, 1, 1, 'enc01', '<p>Encuesta sobre actividades realizadas durante el curso.</p>\r\n', '<p>Primera encuesta</p>\r\n', '1', 'spanish', '2016-11-25', '2016-12-01', '0', 'template', '<p>Esta encuesta se realiza a todos los participantes del curso, por medio de &eacute;ste, se podr&aacute; ver la eficacia del dictado virtual del curso.</p>\r\n', '<p>Gracias por su atencion.</p>\r\n', '2016-11-25 01:02:05', 4, 1, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>&nbsp;</body>\r\n</html>', '', 'Encuenta de Curso', '0', NULL, 0, 0, '', 0, 0, 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_survey_answer`
--

CREATE TABLE `c_survey_answer` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `value` int(11) NOT NULL,
  `user` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_survey_answer`
--

INSERT INTO `c_survey_answer` (`iid`, `c_id`, `answer_id`, `survey_id`, `question_id`, `option_id`, `value`, `user`) VALUES
(1, 1, 1, 1, 1, '1', 0, '3'),
(2, 1, 2, 1, 2, '3', 0, '3'),
(3, 1, 3, 1, 3, '5', 0, '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_survey_group`
--

CREATE TABLE `c_survey_group` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `survey_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_survey_invitation`
--

CREATE TABLE `c_survey_invitation` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `survey_invitation_id` int(11) NOT NULL,
  `survey_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `invitation_code` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `invitation_date` datetime NOT NULL,
  `reminder_date` datetime NOT NULL,
  `answered` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_survey_invitation`
--

INSERT INTO `c_survey_invitation` (`iid`, `c_id`, `survey_invitation_id`, `survey_code`, `user`, `invitation_code`, `invitation_date`, `reminder_date`, `answered`, `session_id`, `group_id`) VALUES
(1, 1, 1, 'enc01', '4', '3ec7e801652de805e0f8b2538e993757', '2016-11-25 01:05:33', '0000-00-00 00:00:00', 0, 0, 0),
(2, 1, 2, 'enc01', '1', '2e4723d741803f6360be316ff0ee5b0f', '2016-11-25 01:05:35', '0000-00-00 00:00:00', 0, 0, 0),
(3, 1, 3, 'enc01', '5', '8561e4bd65cc021a00fdcde434e159da', '2016-11-25 01:05:36', '0000-00-00 00:00:00', 0, 0, 0),
(4, 1, 4, 'enc01', '3', '216e9da561d237f8fad011016d219c55', '2016-11-25 01:05:38', '0000-00-00 00:00:00', 1, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_survey_question`
--

CREATE TABLE `c_survey_question` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `survey_question` longtext COLLATE utf8_unicode_ci NOT NULL,
  `survey_question_comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `display` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `shared_question_id` int(11) DEFAULT NULL,
  `max_value` int(11) DEFAULT NULL,
  `survey_group_pri` int(11) NOT NULL,
  `survey_group_sec1` int(11) NOT NULL,
  `survey_group_sec2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_survey_question`
--

INSERT INTO `c_survey_question` (`iid`, `c_id`, `question_id`, `survey_id`, `survey_question`, `survey_question_comment`, `type`, `display`, `sort`, `shared_question_id`, `max_value`, `survey_group_pri`, `survey_group_sec1`, `survey_group_sec2`) VALUES
(1, 1, 1, 1, '<p>&iquest;Se ciente satisfecho con el curso?</p>', '', 'yesno', 'horizontal', 1, 0, 0, 0, 0, 0),
(2, 1, 2, 1, '<p>&iquest;Quiere que se abran mas cursos?</p>', '', 'yesno', 'horizontal', 2, 0, 0, 0, 0, 0),
(3, 1, 3, 1, '<p>&iquest;Tubo usted facilidad para trabajar con el curso?</p>', '', 'yesno', 'horizontal', 3, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_survey_question_option`
--

CREATE TABLE `c_survey_question_option` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `question_option_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `option_text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_survey_question_option`
--

INSERT INTO `c_survey_question_option` (`iid`, `c_id`, `question_option_id`, `question_id`, `survey_id`, `option_text`, `sort`, `value`) VALUES
(1, 1, 1, 1, 1, '<p>S&iacute;</p>', 1, 0),
(2, 1, 2, 1, 1, '<p>No</p>', 2, 0),
(3, 1, 3, 2, 1, '<p>S&iacute;</p>', 1, 0),
(4, 1, 4, 2, 1, '<p>No</p>', 2, 0),
(5, 1, 5, 3, 1, '<p>S&iacute;</p>', 1, 0),
(6, 1, 6, 3, 1, '<p>No</p>', 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_thematic`
--

CREATE TABLE `c_thematic` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `display_order` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_thematic`
--

INSERT INTO `c_thematic` (`iid`, `c_id`, `id`, `title`, `content`, `display_order`, `active`, `session_id`) VALUES
(1, 1, 1, 'Prog Did', '', 1, 0, 0),
(2, 1, 2, 'PROGRAMACIO DIDACTICA 1', '<p>ASDFASDFASDF</p>', 1, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_thematic_advance`
--

CREATE TABLE `c_thematic_advance` (
  `iid` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `thematic_id` int(11) NOT NULL,
  `attendance_id` int(11) NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `start_date` datetime NOT NULL,
  `duration` int(11) NOT NULL,
  `done_advance` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_thematic_advance`
--

INSERT INTO `c_thematic_advance` (`iid`, `room_id`, `c_id`, `id`, `thematic_id`, `attendance_id`, `content`, `start_date`, `duration`, `done_advance`) VALUES
(1, NULL, 1, 1, 2, 1, '', '2016-11-25 00:51:06', 1, 1),
(2, NULL, 1, 2, 2, 1, '', '2016-11-25 00:51:46', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_thematic_plan`
--

CREATE TABLE `c_thematic_plan` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `thematic_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `description_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_tool`
--

CREATE TABLE `c_tool` (
  `iid` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `c_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visibility` tinyint(1) DEFAULT NULL,
  `admin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_tool` tinyint(1) DEFAULT NULL,
  `target` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'authoring',
  `session_id` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `custom_icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_tool`
--

INSERT INTO `c_tool` (`iid`, `id`, `c_id`, `name`, `link`, `image`, `visibility`, `admin`, `address`, `added_tool`, `target`, `category`, `session_id`, `description`, `custom_icon`) VALUES
(1, 1, 1, 'course_description', 'course_description/', 'info.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0, NULL, NULL),
(2, 2, 1, 'calendar_event', 'calendar/agenda.php', 'agenda.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0, NULL, NULL),
(3, 3, 1, 'document', 'document/document.php', 'folder_document.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0, NULL, NULL),
(4, 4, 1, 'learnpath', 'lp/lp_controller.php', 'scorms.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0, NULL, NULL),
(5, 5, 1, 'link', 'link/link.php', 'links.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0, NULL, NULL),
(6, 6, 1, 'quiz', 'exercise/exercise.php', 'quiz.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0, NULL, NULL),
(7, 7, 1, 'announcement', 'announcements/announcements.php', 'valves.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0, NULL, NULL),
(8, 8, 1, 'forum', 'forum/index.php', 'forum.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0, NULL, NULL),
(9, 9, 1, 'dropbox', 'dropbox/index.php', 'dropbox.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0, NULL, NULL),
(10, 10, 1, 'user', 'user/user.php', 'members.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0, NULL, NULL),
(11, 11, 1, 'group', 'group/group.php', 'group.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0, NULL, NULL),
(12, 12, 1, 'chat', 'chat/chat.php', 'chat.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0, NULL, NULL),
(13, 13, 1, 'student_publication', 'work/work.php', 'works.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0, NULL, NULL),
(14, 14, 1, 'survey', 'survey/survey_list.php', 'survey.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0, NULL, NULL),
(15, 15, 1, 'wiki', 'wiki/index.php', 'wiki.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0, NULL, NULL),
(16, 16, 1, 'gradebook', 'gradebook/index.php', 'gradebook.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0, NULL, NULL),
(17, 17, 1, 'glossary', 'glossary/index.php', 'glossary.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0, NULL, NULL),
(18, 18, 1, 'notebook', 'notebook/index.php', 'notebook.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'interaction', 0, NULL, NULL),
(19, 19, 1, 'attendance', 'attendance/index.php', 'attendance.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0, NULL, NULL),
(20, 20, 1, 'course_progress', 'course_progress/index.php', 'course_progress.gif', 1, '0', 'squaregrey.gif', 0, '_self', 'authoring', 0, NULL, NULL),
(21, 24, 1, 'blog_management', 'blog/blog_admin.php', 'blog_admin.gif', 0, '1', 'squaregrey.gif', 0, '_self', 'admin', 0, NULL, NULL),
(22, 25, 1, 'tracking', 'tracking/courseLog.php', 'statistics.gif', 0, '1', '', 0, '_self', 'admin', 0, NULL, NULL),
(23, 26, 1, 'course_setting', 'course_info/infocours.php', 'reference.gif', 0, '1', '', 0, '_self', 'admin', 0, NULL, NULL),
(24, 27, 1, 'course_maintenance', 'course_info/maintenance.php', 'backup.gif', 0, '1', '', 0, '_self', 'admin', 0, NULL, NULL),
(25, 28, 1, 'bbb', 'bbb/start.php', 'bbb.png', 1, '0', 'squaregrey.gif', 0, '_self', 'plugin', 0, NULL, NULL),
(26, 29, 1, 'clockworksms', 'clockworksms/start.php', 'clockworksms.png', 1, '0', 'squaregrey.gif', 0, '_self', 'plugin', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_tool_intro`
--

CREATE TABLE `c_tool_intro` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intro_text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_tool_intro`
--

INSERT INTO `c_tool_intro` (`iid`, `c_id`, `id`, `intro_text`, `session_id`) VALUES
(1, 1, 'course_homepage', '<div><iframe allowfullscreen="" frameborder="0" height="360" src="//www.youtube.com/embed/JzKKw3mOOz8" width="640"></iframe></div>\r\n\r\n<h1 class="ck ck-title"><span style="color:#008080;">T&eacute;cnico en inform&aacute;tica</span></h1>\r\n\r\n<p><strong>&iexcl;Bienvenido!</strong></p>\r\n\r\n<p>Aprende a generar documentos administrativos y contables, a manejar bases de datos y a dar soporte de software y hardware, para optimizar&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; los recursos inform&aacute;ticos de las empresas.</p>\r\n\r\n<p>&iexcl;&Eacute;xito en tu capacitaci&oacute;n!</p>\r\n\r\n<h3><span style="color:#006400;">Para registrar tu avance en este curso es necesario que inicies sesi&oacute;n.</span></h3>\r\n\r\n<p>&nbsp;</p>', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_userinfo_content`
--

CREATE TABLE `c_userinfo_content` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `definition_id` int(11) NOT NULL,
  `editor_ip` varchar(39) COLLATE utf8_unicode_ci DEFAULT NULL,
  `edition_time` datetime DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_userinfo_def`
--

CREATE TABLE `c_userinfo_def` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `title` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `line_count` tinyint(1) NOT NULL,
  `rank` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_wiki`
--

CREATE TABLE `c_wiki` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `reflink` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `dtime` datetime DEFAULT NULL,
  `addlock` int(11) NOT NULL,
  `editlock` int(11) NOT NULL,
  `visibility` int(11) NOT NULL,
  `addlock_disc` int(11) NOT NULL,
  `visibility_disc` int(11) NOT NULL,
  `ratinglock_disc` int(11) NOT NULL,
  `assignment` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `progress` longtext COLLATE utf8_unicode_ci NOT NULL,
  `score` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `is_editing` int(11) NOT NULL,
  `time_edit` datetime DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `linksto` longtext COLLATE utf8_unicode_ci NOT NULL,
  `tag` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_ip` varchar(39) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_wiki`
--

INSERT INTO `c_wiki` (`iid`, `c_id`, `id`, `page_id`, `reflink`, `title`, `content`, `user_id`, `group_id`, `dtime`, `addlock`, `editlock`, `visibility`, `addlock_disc`, `visibility_disc`, `ratinglock_disc`, `assignment`, `comment`, `progress`, `score`, `version`, `is_editing`, `time_edit`, `hits`, `linksto`, `tag`, `user_ip`, `session_id`) VALUES
(1, 1, 1, 1, 'index', 'Portada', '<p>Primera Wiki hecha por Carmen.! :D</p>\r\n\r\n<p><img alt="" height="168" src="/courses/TI/document/VIDEOS-CURSOS/Tecnico-en-informatica-Introduccion-YouTube.MKV" width="168" /></p>', 3, 0, '2016-11-25 00:58:34', 1, 0, 1, 1, 1, 1, 0, '', '0', NULL, 1, 0, '2016-11-25 00:58:34', NULL, '', '', '::1', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_wiki_conf`
--

CREATE TABLE `c_wiki_conf` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `task` longtext COLLATE utf8_unicode_ci NOT NULL,
  `feedback1` longtext COLLATE utf8_unicode_ci NOT NULL,
  `feedback2` longtext COLLATE utf8_unicode_ci NOT NULL,
  `feedback3` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fprogress1` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `fprogress2` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `fprogress3` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `max_size` int(11) DEFAULT NULL,
  `max_text` int(11) DEFAULT NULL,
  `max_version` int(11) DEFAULT NULL,
  `startdate_assig` datetime DEFAULT NULL,
  `enddate_assig` datetime DEFAULT NULL,
  `delayedsubmit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `c_wiki_conf`
--

INSERT INTO `c_wiki_conf` (`iid`, `c_id`, `page_id`, `task`, `feedback1`, `feedback2`, `feedback3`, `fprogress1`, `fprogress2`, `fprogress3`, `max_size`, `max_text`, `max_version`, `startdate_assig`, `enddate_assig`, `delayedsubmit`) VALUES
(1, 1, 1, '', '', '', '', '', '', '', NULL, 0, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_wiki_discuss`
--

CREATE TABLE `c_wiki_discuss` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `publication_id` int(11) NOT NULL,
  `userc_id` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `p_score` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_wiki_mailcue`
--

CREATE TABLE `c_wiki_mailcue` (
  `iid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_email_template`
--

CREATE TABLE `event_email_template` (
  `id` int(11) NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL,
  `language_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event_sent`
--

CREATE TABLE `event_sent` (
  `id` int(11) NOT NULL,
  `user_from` int(11) NOT NULL,
  `user_to` int(11) DEFAULT NULL,
  `event_type_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extra_field`
--

CREATE TABLE `extra_field` (
  `id` int(11) NOT NULL,
  `extra_field_type` int(11) NOT NULL,
  `field_type` int(11) NOT NULL,
  `variable` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_value` longtext COLLATE utf8_unicode_ci,
  `field_order` int(11) DEFAULT NULL,
  `visible_to_self` tinyint(1) DEFAULT NULL,
  `visible_to_others` tinyint(1) DEFAULT NULL,
  `changeable` tinyint(1) DEFAULT NULL,
  `filter` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `extra_field`
--

INSERT INTO `extra_field` (`id`, `extra_field_type`, `field_type`, `variable`, `display_text`, `default_value`, `field_order`, `visible_to_self`, `visible_to_others`, `changeable`, `filter`, `created_at`) VALUES
(1, 1, 1, 'legal_accept', 'Legal', NULL, NULL, 0, NULL, 0, NULL, '2016-11-11 09:23:18'),
(2, 1, 1, 'already_logged_in', 'Already logged in', NULL, NULL, 0, NULL, 0, NULL, '2016-11-11 09:23:18'),
(3, 1, 1, 'update_type', 'Update script type', NULL, NULL, 0, NULL, 0, NULL, '2016-11-11 09:23:18'),
(4, 1, 10, 'tags', 'tags', NULL, NULL, 0, NULL, 0, NULL, '2016-11-11 09:23:18'),
(5, 1, 1, 'rssfeeds', 'RSS', NULL, NULL, 0, NULL, 0, NULL, '2016-11-11 09:23:18'),
(6, 1, 1, 'dashboard', 'Dashboard', NULL, NULL, 0, NULL, 0, NULL, '2016-11-11 09:23:18'),
(7, 1, 11, 'timezone', 'Timezone', NULL, NULL, 0, NULL, 0, NULL, '2016-11-11 09:23:18'),
(8, 1, 4, 'mail_notify_invitation', 'MailNotifyInvitation', '1', NULL, 0, NULL, 1, NULL, '2016-11-11 09:23:18'),
(9, 1, 4, 'mail_notify_message', 'MailNotifyMessage', '1', NULL, 0, NULL, 1, NULL, '2016-11-11 09:23:18'),
(10, 1, 4, 'mail_notify_group_message', 'MailNotifyGroupMessage', '1', NULL, 0, NULL, 1, NULL, '2016-11-11 09:23:18'),
(11, 1, 1, 'user_chat_status', 'User chat status', NULL, NULL, 0, NULL, 0, NULL, '2016-11-11 09:23:18'),
(12, 1, 1, 'google_calendar_url', 'Google Calendar URL', NULL, NULL, 0, NULL, 0, NULL, '2016-11-11 09:23:18'),
(13, 2, 13, 'special_course', 'Special course', '', NULL, 1, NULL, 1, NULL, '2016-11-11 09:23:19'),
(14, 2, 10, 'tags', 'Tags', NULL, NULL, 1, NULL, 1, NULL, '2016-11-11 09:23:19'),
(15, 2, 19, 'video_url', 'VideoUrl', NULL, NULL, 1, NULL, 1, NULL, '2016-11-11 09:23:19'),
(16, 3, 16, 'image', 'Image', NULL, NULL, 1, NULL, 1, NULL, '2016-11-11 09:23:19'),
(17, 1, 1, 'captcha_blocked_until_date', 'Account locked until', NULL, NULL, 0, NULL, 0, NULL, '2016-11-11 09:23:19'),
(18, 1, 1, 'skype', 'Skype', NULL, NULL, 1, NULL, 1, NULL, '2016-11-11 09:23:24'),
(19, 1, 1, 'linkedin_url', 'LinkedInUrl', NULL, NULL, 1, NULL, 1, NULL, '2016-11-11 09:23:24'),
(20, 8, 10, 'tags', 'Tags', NULL, NULL, 1, NULL, 1, NULL, '2016-11-11 09:23:25'),
(21, 1, 1, 'mobile_phone_number', 'Celular (incluya sólo el código de llamada del país)', NULL, 2, NULL, NULL, 1, NULL, '2016-11-11 15:19:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extra_field_options`
--

CREATE TABLE `extra_field_options` (
  `id` int(11) NOT NULL,
  `field_id` int(11) DEFAULT NULL,
  `option_value` longtext COLLATE utf8_unicode_ci,
  `display_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority_message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `extra_field_options`
--

INSERT INTO `extra_field_options` (`id`, `field_id`, `option_value`, `display_text`, `priority`, `priority_message`, `option_order`) VALUES
(1, 8, '1', 'AtOnce', NULL, NULL, 1),
(2, 8, '8', 'Daily', NULL, NULL, 2),
(3, 8, '0', 'No', NULL, NULL, 3),
(4, 9, '1', 'AtOnce', NULL, NULL, 1),
(5, 9, '8', 'Daily', NULL, NULL, 2),
(6, 9, '0', 'No', NULL, NULL, 3),
(7, 10, '1', 'AtOnce', NULL, NULL, 1),
(8, 10, '8', 'Daily', NULL, NULL, 2),
(9, 10, '0', 'No', NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extra_field_option_rel_field_option`
--

CREATE TABLE `extra_field_option_rel_field_option` (
  `id` int(11) NOT NULL,
  `field_id` int(11) DEFAULT NULL,
  `field_option_id` int(11) DEFAULT NULL,
  `related_field_option_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extra_field_rel_tag`
--

CREATE TABLE `extra_field_rel_tag` (
  `id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `extra_field_rel_tag`
--

INSERT INTO `extra_field_rel_tag` (`id`, `field_id`, `tag_id`, `item_id`) VALUES
(1, 14, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extra_field_saved_search`
--

CREATE TABLE `extra_field_saved_search` (
  `id` int(11) NOT NULL,
  `field_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extra_field_values`
--

CREATE TABLE `extra_field_values` (
  `id` int(11) NOT NULL,
  `field_id` int(11) DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `extra_field_values`
--

INSERT INTO `extra_field_values` (`id`, `field_id`, `value`, `item_id`, `created_at`, `updated_at`, `comment`) VALUES
(1, 8, '1', 1, '2016-11-11 14:23:26', '2016-11-11 14:23:26', NULL),
(2, 9, '1', 1, '2016-11-11 14:23:26', '2016-11-11 14:23:26', NULL),
(3, 10, '1', 1, '2016-11-11 14:23:26', '2016-11-11 14:23:26', NULL),
(4, 2, 'true', 1, '2016-11-11 14:23:26', '2016-11-25 01:22:44', NULL),
(5, 8, '1', 2, '2016-11-11 14:23:26', '2016-11-11 14:23:26', NULL),
(6, 9, '1', 2, '2016-11-11 14:23:27', '2016-11-11 14:23:27', NULL),
(7, 10, '1', 2, '2016-11-11 14:23:27', '2016-11-11 14:23:27', NULL),
(8, 2, 'true', 2, '2016-11-11 14:23:27', '2016-11-23 03:48:44', NULL),
(9, 18, '', 1, '2016-11-11 14:39:29', '2016-11-25 00:46:48', NULL),
(10, 19, '', 1, '2016-11-11 14:39:29', '2016-11-25 00:46:48', NULL),
(11, 13, '0', 1, '2016-11-11 15:43:21', '2016-11-11 15:43:21', NULL),
(12, 15, '', 1, '2016-11-11 15:43:21', '2016-11-11 15:43:21', NULL),
(13, 11, '1', 1, '2016-11-11 15:48:11', '2016-11-21 19:12:01', NULL),
(14, 18, '', 3, '2016-11-11 16:42:30', '2016-11-21 14:24:40', NULL),
(15, 19, '', 3, '2016-11-11 16:42:30', '2016-11-21 14:24:40', NULL),
(16, 2, 'true', 3, '2016-11-11 16:42:30', '2016-11-25 00:56:40', NULL),
(17, 11, '1', 3, '2016-11-11 17:39:47', '2016-11-25 00:56:55', NULL),
(18, 18, '', 4, '2016-11-23 04:34:48', '2016-11-25 01:11:16', NULL),
(19, 19, '', 4, '2016-11-23 04:34:48', '2016-11-25 01:11:16', NULL),
(20, 2, 'true', 4, '2016-11-23 04:34:49', '2016-11-25 01:11:31', NULL),
(21, 18, '', 5, '2016-11-24 23:01:17', '2016-11-24 23:01:18', NULL),
(22, 19, '', 5, '2016-11-24 23:01:17', '2016-11-24 23:01:18', NULL),
(23, 2, 'true', 5, '2016-11-24 23:01:17', '2016-11-25 00:21:44', NULL),
(24, 11, '1', 5, '2016-11-24 23:22:50', '2016-11-25 00:56:01', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fos_group`
--

CREATE TABLE `fos_group` (
  `id` int(11) NOT NULL,
  `code` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fos_user_user_group`
--

CREATE TABLE `fos_user_user_group` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gradebook_category`
--

CREATE TABLE `gradebook_category` (
  `id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL,
  `course_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `weight` double NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `certif_min_score` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `document_id` int(11) DEFAULT NULL,
  `locked` int(11) NOT NULL,
  `default_lowest_eval_exclude` tinyint(1) DEFAULT NULL,
  `generate_certificates` tinyint(1) NOT NULL,
  `grade_model_id` int(11) DEFAULT NULL,
  `is_requirement` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `gradebook_category`
--

INSERT INTO `gradebook_category` (`id`, `name`, `description`, `user_id`, `course_code`, `parent_id`, `weight`, `visible`, `certif_min_score`, `session_id`, `document_id`, `locked`, `default_lowest_eval_exclude`, `generate_certificates`, `grade_model_id`, `is_requirement`) VALUES
(1, 'TI', '', 1, 'TI', 0, 100, 0, 75, 0, 27, 0, NULL, 0, 0, 0),
(2, 'CURSO - FIN', '', 1, 'TI', 1, 100, 1, 0, 0, NULL, 0, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gradebook_certificate`
--

CREATE TABLE `gradebook_certificate` (
  `id` bigint(20) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `score_certificate` double NOT NULL,
  `created_at` datetime NOT NULL,
  `path_certificate` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `gradebook_certificate`
--

INSERT INTO `gradebook_certificate` (`id`, `cat_id`, `user_id`, `score_certificate`, `created_at`, `path_certificate`) VALUES
(1, 1, 3, 86, '2016-11-24 05:54:52', '/c16a5320fa475530d9583c34fd356ef5.html'),
(2, 1, 5, 100, '2016-11-24 23:57:59', '/2838023a778dfaecdc212708f721b788.html');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gradebook_evaluation`
--

CREATE TABLE `gradebook_evaluation` (
  `id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL,
  `course_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `weight` double NOT NULL,
  `max` double NOT NULL,
  `visible` int(11) NOT NULL,
  `type` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `locked` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gradebook_link`
--

CREATE TABLE `gradebook_link` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `ref_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `weight` double NOT NULL,
  `visible` int(11) NOT NULL,
  `locked` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `gradebook_link`
--

INSERT INTO `gradebook_link` (`id`, `type`, `ref_id`, `user_id`, `course_code`, `category_id`, `created_at`, `weight`, `visible`, `locked`) VALUES
(4, 4, 10, 1, 'TI', 2, '2016-11-24 23:57:50', 100, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gradebook_linkeval_log`
--

CREATE TABLE `gradebook_linkeval_log` (
  `id` int(11) NOT NULL,
  `id_linkeval_log` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `weight` smallint(6) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_id_log` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gradebook_result`
--

CREATE TABLE `gradebook_result` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `evaluation_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `score` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gradebook_result_log`
--

CREATE TABLE `gradebook_result_log` (
  `id` int(11) NOT NULL,
  `id_result` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `evaluation_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `score` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gradebook_score_display`
--

CREATE TABLE `gradebook_score_display` (
  `id` int(11) NOT NULL,
  `score` double NOT NULL,
  `display` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `score_color_percent` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gradebook_score_log`
--

CREATE TABLE `gradebook_score_log` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `score` double NOT NULL,
  `registered_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `gradebook_score_log`
--

INSERT INTO `gradebook_score_log` (`id`, `category_id`, `user_id`, `score`, `registered_at`) VALUES
(1, 1, 3, 0, '2016-11-21 14:41:43'),
(2, 1, 3, 0, '2016-11-21 14:44:25'),
(3, 1, 3, 0, '2016-11-21 16:41:01'),
(4, 1, 3, 0, '2016-11-24 06:13:09'),
(5, 1, 3, 100, '2016-11-24 06:20:21'),
(6, 1, 3, 100, '2016-11-24 06:20:47'),
(7, 1, 3, 100, '2016-11-24 20:58:23'),
(8, 1, 3, 100, '2016-11-24 21:00:17'),
(9, 1, 3, 100, '2016-11-24 21:05:30'),
(10, 1, 3, 100, '2016-11-24 21:06:19'),
(11, 1, 3, 100, '2016-11-24 21:13:23'),
(12, 1, 3, 100, '2016-11-24 21:21:32'),
(13, 1, 3, 100, '2016-11-24 21:35:08'),
(14, 1, 3, 100, '2016-11-24 21:43:22'),
(15, 1, 3, 100, '2016-11-24 21:43:47'),
(16, 1, 3, 100, '2016-11-24 21:47:20'),
(17, 1, 3, 100, '2016-11-24 21:51:17'),
(18, 1, 3, 100, '2016-11-24 21:53:19'),
(19, 1, 3, 100, '2016-11-24 21:55:06'),
(20, 1, 3, 100, '2016-11-24 21:58:21'),
(21, 1, 3, 100, '2016-11-24 21:59:54'),
(22, 1, 3, 100, '2016-11-24 22:01:20'),
(23, 1, 3, 100, '2016-11-24 22:05:36'),
(24, 1, 3, 100, '2016-11-24 22:09:15'),
(25, 1, 3, 100, '2016-11-24 22:11:17'),
(26, 1, 3, 100, '2016-11-24 22:13:09'),
(27, 1, 3, 0, '2016-11-24 22:43:51'),
(28, 1, 3, 0, '2016-11-24 22:44:21'),
(29, 1, 3, 0, '2016-11-24 22:56:47'),
(30, 1, 5, 0, '2016-11-24 23:52:35'),
(31, 1, 5, 0, '2016-11-24 23:53:48'),
(32, 1, 5, 0, '2016-11-24 23:54:34'),
(33, 1, 5, 0, '2016-11-24 23:57:09'),
(34, 1, 5, 100, '2016-11-24 23:57:59'),
(35, 1, 5, 100, '2016-11-25 00:22:13'),
(36, 1, 5, 100, '2016-11-25 00:22:25'),
(37, 1, 5, 100, '2016-11-25 00:33:47'),
(38, 1, 5, 100, '2016-11-25 00:36:25'),
(39, 1, 5, 100, '2016-11-25 01:33:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grade_components`
--

CREATE TABLE `grade_components` (
  `id` int(11) NOT NULL,
  `percentage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `acronym` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `grade_model_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grade_model`
--

CREATE TABLE `grade_model` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `default_lowest_eval_exclude` tinyint(1) DEFAULT NULL,
  `default_external_eval` tinyint(1) DEFAULT NULL,
  `default_external_eval_prefix` varchar(140) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hook_call`
--

CREATE TABLE `hook_call` (
  `id` int(11) NOT NULL,
  `hook_event_id` int(11) NOT NULL,
  `hook_observer_id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `hook_order` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `hook_call`
--

INSERT INTO `hook_call` (`id`, `hook_event_id`, `hook_observer_id`, `type`, `hook_order`, `enabled`) VALUES
(1, 1, 1, 0, 1, 0),
(2, 1, 1, 1, 1, 0),
(3, 2, 2, 0, 1, 0),
(4, 2, 2, 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hook_event`
--

CREATE TABLE `hook_event` (
  `id` int(11) NOT NULL,
  `class_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `hook_event`
--

INSERT INTO `hook_event` (`id`, `class_name`, `description`) VALUES
(1, 'HookCreateUser', 'HookDescriptionHookCreateUser'),
(2, 'HookResubscribe', 'HookDescriptionHookResubscribe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hook_observer`
--

CREATE TABLE `hook_observer` (
  `id` int(11) NOT NULL,
  `class_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `plugin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `hook_observer`
--

INSERT INTO `hook_observer` (`id`, `class_name`, `path`, `plugin_name`) VALUES
(1, 'HookCreateDrupalUser', 'plugin/createdrupaluser/src/CreateDrupalUser.php', 'drupaluser'),
(2, 'HookResubscription', 'plugin/resubscription/src/Resubscription.php', 'resubscription');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `original_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `english_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isocode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dokeos_folder` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `available` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `language`
--

INSERT INTO `language` (`id`, `parent_id`, `original_name`, `english_name`, `isocode`, `dokeos_folder`, `available`) VALUES
(1, NULL, '&#1575;&#1604;&#1593;&#1585;&#1576;&#1610;&#1577;', 'arabic', 'ar', 'arabic', 0),
(2, 49, 'Asturianu', 'asturian', 'ast', 'asturian', 0),
(3, NULL, 'Euskara', 'basque', 'eu', 'basque', 1),
(4, NULL, '&#2476;&#2494;&#2434;&#2482;&#2494;', 'bengali', 'bn', 'bengali', 0),
(5, NULL, 'Bosanski', 'bosnian', 'bs', 'bosnian', 1),
(6, 40, 'Portugu&ecirc;s do Brasil', 'brazilian', 'pt-BR', 'brazilian', 1),
(7, NULL, '&#1041;&#1098;&#1083;&#1075;&#1072;&#1088;&#1089;&#1082;&#1080;', 'bulgarian', 'bg', 'bulgarian', 1),
(8, 49, 'Catal&agrave;', 'catalan', 'ca', 'catalan', 0),
(9, NULL, 'Hrvatski', 'croatian', 'hr', 'croatian', 0),
(10, NULL, '&#268;esky', 'czech', 'cs', 'czech', 0),
(11, NULL, 'Dansk', 'danish', 'da', 'danish', 0),
(12, NULL, '&#1583;&#1585;&#1740;', 'dari', 'prs', 'dari', 0),
(13, NULL, 'Nederlands', 'dutch', 'nl', 'dutch', 1),
(14, NULL, 'English', 'english', 'en', 'english', 1),
(15, 49, 'Esperanto', 'esperanto', 'eo', 'esperanto', 0),
(16, NULL, 'Føroyskt', 'faroese', 'fo', 'faroese', 0),
(17, NULL, 'Suomi', 'finnish', 'fi', 'finnish', 0),
(18, NULL, 'Fran&ccedil;ais', 'french', 'fr', 'french', 1),
(19, 28, 'Furlan', 'friulian', 'fur', 'friulian', 0),
(20, 49, 'Galego', 'galician', 'gl', 'galician', 1),
(21, NULL, '&#4325;&#4304;&#4320;&#4311;&#4323;&#4314;&#4312;', 'georgian', 'ka', 'georgian', 0),
(22, NULL, 'Deutsch', 'german', 'de', 'german', 1),
(23, NULL, '&Epsilon;&lambda;&lambda;&eta;&nu;&iota;&kappa;&#940;', 'greek', 'el', 'greek', 1),
(24, NULL, '&#1506;&#1489;&#1512;&#1497;&#1514;', 'hebrew', 'he', 'hebrew', 0),
(25, NULL, '&#2361;&#2367;&#2344;&#2381;&#2342;&#2368;', 'hindi', 'hi', 'hindi', 0),
(26, NULL, 'Magyar', 'hungarian', 'hu', 'hungarian', 1),
(27, NULL, 'Bahasa Indonesia', 'indonesian', 'id', 'indonesian', 1),
(28, NULL, 'Italiano', 'italian', 'it', 'italian', 1),
(29, NULL, '&#26085;&#26412;&#35486;', 'japanese', 'ja', 'japanese', 0),
(30, NULL, '&#54620;&#44397;&#50612;', 'korean', 'ko', 'korean', 0),
(31, NULL, 'Latvie&scaron;u', 'latvian', 'lv', 'latvian', 1),
(32, NULL, 'Lietuvi&#371;', 'lithuanian', 'lt', 'lithuanian', 0),
(33, NULL, '&#1052;&#1072;&#1082;&#1077;&#1076;&#1086;&#1085;&#1089;&#1082;&#1080;', 'macedonian', 'mk', 'macedonian', 0),
(34, NULL, 'Bahasa Melayu', 'malay', 'ms', 'malay', 0),
(35, NULL, 'Norsk', 'norwegian', 'no', 'norwegian', 0),
(36, 18, 'Occitan', 'occitan', 'oc', 'occitan', 0),
(37, NULL, '&#1662;&#1690;&#1578;&#1608;', 'pashto', 'ps', 'pashto', 0),
(38, NULL, '&#1601;&#1575;&#1585;&#1587;&#1740;', 'persian', 'fa', 'persian', 0),
(39, NULL, 'Polski', 'polish', 'pl', 'polish', 1),
(40, NULL, 'Portugu&ecirc;s europeu', 'portuguese', 'pt', 'portuguese', 1),
(41, 49, 'Runasimi', 'quechua_cusco', 'qu', 'quechua_cusco', 0),
(42, NULL, 'Rom&acirc;n&#259;', 'romanian', 'ro', 'romanian', 0),
(43, NULL, '&#1056;&#1091;&#1089;&#1089;&#1082;&#1080;&#1081;', 'russian', 'ru', 'russian', 0),
(44, NULL, 'Srpski', 'serbian', 'sr', 'serbian', 0),
(45, NULL, '&#20013;&#25991;&#65288;&#31616;&#20307;&#65289;', 'simpl_chinese', 'zh', 'simpl_chinese', 0),
(46, NULL, 'Sloven&#269;ina', 'slovak', 'sk', 'slovak', 1),
(47, NULL, 'Sloven&scaron;&#269;ina', 'slovenian', 'sl', 'slovenian', 1),
(48, NULL, '&#1575;&#1604;&#1589;&#1608;&#1605;&#1575;&#1604;&#1610;&#1577;', 'somali', 'so', 'somali', 0),
(49, NULL, 'Espa&ntilde;ol', 'spanish', 'es', 'spanish', 1),
(50, NULL, 'Kiswahili', 'swahili', 'sw', 'swahili', 0),
(51, NULL, 'Svenska', 'swedish', 'sv', 'swedish', 0),
(52, NULL, 'Tagalog', 'tagalog', 'tl', 'tagalog', 1),
(53, NULL, '&#3652;&#3607;&#3618;', 'thai', 'th', 'thai', 0),
(54, NULL, 'Tibetan', 'tibetan', 'bo', 'tibetan', 0),
(55, 45, '&#32321;&#39636;&#20013;&#25991;', 'trad_chinese', 'zh-TW', 'trad_chinese', 0),
(56, NULL, 'T&uuml;rk&ccedil;e', 'turkish', 'tr', 'turkish', 0),
(57, NULL, '&#1059;&#1082;&#1088;&#1072;&#1111;&#1085;&#1089;&#1100;&#1082;&#1072;', 'ukrainian', 'uk', 'ukrainian', 0),
(58, NULL, 'Ti&#7871;ng Vi&#7879;t', 'vietnamese', 'vi', 'vietnamese', 0),
(59, NULL, 'isiXhosa', 'xhosa', 'xh', 'xhosa', 0),
(60, NULL, 'Yor&ugrave;b&aacute;', 'yoruba', 'yo', 'yoruba', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `legal`
--

CREATE TABLE `legal` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `type` int(11) NOT NULL,
  `changes` longtext COLLATE utf8_unicode_ci NOT NULL,
  `version` int(11) DEFAULT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message`
--

CREATE TABLE `message` (
  `id` bigint(20) NOT NULL,
  `user_sender_id` int(11) NOT NULL,
  `user_receiver_id` int(11) NOT NULL,
  `msg_status` tinyint(1) NOT NULL,
  `send_date` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `group_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `update_date` datetime DEFAULT NULL,
  `votes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `message`
--

INSERT INTO `message` (`id`, `user_sender_id`, `user_receiver_id`, `msg_status`, `send_date`, `title`, `content`, `group_id`, `parent_id`, `update_date`, `votes`) VALUES
(1, 3, 1, 1, '2016-11-21 16:24:49', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Ejercicio 1</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-21 16:24:49', NULL),
(2, 3, 1, 4, '2016-11-21 16:24:49', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Ejercicio 1</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-21 16:24:49', NULL),
(3, 3, 1, 1, '2016-11-21 16:41:30', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Ejercicio 2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table><br /><a href="http://localhost/chamilo/main/exercise/exercise_show.php?cidReq=TI&id_session=0&gidReq=0&gradebook=0&origin=&id_session=0&id=3&action=qualify">Haga clic en este enlace para corregir y/o dar feedback a la respuesta</a>', 0, 0, '2016-11-21 16:41:30', NULL),
(4, 3, 1, 4, '2016-11-21 16:41:30', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Ejercicio 2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table><br /><a href="http://localhost/chamilo/main/exercise/exercise_show.php?cidReq=TI&id_session=0&gidReq=0&gradebook=0&origin=&id_session=0&id=3&action=qualify">Haga clic en este enlace para corregir y/o dar feedback a la respuesta</a>', 0, 0, '2016-11-21 16:41:30', NULL),
(5, 3, 1, 1, '2016-11-21 19:38:52', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Ejercicio 1</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-21 19:38:52', NULL),
(6, 3, 1, 4, '2016-11-21 19:38:52', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Ejercicio 1</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-21 19:38:52', NULL),
(7, 3, 1, 1, '2016-11-21 23:31:07', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Ejercicio 1</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-21 23:31:07', NULL),
(8, 3, 1, 4, '2016-11-21 23:31:07', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Ejercicio 1</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-21 23:31:07', NULL),
(9, 3, 1, 1, '2016-11-23 04:28:16', 'assss', 'asdfasdgadfg', 0, 0, '2016-11-23 04:28:16', NULL),
(10, 3, 1, 4, '2016-11-23 04:28:16', 'assss', 'asdfasdgadfg', 0, 0, '2016-11-23 04:28:16', NULL),
(11, 3, 1, 1, '2016-11-24 04:44:49', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 3</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 04:44:49', NULL),
(12, 3, 1, 4, '2016-11-24 04:44:49', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 3</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 04:44:49', NULL),
(13, 3, 4, 1, '2016-11-24 04:44:51', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 3</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 04:44:51', NULL),
(14, 3, 4, 4, '2016-11-24 04:44:51', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 3</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 04:44:51', NULL),
(15, 3, 1, 1, '2016-11-24 04:49:35', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 04:49:35', NULL),
(16, 3, 1, 4, '2016-11-24 04:49:35', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 04:49:35', NULL),
(17, 3, 4, 1, '2016-11-24 04:49:37', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 04:49:37', NULL),
(18, 3, 4, 4, '2016-11-24 04:49:37', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 04:49:37', NULL),
(19, 3, 1, 0, '2016-11-24 05:20:37', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 05:20:37', NULL),
(20, 3, 1, 4, '2016-11-24 05:20:37', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 05:20:37', NULL),
(21, 3, 4, 1, '2016-11-24 05:20:39', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 05:20:39', NULL),
(22, 3, 4, 4, '2016-11-24 05:20:39', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 05:20:39', NULL),
(23, 3, 1, 1, '2016-11-24 05:43:30', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 1 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 05:43:30', NULL),
(24, 3, 1, 4, '2016-11-24 05:43:30', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 1 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 05:43:30', NULL),
(25, 3, 4, 1, '2016-11-24 05:43:32', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 1 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 05:43:32', NULL),
(26, 3, 4, 4, '2016-11-24 05:43:32', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 1 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 05:43:32', NULL),
(27, 3, 1, 1, '2016-11-24 05:47:04', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 05:47:04', NULL),
(28, 3, 1, 4, '2016-11-24 05:47:04', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 05:47:04', NULL),
(29, 3, 4, 1, '2016-11-24 05:47:05', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 05:47:05', NULL),
(30, 3, 4, 4, '2016-11-24 05:47:05', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 05:47:05', NULL),
(31, 3, 1, 1, '2016-11-24 05:51:32', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 05:51:32', NULL),
(32, 3, 1, 4, '2016-11-24 05:51:32', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 05:51:32', NULL),
(33, 3, 4, 1, '2016-11-24 05:51:34', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 05:51:34', NULL),
(34, 3, 4, 4, '2016-11-24 05:51:34', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 05:51:34', NULL),
(35, 3, 1, 1, '2016-11-24 05:54:38', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 1 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 05:54:38', NULL),
(36, 3, 1, 4, '2016-11-24 05:54:38', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 1 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 05:54:38', NULL),
(37, 3, 4, 1, '2016-11-24 05:54:40', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 1 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 05:54:40', NULL),
(38, 3, 4, 4, '2016-11-24 05:54:40', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 1 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 05:54:40', NULL),
(39, 3, 1, 1, '2016-11-24 06:02:47', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 06:02:47', NULL),
(40, 3, 1, 4, '2016-11-24 06:02:47', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 06:02:47', NULL),
(41, 3, 4, 1, '2016-11-24 06:02:48', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 06:02:48', NULL),
(42, 3, 4, 4, '2016-11-24 06:02:48', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 06:02:48', NULL),
(43, 3, 1, 1, '2016-11-24 06:15:06', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 1 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 06:15:06', NULL),
(44, 3, 1, 4, '2016-11-24 06:15:06', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 1 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 06:15:06', NULL),
(45, 3, 4, 1, '2016-11-24 06:15:07', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 1 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 06:15:07', NULL),
(46, 3, 4, 4, '2016-11-24 06:15:07', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 1 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 06:15:07', NULL),
(47, 3, 1, 1, '2016-11-24 06:18:19', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 3</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 06:18:19', NULL),
(48, 3, 1, 4, '2016-11-24 06:18:19', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 3</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 06:18:19', NULL),
(49, 3, 4, 1, '2016-11-24 06:18:21', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 3</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 06:18:21', NULL),
(50, 3, 4, 4, '2016-11-24 06:18:21', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 3</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;Carmen Alvares Soria</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;70191753@upagu.edu.pe</td></tr></table>', 0, 0, '2016-11-24 06:18:21', NULL),
(51, 5, 1, 1, '2016-11-24 23:08:09', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Ejercicio 1</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:08:09', NULL),
(52, 5, 1, 4, '2016-11-24 23:08:09', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Ejercicio 1</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:08:09', NULL),
(53, 5, 4, 1, '2016-11-24 23:08:10', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Ejercicio 1</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:08:10', NULL),
(54, 5, 4, 4, '2016-11-24 23:08:10', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Ejercicio 1</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:08:10', NULL),
(55, 5, 1, 1, '2016-11-24 23:13:00', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:13:00', NULL),
(56, 5, 1, 4, '2016-11-24 23:13:00', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:13:00', NULL),
(57, 5, 4, 1, '2016-11-24 23:13:02', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:13:02', NULL),
(58, 5, 4, 4, '2016-11-24 23:13:02', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:13:02', NULL),
(59, 5, 1, 1, '2016-11-24 23:17:40', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 3</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:17:40', NULL),
(60, 5, 1, 4, '2016-11-24 23:17:40', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 3</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:17:40', NULL),
(61, 5, 4, 1, '2016-11-24 23:17:41', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 3</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:17:41', NULL),
(62, 5, 4, 4, '2016-11-24 23:17:41', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 3</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:17:41', NULL),
(63, 5, 1, 1, '2016-11-24 23:24:56', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 1 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:24:56', NULL),
(64, 5, 1, 4, '2016-11-24 23:24:56', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 1 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:24:56', NULL),
(65, 5, 4, 1, '2016-11-24 23:24:58', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 1 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:24:58', NULL),
(66, 5, 4, 4, '2016-11-24 23:24:58', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 1 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:24:58', NULL),
(67, 5, 1, 1, '2016-11-24 23:27:36', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:27:36', NULL),
(68, 5, 1, 4, '2016-11-24 23:27:36', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:27:36', NULL),
(69, 5, 4, 1, '2016-11-24 23:27:38', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:27:38', NULL),
(70, 5, 4, 4, '2016-11-24 23:27:38', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:27:38', NULL),
(71, 5, 1, 1, '2016-11-24 23:31:34', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:31:34', NULL),
(72, 5, 1, 4, '2016-11-24 23:31:34', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:31:34', NULL),
(73, 5, 4, 1, '2016-11-24 23:31:36', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:31:36', NULL),
(74, 5, 4, 4, '2016-11-24 23:31:36', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:31:36', NULL),
(75, 5, 1, 1, '2016-11-24 23:35:36', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 1 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:35:36', NULL),
(76, 5, 1, 4, '2016-11-24 23:35:36', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 1 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:35:36', NULL),
(77, 5, 4, 1, '2016-11-24 23:35:37', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 1 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:35:37', NULL),
(78, 5, 4, 4, '2016-11-24 23:35:37', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 1 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:35:37', NULL),
(79, 5, 1, 1, '2016-11-24 23:41:00', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:41:00', NULL),
(80, 5, 1, 4, '2016-11-24 23:41:00', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:41:00', NULL),
(81, 5, 4, 1, '2016-11-24 23:41:03', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:41:03', NULL),
(82, 5, 4, 4, '2016-11-24 23:41:03', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 2 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:41:03', NULL),
(83, 5, 1, 1, '2016-11-24 23:46:05', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 1 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:46:05', NULL),
(84, 5, 1, 4, '2016-11-24 23:46:05', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 1 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:46:05', NULL),
(85, 5, 4, 1, '2016-11-24 23:46:06', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 1 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:46:06', NULL),
(86, 5, 4, 4, '2016-11-24 23:46:06', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 1 - N2</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:46:06', NULL),
(87, 5, 1, 1, '2016-11-24 23:49:44', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 3</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:49:44', NULL),
(88, 5, 1, 4, '2016-11-24 23:49:44', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 3</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:49:44', NULL),
(89, 5, 4, 1, '2016-11-24 23:49:45', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 3</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:49:45', NULL),
(90, 5, 4, 4, '2016-11-24 23:49:45', 'Un estudiante ha contestado una pregunta', 'Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercicio</td><td>&nbsp;Preguntas Leccion 3</td></tr><tr><td>Nombre del estudiante</td><td>&nbsp;HANS CORDOVA</td></tr><tr><td>E-Mail del estudiante</td><td>&nbsp;hancito20@gmail.com</td></tr></table>', 0, 0, '2016-11-24 23:49:45', NULL),
(91, 1, 1, 1, '2016-11-25 00:49:03', 'Tecnico en Informatica - Revisión de proyectos E-Learning', '<div></div><hr /><a href="mailto:neiss.rodriguez@gmail.com">1 RODRIGUEZ VILLAR, NEISER</a><br/><a href="http://localhost/chamilo/main/announcements/announcements.php?cidReq=TI&id_session=0&gidReq=0">Tecnico en Informatica</a><br/>', 0, 0, '2016-11-25 00:49:03', NULL),
(92, 1, 1, 4, '2016-11-25 00:49:03', 'Tecnico en Informatica - Revisión de proyectos E-Learning', '<div></div><hr /><a href="mailto:neiss.rodriguez@gmail.com">1 RODRIGUEZ VILLAR, NEISER</a><br/><a href="http://localhost/chamilo/main/announcements/announcements.php?cidReq=TI&id_session=0&gidReq=0">Tecnico en Informatica</a><br/>', 0, 0, '2016-11-25 00:49:03', NULL),
(93, 1, 3, 1, '2016-11-25 00:49:05', 'Tecnico en Informatica - Revisión de proyectos E-Learning', '<div></div><hr /><a href="mailto:neiss.rodriguez@gmail.com">1 RODRIGUEZ VILLAR, NEISER</a><br/><a href="http://localhost/chamilo/main/announcements/announcements.php?cidReq=TI&id_session=0&gidReq=0">Tecnico en Informatica</a><br/>', 0, 0, '2016-11-25 00:49:05', NULL),
(94, 1, 3, 4, '2016-11-25 00:49:05', 'Tecnico en Informatica - Revisión de proyectos E-Learning', '<div></div><hr /><a href="mailto:neiss.rodriguez@gmail.com">1 RODRIGUEZ VILLAR, NEISER</a><br/><a href="http://localhost/chamilo/main/announcements/announcements.php?cidReq=TI&id_session=0&gidReq=0">Tecnico en Informatica</a><br/>', 0, 0, '2016-11-25 00:49:05', NULL),
(95, 1, 4, 1, '2016-11-25 00:49:06', 'Tecnico en Informatica - Revisión de proyectos E-Learning', '<div></div><hr /><a href="mailto:neiss.rodriguez@gmail.com">1 RODRIGUEZ VILLAR, NEISER</a><br/><a href="http://localhost/chamilo/main/announcements/announcements.php?cidReq=TI&id_session=0&gidReq=0">Tecnico en Informatica</a><br/>', 0, 0, '2016-11-25 00:49:06', NULL),
(96, 1, 4, 4, '2016-11-25 00:49:06', 'Tecnico en Informatica - Revisión de proyectos E-Learning', '<div></div><hr /><a href="mailto:neiss.rodriguez@gmail.com">1 RODRIGUEZ VILLAR, NEISER</a><br/><a href="http://localhost/chamilo/main/announcements/announcements.php?cidReq=TI&id_session=0&gidReq=0">Tecnico en Informatica</a><br/>', 0, 0, '2016-11-25 00:49:06', NULL),
(97, 1, 5, 1, '2016-11-25 00:49:07', 'Tecnico en Informatica - Revisión de proyectos E-Learning', '<div></div><hr /><a href="mailto:neiss.rodriguez@gmail.com">1 RODRIGUEZ VILLAR, NEISER</a><br/><a href="http://localhost/chamilo/main/announcements/announcements.php?cidReq=TI&id_session=0&gidReq=0">Tecnico en Informatica</a><br/>', 0, 0, '2016-11-25 00:49:07', NULL),
(98, 1, 5, 4, '2016-11-25 00:49:07', 'Tecnico en Informatica - Revisión de proyectos E-Learning', '<div></div><hr /><a href="mailto:neiss.rodriguez@gmail.com">1 RODRIGUEZ VILLAR, NEISER</a><br/><a href="http://localhost/chamilo/main/announcements/announcements.php?cidReq=TI&id_session=0&gidReq=0">Tecnico en Informatica</a><br/>', 0, 0, '2016-11-25 00:49:07', NULL),
(99, 1, 4, 1, '2016-11-25 01:05:33', 'Encuenta de Curso', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body> </body>\r\n</html><br />\r\n<br />\r\n<a href="http://localhost/chamilo/main/survey/fillsurvey.php?course=TI&invitationcode=3ec7e801652de805e0f8b2538e993757">Haga clic aquí para contestar la encuesta</a><br />\r\n<br />\r\no copie y pegue la siguiente url: <br />\r\n http://localhost/chamilo/main/survey/fillsurvey.php?course=TI&invitationcode=3ec7e801652de805e0f8b2538e993757', 0, 0, '2016-11-25 01:05:33', NULL);
INSERT INTO `message` (`id`, `user_sender_id`, `user_receiver_id`, `msg_status`, `send_date`, `title`, `content`, `group_id`, `parent_id`, `update_date`, `votes`) VALUES
(100, 1, 4, 4, '2016-11-25 01:05:33', 'Encuenta de Curso', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body> </body>\r\n</html><br />\r\n<br />\r\n<a href="http://localhost/chamilo/main/survey/fillsurvey.php?course=TI&invitationcode=3ec7e801652de805e0f8b2538e993757">Haga clic aquí para contestar la encuesta</a><br />\r\n<br />\r\no copie y pegue la siguiente url: <br />\r\n http://localhost/chamilo/main/survey/fillsurvey.php?course=TI&invitationcode=3ec7e801652de805e0f8b2538e993757', 0, 0, '2016-11-25 01:05:33', NULL),
(101, 1, 1, 1, '2016-11-25 01:05:35', 'Encuenta de Curso', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body> </body>\r\n</html><br />\r\n<br />\r\n<a href="http://localhost/chamilo/main/survey/fillsurvey.php?course=TI&invitationcode=2e4723d741803f6360be316ff0ee5b0f">Haga clic aquí para contestar la encuesta</a><br />\r\n<br />\r\no copie y pegue la siguiente url: <br />\r\n http://localhost/chamilo/main/survey/fillsurvey.php?course=TI&invitationcode=2e4723d741803f6360be316ff0ee5b0f', 0, 0, '2016-11-25 01:05:35', NULL),
(102, 1, 1, 4, '2016-11-25 01:05:35', 'Encuenta de Curso', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body> </body>\r\n</html><br />\r\n<br />\r\n<a href="http://localhost/chamilo/main/survey/fillsurvey.php?course=TI&invitationcode=2e4723d741803f6360be316ff0ee5b0f">Haga clic aquí para contestar la encuesta</a><br />\r\n<br />\r\no copie y pegue la siguiente url: <br />\r\n http://localhost/chamilo/main/survey/fillsurvey.php?course=TI&invitationcode=2e4723d741803f6360be316ff0ee5b0f', 0, 0, '2016-11-25 01:05:35', NULL),
(103, 1, 5, 1, '2016-11-25 01:05:36', 'Encuenta de Curso', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body> </body>\r\n</html><br />\r\n<br />\r\n<a href="http://localhost/chamilo/main/survey/fillsurvey.php?course=TI&invitationcode=8561e4bd65cc021a00fdcde434e159da">Haga clic aquí para contestar la encuesta</a><br />\r\n<br />\r\no copie y pegue la siguiente url: <br />\r\n http://localhost/chamilo/main/survey/fillsurvey.php?course=TI&invitationcode=8561e4bd65cc021a00fdcde434e159da', 0, 0, '2016-11-25 01:05:36', NULL),
(104, 1, 5, 4, '2016-11-25 01:05:36', 'Encuenta de Curso', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body> </body>\r\n</html><br />\r\n<br />\r\n<a href="http://localhost/chamilo/main/survey/fillsurvey.php?course=TI&invitationcode=8561e4bd65cc021a00fdcde434e159da">Haga clic aquí para contestar la encuesta</a><br />\r\n<br />\r\no copie y pegue la siguiente url: <br />\r\n http://localhost/chamilo/main/survey/fillsurvey.php?course=TI&invitationcode=8561e4bd65cc021a00fdcde434e159da', 0, 0, '2016-11-25 01:05:36', NULL),
(105, 1, 3, 1, '2016-11-25 01:05:38', 'Encuenta de Curso', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body> </body>\r\n</html><br />\r\n<br />\r\n<a href="http://localhost/chamilo/main/survey/fillsurvey.php?course=TI&invitationcode=216e9da561d237f8fad011016d219c55">Haga clic aquí para contestar la encuesta</a><br />\r\n<br />\r\no copie y pegue la siguiente url: <br />\r\n http://localhost/chamilo/main/survey/fillsurvey.php?course=TI&invitationcode=216e9da561d237f8fad011016d219c55', 0, 0, '2016-11-25 01:05:38', NULL),
(106, 1, 3, 4, '2016-11-25 01:05:38', 'Encuenta de Curso', '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body> </body>\r\n</html><br />\r\n<br />\r\n<a href="http://localhost/chamilo/main/survey/fillsurvey.php?course=TI&invitationcode=216e9da561d237f8fad011016d219c55">Haga clic aquí para contestar la encuesta</a><br />\r\n<br />\r\no copie y pegue la siguiente url: <br />\r\n http://localhost/chamilo/main/survey/fillsurvey.php?course=TI&invitationcode=216e9da561d237f8fad011016d219c55', 0, 0, '2016-11-25 01:05:38', NULL),
(107, 1, 3, 1, '2016-11-25 01:15:35', 'Tecnico en Informatica - Revisión de proyectos E-Learning ', '<div></div><hr /><a href="mailto:neiss.rodriguez@gmail.com">1 RODRIGUEZ VILLAR, NEISER</a><br/><a href="http://localhost/chamilo/main/announcements/announcements.php?cidReq=TI&id_session=0&gidReq=0">Tecnico en Informatica</a><br/>', 0, 0, '2016-11-25 01:15:35', NULL),
(108, 1, 3, 4, '2016-11-25 01:15:35', 'Tecnico en Informatica - Revisión de proyectos E-Learning ', '<div></div><hr /><a href="mailto:neiss.rodriguez@gmail.com">1 RODRIGUEZ VILLAR, NEISER</a><br/><a href="http://localhost/chamilo/main/announcements/announcements.php?cidReq=TI&id_session=0&gidReq=0">Tecnico en Informatica</a><br/>', 0, 0, '2016-11-25 01:15:35', NULL),
(109, 1, 5, 1, '2016-11-25 01:15:37', 'Tecnico en Informatica - Revisión de proyectos E-Learning ', '<div></div><hr /><a href="mailto:neiss.rodriguez@gmail.com">1 RODRIGUEZ VILLAR, NEISER</a><br/><a href="http://localhost/chamilo/main/announcements/announcements.php?cidReq=TI&id_session=0&gidReq=0">Tecnico en Informatica</a><br/>', 0, 0, '2016-11-25 01:15:37', NULL),
(110, 1, 5, 4, '2016-11-25 01:15:37', 'Tecnico en Informatica - Revisión de proyectos E-Learning ', '<div></div><hr /><a href="mailto:neiss.rodriguez@gmail.com">1 RODRIGUEZ VILLAR, NEISER</a><br/><a href="http://localhost/chamilo/main/announcements/announcements.php?cidReq=TI&id_session=0&gidReq=0">Tecnico en Informatica</a><br/>', 0, 0, '2016-11-25 01:15:37', NULL),
(111, 1, 1, 1, '2016-11-25 01:15:38', 'Tecnico en Informatica - Revisión de proyectos E-Learning ', '<div></div><hr /><a href="mailto:neiss.rodriguez@gmail.com">1 RODRIGUEZ VILLAR, NEISER</a><br/><a href="http://localhost/chamilo/main/announcements/announcements.php?cidReq=TI&id_session=0&gidReq=0">Tecnico en Informatica</a><br/>', 0, 0, '2016-11-25 01:15:38', NULL),
(112, 1, 1, 4, '2016-11-25 01:15:38', 'Tecnico en Informatica - Revisión de proyectos E-Learning ', '<div></div><hr /><a href="mailto:neiss.rodriguez@gmail.com">1 RODRIGUEZ VILLAR, NEISER</a><br/><a href="http://localhost/chamilo/main/announcements/announcements.php?cidReq=TI&id_session=0&gidReq=0">Tecnico en Informatica</a><br/>', 0, 0, '2016-11-25 01:15:38', NULL),
(113, 1, 4, 1, '2016-11-25 01:15:39', 'Tecnico en Informatica - Revisión de proyectos E-Learning ', '<div></div><hr /><a href="mailto:neiss.rodriguez@gmail.com">1 RODRIGUEZ VILLAR, NEISER</a><br/><a href="http://localhost/chamilo/main/announcements/announcements.php?cidReq=TI&id_session=0&gidReq=0">Tecnico en Informatica</a><br/>', 0, 0, '2016-11-25 01:15:39', NULL),
(114, 1, 4, 4, '2016-11-25 01:15:39', 'Tecnico en Informatica - Revisión de proyectos E-Learning ', '<div></div><hr /><a href="mailto:neiss.rodriguez@gmail.com">1 RODRIGUEZ VILLAR, NEISER</a><br/><a href="http://localhost/chamilo/main/announcements/announcements.php?cidReq=TI&id_session=0&gidReq=0">Tecnico en Informatica</a><br/>', 0, 0, '2016-11-25 01:15:39', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message_attachment`
--

CREATE TABLE `message_attachment` (
  `id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `size` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notification`
--

CREATE TABLE `notification` (
  `id` bigint(20) NOT NULL,
  `dest_user_id` int(11) NOT NULL,
  `dest_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `send_freq` smallint(6) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `sent_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `notification`
--

INSERT INTO `notification` (`id`, `dest_user_id`, `dest_mail`, `title`, `content`, `send_freq`, `created_at`, `sent_at`) VALUES
(1, 1, 'neiss.rodriguez@gmail.com', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de Carmen Alvares Soria<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td ...', 1, '2016-11-21 16:24:51', '2016-11-21 16:24:51'),
(2, 1, 'neiss.rodriguez@gmail.com', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de Carmen Alvares Soria<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td ...', 1, '2016-11-21 16:41:31', '2016-11-21 16:41:31'),
(3, 1, 'neiss.rodriguez@gmail.com', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de Carmen Alvares Soria<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td ...', 1, '2016-11-21 19:38:54', '2016-11-21 19:38:54'),
(4, 1, 'neiss.rodriguez@gmail.com', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de Carmen Alvares Soria<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td ...', 1, '2016-11-21 23:31:11', '2016-11-21 23:31:11'),
(5, 1, 'neiss.rodriguez@gmail.com', 'assss', 'Tiene un nuevo mensaje de Carmen Alvares Soria<br /><hr><br />asdfasdgadfg<br /><br /><a href="http://localhost/chamilo/main/messages/inbox.php"  >Ver mensaje</a><br /><hr><i>Usted ha recibido esta notificación porque estás suscrito o participa en ella,  ...', 1, '2016-11-23 04:28:18', '2016-11-23 04:28:18'),
(6, 1, 'neiss.rodriguez@gmail.com', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de Carmen Alvares Soria<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td ...', 1, '2016-11-24 04:44:51', '2016-11-24 04:44:51'),
(7, 4, 'liz.valdivia@upagu.edu.pe', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de Carmen Alvares Soria<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td ...', 1, '2016-11-24 04:44:52', '2016-11-24 04:44:52'),
(8, 1, 'neiss.rodriguez@gmail.com', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de Carmen Alvares Soria<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td ...', 1, '2016-11-24 04:49:37', '2016-11-24 04:49:37'),
(9, 4, 'liz.valdivia@upagu.edu.pe', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de Carmen Alvares Soria<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td ...', 1, '2016-11-24 04:49:38', '2016-11-24 04:49:38'),
(10, 1, 'neiss.rodriguez@gmail.com', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de Carmen Alvares Soria<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td ...', 1, '2016-11-24 05:20:39', '2016-11-24 05:20:39'),
(11, 4, 'liz.valdivia@upagu.edu.pe', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de Carmen Alvares Soria<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td ...', 1, '2016-11-24 05:20:41', '2016-11-24 05:20:41'),
(12, 1, 'neiss.rodriguez@gmail.com', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de Carmen Alvares Soria<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td ...', 1, '2016-11-24 05:43:32', '2016-11-24 05:43:32'),
(13, 4, 'liz.valdivia@upagu.edu.pe', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de Carmen Alvares Soria<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td ...', 1, '2016-11-24 05:43:33', '2016-11-24 05:43:33'),
(14, 1, 'neiss.rodriguez@gmail.com', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de Carmen Alvares Soria<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td ...', 1, '2016-11-24 05:47:05', '2016-11-24 05:47:05'),
(15, 4, 'liz.valdivia@upagu.edu.pe', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de Carmen Alvares Soria<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td ...', 1, '2016-11-24 05:47:07', '2016-11-24 05:47:07'),
(16, 1, 'neiss.rodriguez@gmail.com', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de Carmen Alvares Soria<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td ...', 1, '2016-11-24 05:51:34', '2016-11-24 05:51:34'),
(17, 4, 'liz.valdivia@upagu.edu.pe', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de Carmen Alvares Soria<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td ...', 1, '2016-11-24 05:51:35', '2016-11-24 05:51:35'),
(18, 1, 'neiss.rodriguez@gmail.com', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de Carmen Alvares Soria<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td ...', 1, '2016-11-24 05:54:40', '2016-11-24 05:54:40'),
(19, 4, 'liz.valdivia@upagu.edu.pe', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de Carmen Alvares Soria<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td ...', 1, '2016-11-24 05:54:41', '2016-11-24 05:54:41'),
(20, 1, 'neiss.rodriguez@gmail.com', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de Carmen Alvares Soria<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td ...', 1, '2016-11-24 06:02:48', '2016-11-24 06:02:48'),
(21, 4, 'liz.valdivia@upagu.edu.pe', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de Carmen Alvares Soria<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td ...', 1, '2016-11-24 06:02:50', '2016-11-24 06:02:50'),
(22, 1, 'neiss.rodriguez@gmail.com', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de Carmen Alvares Soria<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td ...', 1, '2016-11-24 06:15:07', '2016-11-24 06:15:07'),
(23, 4, 'liz.valdivia@upagu.edu.pe', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de Carmen Alvares Soria<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td ...', 1, '2016-11-24 06:15:09', '2016-11-24 06:15:09'),
(24, 1, 'neiss.rodriguez@gmail.com', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de Carmen Alvares Soria<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td ...', 1, '2016-11-24 06:18:21', '2016-11-24 06:18:21'),
(25, 4, 'liz.valdivia@upagu.edu.pe', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de Carmen Alvares Soria<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td ...', 1, '2016-11-24 06:18:22', '2016-11-24 06:18:22'),
(26, 1, 'neiss.rodriguez@gmail.com', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de HANS CORDOVA<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercic ...', 1, '2016-11-24 23:08:10', '2016-11-24 23:08:10'),
(27, 4, 'liz.valdivia@upagu.edu.pe', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de HANS CORDOVA<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercic ...', 1, '2016-11-24 23:08:11', '2016-11-24 23:08:11'),
(28, 1, 'neiss.rodriguez@gmail.com', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de HANS CORDOVA<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercic ...', 1, '2016-11-24 23:13:02', '2016-11-24 23:13:02'),
(29, 4, 'liz.valdivia@upagu.edu.pe', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de HANS CORDOVA<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercic ...', 1, '2016-11-24 23:13:04', '2016-11-24 23:13:04'),
(30, 1, 'neiss.rodriguez@gmail.com', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de HANS CORDOVA<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercic ...', 1, '2016-11-24 23:17:41', '2016-11-24 23:17:41'),
(31, 4, 'liz.valdivia@upagu.edu.pe', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de HANS CORDOVA<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercic ...', 1, '2016-11-24 23:17:43', '2016-11-24 23:17:43'),
(32, 1, 'neiss.rodriguez@gmail.com', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de HANS CORDOVA<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercic ...', 1, '2016-11-24 23:24:58', '2016-11-24 23:24:58'),
(33, 4, 'liz.valdivia@upagu.edu.pe', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de HANS CORDOVA<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercic ...', 1, '2016-11-24 23:24:59', '2016-11-24 23:24:59'),
(34, 1, 'neiss.rodriguez@gmail.com', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de HANS CORDOVA<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercic ...', 1, '2016-11-24 23:27:38', '2016-11-24 23:27:38'),
(35, 4, 'liz.valdivia@upagu.edu.pe', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de HANS CORDOVA<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercic ...', 1, '2016-11-24 23:27:39', '2016-11-24 23:27:39'),
(36, 1, 'neiss.rodriguez@gmail.com', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de HANS CORDOVA<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercic ...', 1, '2016-11-24 23:31:36', '2016-11-24 23:31:36'),
(37, 4, 'liz.valdivia@upagu.edu.pe', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de HANS CORDOVA<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercic ...', 1, '2016-11-24 23:31:38', '2016-11-24 23:31:38'),
(38, 1, 'neiss.rodriguez@gmail.com', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de HANS CORDOVA<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercic ...', 1, '2016-11-24 23:35:37', '2016-11-24 23:35:37'),
(39, 4, 'liz.valdivia@upagu.edu.pe', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de HANS CORDOVA<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercic ...', 1, '2016-11-24 23:35:39', '2016-11-24 23:35:39'),
(40, 1, 'neiss.rodriguez@gmail.com', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de HANS CORDOVA<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercic ...', 1, '2016-11-24 23:41:02', '2016-11-24 23:41:02'),
(41, 4, 'liz.valdivia@upagu.edu.pe', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de HANS CORDOVA<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercic ...', 1, '2016-11-24 23:41:04', '2016-11-24 23:41:04'),
(42, 1, 'neiss.rodriguez@gmail.com', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de HANS CORDOVA<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercic ...', 1, '2016-11-24 23:46:06', '2016-11-24 23:46:06'),
(43, 4, 'liz.valdivia@upagu.edu.pe', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de HANS CORDOVA<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercic ...', 1, '2016-11-24 23:46:08', '2016-11-24 23:46:08'),
(44, 1, 'neiss.rodriguez@gmail.com', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de HANS CORDOVA<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercic ...', 1, '2016-11-24 23:49:45', '2016-11-24 23:49:45'),
(45, 4, 'liz.valdivia@upagu.edu.pe', 'Un estudiante ha contestado una pregunta', 'Tiene un nuevo mensaje de HANS CORDOVA<br /><hr><br />Un estudiante ha contestado una pregunta<br /><br />Detalles de los intentos : <br /><br /><table><tr><td><em>Nombre del curso</em></td><td>&nbsp;<b>Técnico en Informática</b></td></tr><tr><td>Ejercic ...', 1, '2016-11-24 23:49:47', '2016-11-24 23:49:47'),
(46, 1, 'neiss.rodriguez@gmail.com', 'Tecnico en Informatica - Revisión de proyectos E-Learning', '<div></div><hr /><a href="mailto:neiss.rodriguez@gmail.com">1 RODRIGUEZ VILLAR, NEISER</a><br/><a href="http://localhost/chamilo/main/announcements/announcements.php?cidReq=TI&id_session=0&gidReq=0">Tecnico en Informatica</a><br/><br /><br /><a href="htt ...', 1, '2016-11-25 00:49:05', '2016-11-25 00:49:05'),
(47, 3, '70191753@upagu.edu.pe', 'Tecnico en Informatica - Revisión de proyectos E-Learning', '<div></div><hr /><a href="mailto:neiss.rodriguez@gmail.com">1 RODRIGUEZ VILLAR, NEISER</a><br/><a href="http://localhost/chamilo/main/announcements/announcements.php?cidReq=TI&id_session=0&gidReq=0">Tecnico en Informatica</a><br/><br /><br /><a href="htt ...', 1, '2016-11-25 00:49:06', '2016-11-25 00:49:06'),
(48, 4, 'liz.valdivia@upagu.edu.pe', 'Tecnico en Informatica - Revisión de proyectos E-Learning', '<div></div><hr /><a href="mailto:neiss.rodriguez@gmail.com">1 RODRIGUEZ VILLAR, NEISER</a><br/><a href="http://localhost/chamilo/main/announcements/announcements.php?cidReq=TI&id_session=0&gidReq=0">Tecnico en Informatica</a><br/><br /><br /><a href="htt ...', 1, '2016-11-25 00:49:07', '2016-11-25 00:49:07'),
(49, 5, 'hancito20@gmail.com', 'Tecnico en Informatica - Revisión de proyectos E-Learning', '<div></div><hr /><a href="mailto:neiss.rodriguez@gmail.com">1 RODRIGUEZ VILLAR, NEISER</a><br/><a href="http://localhost/chamilo/main/announcements/announcements.php?cidReq=TI&id_session=0&gidReq=0">Tecnico en Informatica</a><br/><br /><br /><a href="htt ...', 1, '2016-11-25 00:49:08', '2016-11-25 00:49:08'),
(50, 4, 'liz.valdivia@upagu.edu.pe', 'Encuenta de Curso', 'Tiene un nuevo mensaje de NEISER RODRIGUEZ VILLAR<br /><hr><br /><html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body> </body>\r\n</html><br />\r\n<br />\r\n<a href="http://localhost/chamilo/main/survey/fillsurvey.php?course=TI&invitationcode=3ec7e801652de805e0f8b2538e99 ...', 1, '2016-11-25 01:05:35', '2016-11-25 01:05:35'),
(51, 1, 'neiss.rodriguez@gmail.com', 'Encuenta de Curso', 'Tiene un nuevo mensaje de NEISER RODRIGUEZ VILLAR<br /><hr><br /><html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body> </body>\r\n</html><br />\r\n<br />\r\n<a href="http://localhost/chamilo/main/survey/fillsurvey.php?course=TI&invitationcode=2e4723d741803f6360be316ff0ee ...', 1, '2016-11-25 01:05:36', '2016-11-25 01:05:36'),
(52, 5, 'hancito20@gmail.com', 'Encuenta de Curso', 'Tiene un nuevo mensaje de NEISER RODRIGUEZ VILLAR<br /><hr><br /><html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body> </body>\r\n</html><br />\r\n<br />\r\n<a href="http://localhost/chamilo/main/survey/fillsurvey.php?course=TI&invitationcode=8561e4bd65cc021a00fdcde434e1 ...', 1, '2016-11-25 01:05:38', '2016-11-25 01:05:38'),
(53, 3, '70191753@upagu.edu.pe', 'Encuenta de Curso', 'Tiene un nuevo mensaje de NEISER RODRIGUEZ VILLAR<br /><hr><br /><html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body> </body>\r\n</html><br />\r\n<br />\r\n<a href="http://localhost/chamilo/main/survey/fillsurvey.php?course=TI&invitationcode=216e9da561d237f8fad011016d21 ...', 1, '2016-11-25 01:05:40', '2016-11-25 01:05:40'),
(54, 3, '70191753@upagu.edu.pe', 'Tecnico en Informatica - Revisión de proyectos E-Learning ', '<div></div><hr /><a href="mailto:neiss.rodriguez@gmail.com">1 RODRIGUEZ VILLAR, NEISER</a><br/><a href="http://localhost/chamilo/main/announcements/announcements.php?cidReq=TI&id_session=0&gidReq=0">Tecnico en Informatica</a><br/><br /><br /><a href="htt ...', 1, '2016-11-25 01:15:36', '2016-11-25 01:15:36'),
(55, 5, 'hancito20@gmail.com', 'Tecnico en Informatica - Revisión de proyectos E-Learning ', '<div></div><hr /><a href="mailto:neiss.rodriguez@gmail.com">1 RODRIGUEZ VILLAR, NEISER</a><br/><a href="http://localhost/chamilo/main/announcements/announcements.php?cidReq=TI&id_session=0&gidReq=0">Tecnico en Informatica</a><br/><br /><br /><a href="htt ...', 1, '2016-11-25 01:15:38', '2016-11-25 01:15:38'),
(56, 1, 'neiss.rodriguez@gmail.com', 'Tecnico en Informatica - Revisión de proyectos E-Learning ', '<div></div><hr /><a href="mailto:neiss.rodriguez@gmail.com">1 RODRIGUEZ VILLAR, NEISER</a><br/><a href="http://localhost/chamilo/main/announcements/announcements.php?cidReq=TI&id_session=0&gidReq=0">Tecnico en Informatica</a><br/><br /><br /><a href="htt ...', 1, '2016-11-25 01:15:39', '2016-11-25 01:15:39'),
(57, 4, 'liz.valdivia@upagu.edu.pe', 'Tecnico en Informatica - Revisión de proyectos E-Learning ', '<div></div><hr /><a href="mailto:neiss.rodriguez@gmail.com">1 RODRIGUEZ VILLAR, NEISER</a><br/><a href="http://localhost/chamilo/main/announcements/announcements.php?cidReq=TI&id_session=0&gidReq=0">Tecnico en Informatica</a><br/><br /><br /><a href="htt ...', 1, '2016-11-25 01:15:40', '2016-11-25 01:15:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `openid_association`
--

CREATE TABLE `openid_association` (
  `id` int(11) NOT NULL,
  `idp_endpoint_uri` longtext COLLATE utf8_unicode_ci NOT NULL,
  `session_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `assoc_handle` longtext COLLATE utf8_unicode_ci NOT NULL,
  `assoc_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expires_in` bigint(20) NOT NULL,
  `mac_key` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_agenda`
--

CREATE TABLE `personal_agenda` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci,
  `text` longtext COLLATE utf8_unicode_ci,
  `date` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `course` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_event_id` int(11) DEFAULT NULL,
  `all_day` int(11) NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_agenda_repeat`
--

CREATE TABLE `personal_agenda_repeat` (
  `cal_id` int(11) NOT NULL,
  `cal_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cal_end` int(11) DEFAULT NULL,
  `cal_frequency` int(11) DEFAULT NULL,
  `cal_days` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_agenda_repeat_not`
--

CREATE TABLE `personal_agenda_repeat_not` (
  `cal_id` int(11) NOT NULL,
  `cal_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plugin_bbb_meeting`
--

CREATE TABLE `plugin_bbb_meeting` (
  `id` int(10) UNSIGNED NOT NULL,
  `c_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `meeting_name` varchar(255) NOT NULL DEFAULT '',
  `attendee_pw` varchar(255) NOT NULL DEFAULT '',
  `moderator_pw` varchar(255) NOT NULL DEFAULT '',
  `record` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` varchar(255) NOT NULL,
  `closed_at` varchar(255) NOT NULL,
  `calendar_id` int(11) DEFAULT '0',
  `welcome_msg` varchar(255) NOT NULL DEFAULT '',
  `session_id` int(10) UNSIGNED DEFAULT '0',
  `remote_id` char(30) DEFAULT NULL,
  `visibility` tinyint(4) NOT NULL DEFAULT '1',
  `voice_bridge` int(11) NOT NULL DEFAULT '1',
  `access_url` int(11) NOT NULL DEFAULT '1',
  `video_url` text,
  `has_video_m4v` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `plugin_bbb_meeting`
--

INSERT INTO `plugin_bbb_meeting` (`id`, `c_id`, `group_id`, `user_id`, `meeting_name`, `attendee_pw`, `moderator_pw`, `record`, `status`, `created_at`, `closed_at`, `calendar_id`, `welcome_msg`, `session_id`, `remote_id`, `visibility`, `voice_bridge`, `access_url`, `video_url`, `has_video_m4v`) VALUES
(1, 1, 0, 0, 'TI-0', 'TI', 'TImod', 1, 1, '2016-11-23 04:20:02', '', 0, '', 0, '1583518f276bc46.62847254', 1, 33892, 1, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plugin_bbb_room`
--

CREATE TABLE `plugin_bbb_room` (
  `id` int(11) NOT NULL,
  `meeting_id` int(10) UNSIGNED NOT NULL,
  `participant_id` int(11) NOT NULL,
  `in_at` datetime NOT NULL,
  `out_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `plugin_bbb_room`
--

INSERT INTO `plugin_bbb_room` (`id`, `meeting_id`, `participant_id`, `in_at`, `out_at`) VALUES
(1, 1, 1, '2016-11-23 04:20:36', '2016-11-23 04:20:36'),
(2, 1, 1, '2016-11-23 04:21:01', '2016-11-23 04:21:01'),
(3, 1, 3, '2016-11-23 04:21:17', '2016-11-23 04:21:17'),
(4, 1, 1, '2016-11-23 04:26:00', '2016-11-23 04:26:00'),
(5, 1, 3, '2016-11-23 04:27:45', '2016-11-23 04:27:45'),
(6, 1, 4, '2016-11-23 04:35:39', '2016-11-23 04:35:39'),
(7, 1, 1, '2016-11-23 04:42:15', '2016-11-23 04:42:15'),
(8, 1, 1, '2016-11-23 04:42:23', '2016-11-23 04:42:23'),
(9, 1, 1, '2016-11-23 04:48:05', '2016-11-23 04:48:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promotion`
--

CREATE TABLE `promotion` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `career_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `geolocation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(39) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_mask` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `search_engine_ref`
--

CREATE TABLE `search_engine_ref` (
  `id` int(11) NOT NULL,
  `course_code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `tool_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ref_id_high_level` int(11) NOT NULL,
  `ref_id_second_level` int(11) DEFAULT NULL,
  `search_did` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sequence`
--

CREATE TABLE `sequence` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `graph` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sequence_condition`
--

CREATE TABLE `sequence_condition` (
  `id` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `mat_op` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `param` double NOT NULL,
  `act_true` int(11) NOT NULL,
  `act_false` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sequence_condition`
--

INSERT INTO `sequence_condition` (`id`, `description`, `mat_op`, `param`, `act_true`, `act_false`) VALUES
(1, '<= 100%', '<=', 100, 2, '0'),
(2, '>= 70%', '>=', 70, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sequence_formula`
--

CREATE TABLE `sequence_formula` (
  `id` int(11) NOT NULL,
  `sequence_method_id` int(11) DEFAULT NULL,
  `sequence_variable_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sequence_formula`
--

INSERT INTO `sequence_formula` (`id`, `sequence_method_id`, `sequence_variable_id`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 2, 3),
(4, 2, 1),
(5, 3, 3),
(6, 4, 4),
(7, 5, 5),
(8, 6, 6),
(9, 7, 7),
(10, 8, 8),
(11, 9, 3),
(12, 10, 2),
(13, 11, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sequence_method`
--

CREATE TABLE `sequence_method` (
  `id` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `formula` longtext COLLATE utf8_unicode_ci NOT NULL,
  `assign` int(11) NOT NULL,
  `met_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `act_false` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sequence_method`
--

INSERT INTO `sequence_method` (`id`, `description`, `formula`, `assign`, `met_type`, `act_false`) VALUES
(1, 'Add completed item', 'v#2 + $complete_items;', 2, 'add', ''),
(2, 'Update progress by division', 'v#2 / v#3 * 100;', 1, 'div', ''),
(3, 'Update items count', '$total_items;', 3, 'update', ''),
(4, 'Enable success', '1;', 4, 'success', ''),
(5, 'Store success date', '(empty(v#5))? api_get_utc_datetime() : v#5;', 5, 'success', ''),
(6, 'Enable availability', '1;', 6, 'pre', ''),
(7, 'Store availability start date', '(empty(v#7))? api_get_utc_datetime() : v#7;', 7, 'pre', ''),
(8, 'Store availability end date', '(empty($available_end_date))? api_get_utc_datetime($available_end_date) : "0000-00-00 00:00:00";', 8, 'pre', ''),
(9, 'Increase the items count', 'v#3 + $total_items;', 3, 'add', ''),
(10, 'Update completed items', '$complete_items;', 2, 'update', ''),
(11, 'Update progress', '$complete_items / $total_items * 100;', 1, 'update', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sequence_resource`
--

CREATE TABLE `sequence_resource` (
  `id` int(11) NOT NULL,
  `sequence_id` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sequence_row_entity`
--

CREATE TABLE `sequence_row_entity` (
  `id` int(11) NOT NULL,
  `sequence_type_entity_id` int(11) DEFAULT NULL,
  `c_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `row_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sequence_rule`
--

CREATE TABLE `sequence_rule` (
  `id` int(11) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sequence_rule`
--

INSERT INTO `sequence_rule` (`id`, `description`) VALUES
(1, 'If user completes 70% of an entity or group of items, he will be able to access another entity or group of items');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sequence_rule_condition`
--

CREATE TABLE `sequence_rule_condition` (
  `id` int(11) NOT NULL,
  `sequence_rule_id` int(11) DEFAULT NULL,
  `sequence_condition_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sequence_rule_condition`
--

INSERT INTO `sequence_rule_condition` (`id`, `sequence_rule_id`, `sequence_condition_id`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sequence_rule_method`
--

CREATE TABLE `sequence_rule_method` (
  `id` int(11) NOT NULL,
  `sequence_rule_id` int(11) DEFAULT NULL,
  `sequence_method_id` int(11) DEFAULT NULL,
  `method_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sequence_rule_method`
--

INSERT INTO `sequence_rule_method` (`id`, `sequence_rule_id`, `sequence_method_id`, `method_order`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 3),
(3, 1, 3, 0),
(4, 1, 4, 0),
(5, 1, 5, 0),
(6, 1, 6, 0),
(7, 1, 7, 0),
(8, 1, 8, 0),
(9, 1, 9, 2),
(10, 1, 10, 0),
(11, 1, 11, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sequence_type_entity`
--

CREATE TABLE `sequence_type_entity` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ent_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sequence_type_entity`
--

INSERT INTO `sequence_type_entity` (`id`, `name`, `description`, `ent_table`) VALUES
(1, 'Lp', 'Learning Path', 'c_lp'),
(2, 'Quiz', 'Quiz and Tests', 'c_quiz'),
(3, 'LpItem', 'Items of a Learning Path', 'c_lp_item');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sequence_valid`
--

CREATE TABLE `sequence_valid` (
  `id` int(11) NOT NULL,
  `sequence_variable_id` int(11) DEFAULT NULL,
  `sequence_condition_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sequence_valid`
--

INSERT INTO `sequence_valid` (`id`, `sequence_variable_id`, `sequence_condition_id`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sequence_value`
--

CREATE TABLE `sequence_value` (
  `id` int(11) NOT NULL,
  `sequence_row_entity_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `advance` double NOT NULL,
  `complete_items` int(11) NOT NULL,
  `total_items` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  `success_date` datetime DEFAULT NULL,
  `available` tinyint(1) NOT NULL,
  `available_start_date` datetime DEFAULT NULL,
  `available_end_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sequence_variable`
--

CREATE TABLE `sequence_variable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `default_val` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sequence_variable`
--

INSERT INTO `sequence_variable` (`id`, `name`, `description`, `default_val`) VALUES
(1, 'Percentile progress', 'advance', '0.0'),
(2, 'Completed items', 'complete_items', '0'),
(3, 'Items count', 'total_items', '0'),
(4, 'Completed', 'success', '0'),
(5, 'Completion date', 'success_date', '0000-00-00 00:00:00'),
(6, 'Available', 'available', '0'),
(7, 'Availability start date', 'available_start_date', '0000-00-00 00:00:00'),
(8, 'Availability end date', 'available_end_date', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `id_coach` int(11) DEFAULT NULL,
  `session_category_id` int(11) DEFAULT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `show_description` tinyint(1) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `nbr_courses` smallint(6) DEFAULT NULL,
  `nbr_users` int(11) DEFAULT NULL,
  `nbr_classes` int(11) DEFAULT NULL,
  `session_admin_id` int(11) DEFAULT NULL,
  `visibility` int(11) NOT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `display_start_date` datetime DEFAULT NULL,
  `display_end_date` datetime DEFAULT NULL,
  `access_start_date` datetime DEFAULT NULL,
  `access_end_date` datetime DEFAULT NULL,
  `coach_access_start_date` datetime DEFAULT NULL,
  `coach_access_end_date` datetime DEFAULT NULL,
  `send_subscription_notification` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `session_category`
--

CREATE TABLE `session_category` (
  `id` int(11) NOT NULL,
  `access_url_id` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `session_rel_course`
--

CREATE TABLE `session_rel_course` (
  `id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `nbr_users` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `session_rel_course_rel_user`
--

CREATE TABLE `session_rel_course_rel_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `visibility` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `legal_agreement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `session_rel_user`
--

CREATE TABLE `session_rel_user` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `relation_type` int(11) NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `moved_to` int(11) DEFAULT NULL,
  `moved_status` int(11) DEFAULT NULL,
  `moved_at` datetime DEFAULT NULL,
  `registered_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings_current`
--

CREATE TABLE `settings_current` (
  `id` int(11) NOT NULL,
  `variable` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subkey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `selected_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scope` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subkeytext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_url` int(11) NOT NULL DEFAULT '1',
  `access_url_changeable` int(11) NOT NULL,
  `access_url_locked` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `settings_current`
--

INSERT INTO `settings_current` (`id`, `variable`, `subkey`, `type`, `category`, `selected_value`, `title`, `comment`, `scope`, `subkeytext`, `access_url`, `access_url_changeable`, `access_url_locked`) VALUES
(1, 'Institution', NULL, 'textfield', 'Platform', 'UPAGU', 'InstitutionTitle', 'InstitutionComment', 'platform', NULL, 1, 1, 0),
(2, 'InstitutionUrl', NULL, 'textfield', 'Platform', 'http://www.chamilo.org', 'InstitutionUrlTitle', 'InstitutionUrlComment', NULL, NULL, 1, 1, 0),
(3, 'siteName', NULL, 'textfield', 'Platform', 'Grupo 4', 'SiteNameTitle', 'SiteNameComment', NULL, NULL, 1, 1, 0),
(4, 'emailAdministrator', NULL, 'textfield', 'Platform', 'neiss.rodriguez@gmail.com', 'emailAdministratorTitle', 'emailAdministratorComment', NULL, NULL, 1, 1, 0),
(5, 'administratorSurname', NULL, 'textfield', 'Platform', 'RODRIGUEZ VILLAR', 'administratorSurnameTitle', 'administratorSurnameComment', NULL, NULL, 1, 1, 0),
(6, 'administratorName', NULL, 'textfield', 'Platform', 'NEISER', 'administratorNameTitle', 'administratorNameComment', NULL, NULL, 1, 1, 0),
(7, 'show_administrator_data', NULL, 'radio', 'Platform', 'true', 'ShowAdministratorDataTitle', 'ShowAdministratorDataComment', NULL, NULL, 1, 1, 0),
(8, 'show_tutor_data', NULL, 'radio', 'Session', 'true', 'ShowTutorDataTitle', 'ShowTutorDataComment', NULL, NULL, 1, 1, 0),
(9, 'show_teacher_data', NULL, 'radio', 'Platform', 'true', 'ShowTeacherDataTitle', 'ShowTeacherDataComment', NULL, NULL, 1, 1, 0),
(10, 'homepage_view', NULL, 'radio', 'Course', 'activity_big', 'HomepageViewTitle', 'HomepageViewComment', NULL, NULL, 1, 1, 0),
(11, 'show_toolshortcuts', NULL, 'radio', 'Course', 'false', 'ShowToolShortcutsTitle', 'ShowToolShortcutsComment', NULL, NULL, 1, 0, 0),
(12, 'allow_group_categories', NULL, 'radio', 'Course', 'false', 'AllowGroupCategories', 'AllowGroupCategoriesComment', NULL, NULL, 1, 0, 0),
(13, 'server_type', NULL, 'radio', 'Platform', 'production', 'ServerStatusTitle', 'ServerStatusComment', NULL, NULL, 1, 0, 1),
(14, 'platformLanguage', NULL, 'link', 'Languages', 'spanish', 'PlatformLanguageTitle', 'PlatformLanguageComment', NULL, NULL, 1, 0, 0),
(15, 'showonline', 'world', 'checkbox', 'Platform', 'true', 'ShowOnlineTitle', 'ShowOnlineComment', NULL, 'ShowOnlineWorld', 1, 0, 0),
(16, 'showonline', 'users', 'checkbox', 'Platform', 'true', 'ShowOnlineTitle', 'ShowOnlineComment', NULL, 'ShowOnlineUsers', 1, 0, 0),
(17, 'showonline', 'course', 'checkbox', 'Platform', 'true', 'ShowOnlineTitle', 'ShowOnlineComment', NULL, 'ShowOnlineCourse', 1, 0, 0),
(18, 'profile', 'name', 'checkbox', 'User', 'false', 'ProfileChangesTitle', 'ProfileChangesComment', NULL, 'Name', 1, 0, 0),
(19, 'profile', 'officialcode', 'checkbox', 'User', 'false', 'ProfileChangesTitle', 'ProfileChangesComment', NULL, 'OfficialCode', 1, 0, 0),
(20, 'profile', 'email', 'checkbox', 'User', 'false', 'ProfileChangesTitle', 'ProfileChangesComment', NULL, 'Email', 1, 0, 0),
(21, 'profile', 'picture', 'checkbox', 'User', 'true', 'ProfileChangesTitle', 'ProfileChangesComment', NULL, 'UserPicture', 1, 0, 0),
(22, 'profile', 'login', 'checkbox', 'User', 'false', 'ProfileChangesTitle', 'ProfileChangesComment', NULL, 'Login', 1, 0, 0),
(23, 'profile', 'password', 'checkbox', 'User', 'true', 'ProfileChangesTitle', 'ProfileChangesComment', NULL, 'UserPassword', 1, 0, 0),
(24, 'profile', 'language', 'checkbox', 'User', 'true', 'ProfileChangesTitle', 'ProfileChangesComment', NULL, 'Language', 1, 0, 0),
(25, 'default_document_quotum', NULL, 'textfield', 'Course', '100000000', 'DefaultDocumentQuotumTitle', 'DefaultDocumentQuotumComment', NULL, NULL, 1, 0, 0),
(26, 'registration', 'officialcode', 'checkbox', 'User', 'false', 'RegistrationRequiredFormsTitle', 'RegistrationRequiredFormsComment', NULL, 'OfficialCode', 1, 0, 0),
(27, 'registration', 'email', 'checkbox', 'User', 'true', 'RegistrationRequiredFormsTitle', 'RegistrationRequiredFormsComment', NULL, 'Email', 1, 0, 0),
(28, 'registration', 'language', 'checkbox', 'User', 'true', 'RegistrationRequiredFormsTitle', 'RegistrationRequiredFormsComment', NULL, 'Language', 1, 0, 0),
(29, 'default_group_quotum', NULL, 'textfield', 'Course', '5000000', 'DefaultGroupQuotumTitle', 'DefaultGroupQuotumComment', NULL, NULL, 1, 0, 0),
(30, 'allow_registration', NULL, 'radio', 'Platform', 'true', 'AllowRegistrationTitle', 'AllowRegistrationComment', NULL, NULL, 1, 0, 0),
(31, 'allow_registration_as_teacher', NULL, 'radio', 'Platform', 'false', 'AllowRegistrationAsTeacherTitle', 'AllowRegistrationAsTeacherComment', NULL, NULL, 1, 0, 0),
(32, 'allow_lostpassword', NULL, 'radio', 'Platform', 'true', 'AllowLostPasswordTitle', 'AllowLostPasswordComment', NULL, NULL, 1, 0, 0),
(33, 'allow_user_headings', NULL, 'radio', 'Course', 'false', 'AllowUserHeadings', 'AllowUserHeadingsComment', NULL, NULL, 1, 0, 0),
(34, 'course_create_active_tools', 'course_description', 'checkbox', 'Tools', 'true', 'CourseCreateActiveToolsTitle', 'CourseCreateActiveToolsComment', NULL, 'CourseDescription', 1, 0, 0),
(35, 'course_create_active_tools', 'agenda', 'checkbox', 'Tools', 'true', 'CourseCreateActiveToolsTitle', 'CourseCreateActiveToolsComment', NULL, 'Agenda', 1, 0, 0),
(36, 'course_create_active_tools', 'documents', 'checkbox', 'Tools', 'true', 'CourseCreateActiveToolsTitle', 'CourseCreateActiveToolsComment', NULL, 'Documents', 1, 0, 0),
(37, 'course_create_active_tools', 'learning_path', 'checkbox', 'Tools', 'true', 'CourseCreateActiveToolsTitle', 'CourseCreateActiveToolsComment', NULL, 'LearningPath', 1, 0, 0),
(38, 'course_create_active_tools', 'links', 'checkbox', 'Tools', 'true', 'CourseCreateActiveToolsTitle', 'CourseCreateActiveToolsComment', NULL, 'Links', 1, 0, 0),
(39, 'course_create_active_tools', 'announcements', 'checkbox', 'Tools', 'true', 'CourseCreateActiveToolsTitle', 'CourseCreateActiveToolsComment', NULL, 'Announcements', 1, 0, 0),
(40, 'course_create_active_tools', 'forums', 'checkbox', 'Tools', 'true', 'CourseCreateActiveToolsTitle', 'CourseCreateActiveToolsComment', NULL, 'Forums', 1, 0, 0),
(41, 'course_create_active_tools', 'dropbox', 'checkbox', 'Tools', 'true', 'CourseCreateActiveToolsTitle', 'CourseCreateActiveToolsComment', NULL, 'Dropbox', 1, 0, 0),
(42, 'course_create_active_tools', 'quiz', 'checkbox', 'Tools', 'true', 'CourseCreateActiveToolsTitle', 'CourseCreateActiveToolsComment', NULL, 'Quiz', 1, 0, 0),
(43, 'course_create_active_tools', 'users', 'checkbox', 'Tools', 'true', 'CourseCreateActiveToolsTitle', 'CourseCreateActiveToolsComment', NULL, 'Users', 1, 0, 0),
(44, 'course_create_active_tools', 'groups', 'checkbox', 'Tools', 'true', 'CourseCreateActiveToolsTitle', 'CourseCreateActiveToolsComment', NULL, 'Groups', 1, 0, 0),
(45, 'course_create_active_tools', 'chat', 'checkbox', 'Tools', 'true', 'CourseCreateActiveToolsTitle', 'CourseCreateActiveToolsComment', NULL, 'Chat', 1, 0, 0),
(46, 'course_create_active_tools', 'student_publications', 'checkbox', 'Tools', 'true', 'CourseCreateActiveToolsTitle', 'CourseCreateActiveToolsComment', NULL, 'StudentPublications', 1, 0, 0),
(47, 'allow_personal_agenda', NULL, 'radio', 'User', 'true', 'AllowPersonalAgendaTitle', 'AllowPersonalAgendaComment', NULL, NULL, 1, 0, 0),
(48, 'display_coursecode_in_courselist', NULL, 'radio', 'Platform', 'false', 'DisplayCourseCodeInCourselistTitle', 'DisplayCourseCodeInCourselistComment', NULL, NULL, 1, 0, 0),
(49, 'display_teacher_in_courselist', NULL, 'radio', 'Platform', 'true', 'DisplayTeacherInCourselistTitle', 'DisplayTeacherInCourselistComment', NULL, NULL, 1, 0, 0),
(50, 'permanently_remove_deleted_files', NULL, 'radio', 'Tools', 'false', 'PermanentlyRemoveFilesTitle', 'PermanentlyRemoveFilesComment', NULL, NULL, 1, 0, 1),
(51, 'dropbox_allow_overwrite', NULL, 'radio', 'Tools', 'true', 'DropboxAllowOverwriteTitle', 'DropboxAllowOverwriteComment', NULL, NULL, 1, 0, 0),
(52, 'dropbox_max_filesize', NULL, 'textfield', 'Tools', '100034150', 'DropboxMaxFilesizeTitle', 'DropboxMaxFilesizeComment', NULL, NULL, 1, 0, 0),
(53, 'dropbox_allow_just_upload', NULL, 'radio', 'Tools', 'true', 'DropboxAllowJustUploadTitle', 'DropboxAllowJustUploadComment', NULL, NULL, 1, 0, 0),
(54, 'dropbox_allow_student_to_student', NULL, 'radio', 'Tools', 'true', 'DropboxAllowStudentToStudentTitle', 'DropboxAllowStudentToStudentComment', NULL, NULL, 1, 0, 0),
(55, 'dropbox_allow_group', NULL, 'radio', 'Tools', 'true', 'DropboxAllowGroupTitle', 'DropboxAllowGroupComment', NULL, NULL, 1, 0, 0),
(56, 'dropbox_allow_mailing', NULL, 'radio', 'Tools', 'false', 'DropboxAllowMailingTitle', 'DropboxAllowMailingComment', NULL, NULL, 1, 0, 0),
(57, 'administratorTelephone', NULL, 'textfield', 'Platform', '(000) 001 02 03', 'administratorTelephoneTitle', 'administratorTelephoneComment', NULL, NULL, 1, 1, 0),
(58, 'extended_profile', NULL, 'radio', 'User', 'false', 'ExtendedProfileTitle', 'ExtendedProfileComment', NULL, NULL, 1, 0, 0),
(59, 'student_view_enabled', NULL, 'radio', 'Platform', 'true', 'StudentViewEnabledTitle', 'StudentViewEnabledComment', NULL, NULL, 1, 0, 0),
(60, 'show_navigation_menu', NULL, 'radio', 'Course', 'false', 'ShowNavigationMenuTitle', 'ShowNavigationMenuComment', NULL, NULL, 1, 0, 0),
(61, 'enable_tool_introduction', NULL, 'radio', 'course', 'false', 'EnableToolIntroductionTitle', 'EnableToolIntroductionComment', NULL, NULL, 1, 0, 0),
(62, 'page_after_login', NULL, 'radio', 'Platform', 'user_portal.php', 'PageAfterLoginTitle', 'PageAfterLoginComment', NULL, NULL, 1, 0, 0),
(63, 'time_limit_whosonline', NULL, 'textfield', 'Platform', '30', 'TimeLimitWhosonlineTitle', 'TimeLimitWhosonlineComment', NULL, NULL, 1, 0, 0),
(64, 'breadcrumbs_course_homepage', NULL, 'radio', 'Course', 'course_title', 'BreadCrumbsCourseHomepageTitle', 'BreadCrumbsCourseHomepageComment', NULL, NULL, 1, 0, 0),
(65, 'example_material_course_creation', NULL, 'radio', 'Platform', 'false', 'ExampleMaterialCourseCreationTitle', 'ExampleMaterialCourseCreationComment', NULL, NULL, 1, 0, 0),
(66, 'account_valid_duration', NULL, 'textfield', 'Platform', '3660', 'AccountValidDurationTitle', 'AccountValidDurationComment', NULL, NULL, 1, 0, 1),
(67, 'use_session_mode', NULL, 'radio', 'Session', 'true', 'UseSessionModeTitle', 'UseSessionModeComment', NULL, NULL, 1, 0, 0),
(68, 'allow_email_editor', NULL, 'radio', 'Tools', 'false', 'AllowEmailEditorTitle', 'AllowEmailEditorComment', NULL, NULL, 1, 0, 0),
(69, 'registered', NULL, 'textfield', NULL, 'false', 'registered', NULL, NULL, NULL, 1, 0, 0),
(70, 'donotlistcampus', NULL, 'textfield', NULL, 'false', 'donotlistcampus', NULL, NULL, NULL, 1, 0, 0),
(71, 'show_email_addresses', NULL, 'radio', 'Platform', 'false', 'ShowEmailAddresses', 'ShowEmailAddressesComment', NULL, NULL, 1, 1, 0),
(72, 'profile', 'phone', 'checkbox', 'User', 'false', 'ProfileChangesTitle', 'ProfileChangesComment', NULL, 'Phone', 1, 0, 0),
(73, 'service_ppt2lp', 'active', 'radio', NULL, 'false', 'ppt2lp_actived', '', NULL, NULL, 1, 0, 1),
(74, 'service_ppt2lp', 'host', 'textfield', NULL, NULL, 'Host', NULL, NULL, NULL, 1, 0, 1),
(75, 'service_ppt2lp', 'port', 'textfield', NULL, '2002', 'Port', NULL, NULL, NULL, 1, 0, 1),
(76, 'service_ppt2lp', 'user', 'textfield', NULL, NULL, 'UserOnHost', NULL, NULL, NULL, 1, 0, 1),
(77, 'service_ppt2lp', 'ftp_password', 'textfield', NULL, NULL, 'FtpPassword', NULL, NULL, NULL, 1, 0, 1),
(78, 'service_ppt2lp', 'path_to_lzx', 'textfield', NULL, NULL, '', NULL, NULL, NULL, 1, 0, 1),
(79, 'service_ppt2lp', 'size', 'radio', NULL, '720x540', '', NULL, NULL, NULL, 1, 0, 1),
(80, 'stylesheets', NULL, 'textfield', 'stylesheets', 'academica', '', NULL, NULL, NULL, 1, 1, 0),
(81, 'upload_extensions_list_type', NULL, 'radio', 'Security', 'blacklist', 'UploadExtensionsListType', 'UploadExtensionsListTypeComment', NULL, NULL, 1, 0, 1),
(82, 'upload_extensions_blacklist', NULL, 'textfield', 'Security', '', 'UploadExtensionsBlacklist', 'UploadExtensionsBlacklistComment', NULL, NULL, 1, 0, 1),
(83, 'upload_extensions_whitelist', NULL, 'textfield', 'Security', 'htm;html;jpg;jpeg;gif;png;swf;avi;mpg;mpeg;mov;flv;doc;docx;xls;xlsx;ppt;pptx;odt;odp;ods;pdf', 'UploadExtensionsWhitelist', 'UploadExtensionsWhitelistComment', NULL, NULL, 1, 0, 1),
(84, 'upload_extensions_skip', NULL, 'radio', 'Security', 'true', 'UploadExtensionsSkip', 'UploadExtensionsSkipComment', NULL, NULL, 1, 0, 1),
(85, 'upload_extensions_replace_by', NULL, 'textfield', 'Security', 'dangerous', 'UploadExtensionsReplaceBy', 'UploadExtensionsReplaceByComment', NULL, NULL, 1, 0, 1),
(86, 'show_number_of_courses', NULL, 'radio', 'Platform', 'false', 'ShowNumberOfCourses', 'ShowNumberOfCoursesComment', NULL, NULL, 1, 0, 0),
(87, 'show_empty_course_categories', NULL, 'radio', 'Platform', 'true', 'ShowEmptyCourseCategories', 'ShowEmptyCourseCategoriesComment', NULL, NULL, 1, 0, 0),
(88, 'show_back_link_on_top_of_tree', NULL, 'radio', 'Platform', 'false', 'ShowBackLinkOnTopOfCourseTree', 'ShowBackLinkOnTopOfCourseTreeComment', NULL, NULL, 1, 0, 0),
(89, 'show_different_course_language', NULL, 'radio', 'Platform', 'true', 'ShowDifferentCourseLanguage', 'ShowDifferentCourseLanguageComment', NULL, NULL, 1, 1, 0),
(90, 'split_users_upload_directory', NULL, 'radio', 'Tuning', 'true', 'SplitUsersUploadDirectory', 'SplitUsersUploadDirectoryComment', NULL, NULL, 1, 0, 1),
(91, 'hide_dltt_markup', NULL, 'radio', 'Languages', 'true', 'HideDLTTMarkup', 'HideDLTTMarkupComment', NULL, NULL, 1, 0, 1),
(92, 'display_categories_on_homepage', NULL, 'radio', 'Platform', 'false', 'DisplayCategoriesOnHomepageTitle', 'DisplayCategoriesOnHomepageComment', NULL, NULL, 1, 1, 0),
(93, 'permissions_for_new_directories', NULL, 'textfield', 'Security', '0777', 'PermissionsForNewDirs', 'PermissionsForNewDirsComment', NULL, NULL, 1, 0, 1),
(94, 'permissions_for_new_files', NULL, 'textfield', 'Security', '0666', 'PermissionsForNewFiles', 'PermissionsForNewFilesComment', NULL, NULL, 1, 0, 1),
(95, 'show_tabs', 'campus_homepage', 'checkbox', 'Platform', 'true', 'ShowTabsTitle', 'ShowTabsComment', NULL, 'TabsCampusHomepage', 1, 1, 0),
(96, 'show_tabs', 'my_courses', 'checkbox', 'Platform', 'true', 'ShowTabsTitle', 'ShowTabsComment', NULL, 'TabsMyCourses', 1, 1, 0),
(97, 'show_tabs', 'reporting', 'checkbox', 'Platform', 'true', 'ShowTabsTitle', 'ShowTabsComment', NULL, 'TabsReporting', 1, 1, 0),
(98, 'show_tabs', 'platform_administration', 'checkbox', 'Platform', 'true', 'ShowTabsTitle', 'ShowTabsComment', NULL, 'TabsPlatformAdministration', 1, 1, 0),
(99, 'show_tabs', 'my_agenda', 'checkbox', 'Platform', 'true', 'ShowTabsTitle', 'ShowTabsComment', NULL, 'TabsMyAgenda', 1, 1, 0),
(100, 'show_tabs', 'my_profile', 'checkbox', 'Platform', 'false', 'ShowTabsTitle', 'ShowTabsComment', NULL, 'TabsMyProfile', 1, 1, 0),
(101, 'default_forum_view', NULL, 'radio', 'Course', 'flat', 'DefaultForumViewTitle', 'DefaultForumViewComment', NULL, NULL, 1, 0, 0),
(102, 'platform_charset', NULL, 'textfield', 'Languages', 'UTF-8', 'PlatformCharsetTitle', 'PlatformCharsetComment', 'platform', NULL, 1, 0, 1),
(103, 'noreply_email_address', '', 'textfield', 'Platform', '', 'NoReplyEmailAddress', 'NoReplyEmailAddressComment', NULL, NULL, 1, 0, 0),
(104, 'survey_email_sender_noreply', '', 'radio', 'Course', 'coach', 'SurveyEmailSenderNoReply', 'SurveyEmailSenderNoReplyComment', NULL, NULL, 1, 0, 0),
(105, 'openid_authentication', NULL, 'radio', 'Security', 'false', 'OpenIdAuthentication', 'OpenIdAuthenticationComment', NULL, NULL, 1, 0, 0),
(106, 'profile', 'openid', 'checkbox', 'User', 'false', 'ProfileChangesTitle', 'ProfileChangesComment', NULL, 'OpenIDURL', 1, 0, 0),
(107, 'gradebook_enable', NULL, 'radio', 'Gradebook', 'false', 'GradebookActivation', 'GradebookActivationComment', NULL, NULL, 1, 0, 0),
(108, 'show_tabs', 'my_gradebook', 'checkbox', 'Platform', 'false', 'ShowTabsTitle', 'ShowTabsComment', NULL, 'TabsMyGradebook', 1, 1, 0),
(109, 'gradebook_score_display_coloring', 'my_display_coloring', 'checkbox', 'Gradebook', 'false', 'GradebookScoreDisplayColoring', 'GradebookScoreDisplayColoringComment', NULL, 'TabsGradebookEnableColoring', 1, 0, 0),
(110, 'gradebook_score_display_custom', 'my_display_custom', 'checkbox', 'Gradebook', 'false', 'GradebookScoreDisplayCustom', 'GradebookScoreDisplayCustomComment', NULL, 'TabsGradebookEnableCustom', 1, 0, 0),
(111, 'gradebook_score_display_colorsplit', NULL, 'textfield', 'Gradebook', '50', 'GradebookScoreDisplayColorSplit', 'GradebookScoreDisplayColorSplitComment', NULL, NULL, 1, 0, 0),
(112, 'gradebook_score_display_upperlimit', 'my_display_upperlimit', 'checkbox', 'Gradebook', 'false', 'GradebookScoreDisplayUpperLimit', 'GradebookScoreDisplayUpperLimitComment', NULL, 'TabsGradebookEnableUpperLimit', 1, 0, 0),
(113, 'gradebook_number_decimals', NULL, 'select', 'Gradebook', '0', 'GradebookNumberDecimals', 'GradebookNumberDecimalsComment', NULL, NULL, 1, 0, 0),
(114, 'user_selected_theme', NULL, 'radio', 'Platform', 'false', 'UserThemeSelection', 'UserThemeSelectionComment', NULL, NULL, 1, 0, 0),
(115, 'profile', 'theme', 'checkbox', 'User', 'false', 'ProfileChangesTitle', 'ProfileChangesComment', NULL, 'UserTheme', 1, 0, 0),
(116, 'allow_course_theme', NULL, 'radio', 'Course', 'true', 'AllowCourseThemeTitle', 'AllowCourseThemeComment', NULL, NULL, 1, 0, 0),
(117, 'show_closed_courses', NULL, 'radio', 'Platform', 'false', 'ShowClosedCoursesTitle', 'ShowClosedCoursesComment', NULL, NULL, 1, 0, 0),
(118, 'extendedprofile_registration', 'mycomptetences', 'checkbox', 'User', 'false', 'ExtendedProfileRegistrationTitle', 'ExtendedProfileRegistrationComment', NULL, 'MyCompetences', 1, 0, 0),
(119, 'extendedprofile_registration', 'mydiplomas', 'checkbox', 'User', 'false', 'ExtendedProfileRegistrationTitle', 'ExtendedProfileRegistrationComment', NULL, 'MyDiplomas', 1, 0, 0),
(120, 'extendedprofile_registration', 'myteach', 'checkbox', 'User', 'false', 'ExtendedProfileRegistrationTitle', 'ExtendedProfileRegistrationComment', NULL, 'MyTeach', 1, 0, 0),
(121, 'extendedprofile_registration', 'mypersonalopenarea', 'checkbox', 'User', 'false', 'ExtendedProfileRegistrationTitle', 'ExtendedProfileRegistrationComment', NULL, 'MyPersonalOpenArea', 1, 0, 0),
(122, 'extendedprofile_registrationrequired', 'mycomptetences', 'checkbox', 'User', 'false', 'ExtendedProfileRegistrationRequiredTitle', 'ExtendedProfileRegistrationRequiredComment', NULL, 'MyCompetences', 1, 0, 0),
(123, 'extendedprofile_registrationrequired', 'mydiplomas', 'checkbox', 'User', 'false', 'ExtendedProfileRegistrationRequiredTitle', 'ExtendedProfileRegistrationRequiredComment', NULL, 'MyDiplomas', 1, 0, 0),
(124, 'extendedprofile_registrationrequired', 'myteach', 'checkbox', 'User', 'false', 'ExtendedProfileRegistrationRequiredTitle', 'ExtendedProfileRegistrationRequiredComment', NULL, 'MyTeach', 1, 0, 0),
(125, 'extendedprofile_registrationrequired', 'mypersonalopenarea', 'checkbox', 'User', 'false', 'ExtendedProfileRegistrationRequiredTitle', 'ExtendedProfileRegistrationRequiredComment', NULL, 'MyPersonalOpenArea', 1, 0, 0),
(126, 'registration', 'phone', 'checkbox', 'User', 'false', 'RegistrationRequiredFormsTitle', 'RegistrationRequiredFormsComment', NULL, 'Phone', 1, 0, 0),
(127, 'add_users_by_coach', NULL, 'radio', 'Session', 'false', 'AddUsersByCoachTitle', 'AddUsersByCoachComment', NULL, NULL, 1, 0, 0),
(128, 'extend_rights_for_coach', NULL, 'radio', 'Security', 'false', 'ExtendRightsForCoachTitle', 'ExtendRightsForCoachComment', NULL, NULL, 1, 0, 0),
(129, 'extend_rights_for_coach_on_survey', NULL, 'radio', 'Security', 'true', 'ExtendRightsForCoachOnSurveyTitle', 'ExtendRightsForCoachOnSurveyComment', NULL, NULL, 1, 0, 0),
(130, 'course_create_active_tools', 'wiki', 'checkbox', 'Tools', 'true', 'CourseCreateActiveToolsTitle', 'CourseCreateActiveToolsComment', NULL, 'Wiki', 1, 0, 0),
(131, 'show_session_coach', NULL, 'radio', 'Session', 'false', 'ShowSessionCoachTitle', 'ShowSessionCoachComment', NULL, NULL, 1, 0, 0),
(132, 'course_create_active_tools', 'gradebook', 'checkbox', 'Tools', 'true', 'CourseCreateActiveToolsTitle', 'CourseCreateActiveToolsComment', NULL, 'Gradebook', 1, 0, 0),
(133, 'allow_users_to_create_courses', NULL, 'radio', 'Platform', 'true', 'AllowUsersToCreateCoursesTitle', 'AllowUsersToCreateCoursesComment', NULL, NULL, 1, 0, 0),
(134, 'course_create_active_tools', 'survey', 'checkbox', 'Tools', 'true', 'CourseCreateActiveToolsTitle', 'CourseCreateActiveToolsComment', NULL, 'Survey', 1, 0, 0),
(135, 'course_create_active_tools', 'glossary', 'checkbox', 'Tools', 'true', 'CourseCreateActiveToolsTitle', 'CourseCreateActiveToolsComment', NULL, 'Glossary', 1, 0, 0),
(136, 'course_create_active_tools', 'notebook', 'checkbox', 'Tools', 'true', 'CourseCreateActiveToolsTitle', 'CourseCreateActiveToolsComment', NULL, 'Notebook', 1, 0, 0),
(137, 'course_create_active_tools', 'attendances', 'checkbox', 'Tools', 'true', 'CourseCreateActiveToolsTitle', 'CourseCreateActiveToolsComment', NULL, 'Attendances', 1, 0, 0),
(138, 'course_create_active_tools', 'course_progress', 'checkbox', 'Tools', 'true', 'CourseCreateActiveToolsTitle', 'CourseCreateActiveToolsComment', NULL, 'CourseProgress', 1, 0, 0),
(139, 'profile', 'apikeys', 'checkbox', 'User', 'false', 'ProfileChangesTitle', 'ProfileChangesComment', NULL, 'ApiKeys', 1, 0, 0),
(140, 'allow_message_tool', NULL, 'radio', 'Tools', 'true', 'AllowMessageToolTitle', 'AllowMessageToolComment', NULL, NULL, 1, 1, 0),
(141, 'allow_social_tool', NULL, 'radio', 'Tools', 'true', 'AllowSocialToolTitle', 'AllowSocialToolComment', NULL, NULL, 1, 1, 0),
(142, 'allow_students_to_browse_courses', NULL, 'radio', 'Platform', 'true', 'AllowStudentsToBrowseCoursesTitle', 'AllowStudentsToBrowseCoursesComment', NULL, NULL, 1, 1, 0),
(143, 'show_session_data', NULL, 'radio', 'Session', 'false', 'ShowSessionDataTitle', 'ShowSessionDataComment', NULL, NULL, 1, 1, 0),
(144, 'allow_use_sub_language', NULL, 'radio', 'Languages', 'false', 'AllowUseSubLanguageTitle', 'AllowUseSubLanguageComment', NULL, NULL, 1, 0, 0),
(145, 'show_glossary_in_documents', NULL, 'radio', 'Course', 'none', 'ShowGlossaryInDocumentsTitle', 'ShowGlossaryInDocumentsComment', NULL, NULL, 1, 1, 0),
(146, 'allow_terms_conditions', NULL, 'radio', 'Platform', 'false', 'AllowTermsAndConditionsTitle', 'AllowTermsAndConditionsComment', NULL, NULL, 1, 0, 0),
(147, 'course_create_active_tools', 'enable_search', 'checkbox', 'Tools', 'true', 'CourseCreateActiveToolsTitle', 'CourseCreateActiveToolsComment', NULL, 'Search', 1, 0, 0),
(148, 'search_enabled', NULL, 'radio', 'Search', 'false', 'EnableSearchTitle', 'EnableSearchComment', NULL, NULL, 1, 1, 0),
(149, 'search_prefilter_prefix', NULL, NULL, 'Search', '', 'SearchPrefilterPrefix', 'SearchPrefilterPrefixComment', NULL, NULL, 1, 0, 0),
(150, 'search_show_unlinked_results', NULL, 'radio', 'Search', 'true', 'SearchShowUnlinkedResultsTitle', 'SearchShowUnlinkedResultsComment', NULL, NULL, 1, 1, 0),
(151, 'show_courses_descriptions_in_catalog', NULL, 'radio', 'Course', 'true', 'ShowCoursesDescriptionsInCatalogTitle', 'ShowCoursesDescriptionsInCatalogComment', NULL, NULL, 1, 1, 0),
(152, 'allow_coach_to_edit_course_session', NULL, 'radio', 'Session', 'true', 'AllowCoachsToEditInsideTrainingSessions', 'AllowCoachsToEditInsideTrainingSessionsComment', NULL, NULL, 1, 0, 0),
(153, 'show_glossary_in_extra_tools', NULL, 'radio', 'Course', 'none', 'ShowGlossaryInExtraToolsTitle', 'ShowGlossaryInExtraToolsComment', NULL, NULL, 1, 1, 0),
(154, 'send_email_to_admin_when_create_course', NULL, 'radio', 'Platform', 'false', 'SendEmailToAdminTitle', 'SendEmailToAdminComment', NULL, NULL, 1, 1, 0),
(155, 'go_to_course_after_login', NULL, 'radio', 'Course', 'false', 'GoToCourseAfterLoginTitle', 'GoToCourseAfterLoginComment', NULL, NULL, 1, 0, 0),
(156, 'math_asciimathML', NULL, 'radio', 'Editor', 'false', 'MathASCIImathMLTitle', 'MathASCIImathMLComment', NULL, NULL, 1, 0, 0),
(157, 'enabled_asciisvg', NULL, 'radio', 'Editor', 'false', 'AsciiSvgTitle', 'AsciiSvgComment', NULL, NULL, 1, 0, 0),
(158, 'include_asciimathml_script', NULL, 'radio', 'Editor', 'false', 'IncludeAsciiMathMlTitle', 'IncludeAsciiMathMlComment', NULL, NULL, 1, 0, 0),
(159, 'youtube_for_students', NULL, 'radio', 'Editor', 'true', 'YoutubeForStudentsTitle', 'YoutubeForStudentsComment', NULL, NULL, 1, 0, 0),
(160, 'block_copy_paste_for_students', NULL, 'radio', 'Editor', 'false', 'BlockCopyPasteForStudentsTitle', 'BlockCopyPasteForStudentsComment', NULL, NULL, 1, 0, 0),
(161, 'more_buttons_maximized_mode', NULL, 'radio', 'Editor', 'true', 'MoreButtonsForMaximizedModeTitle', 'MoreButtonsForMaximizedModeComment', NULL, NULL, 1, 0, 0),
(162, 'students_download_folders', NULL, 'radio', 'Tools', 'true', 'AllowStudentsDownloadFoldersTitle', 'AllowStudentsDownloadFoldersComment', NULL, NULL, 1, 0, 0),
(163, 'users_copy_files', NULL, 'radio', 'Tools', 'true', 'AllowUsersCopyFilesTitle', 'AllowUsersCopyFilesComment', NULL, NULL, 1, 1, 0),
(164, 'show_tabs', 'social', 'checkbox', 'Platform', 'true', 'ShowTabsTitle', 'ShowTabsComment', NULL, 'TabsSocial', 1, 0, 0),
(165, 'allow_students_to_create_groups_in_social', NULL, 'radio', 'Tools', 'false', 'AllowStudentsToCreateGroupsInSocialTitle', 'AllowStudentsToCreateGroupsInSocialComment', NULL, NULL, 1, 0, 0),
(166, 'allow_send_message_to_all_platform_users', NULL, 'radio', 'Tools', 'true', 'AllowSendMessageToAllPlatformUsersTitle', 'AllowSendMessageToAllPlatformUsersComment', NULL, NULL, 1, 0, 0),
(167, 'message_max_upload_filesize', NULL, 'textfield', 'Tools', '20971520', 'MessageMaxUploadFilesizeTitle', 'MessageMaxUploadFilesizeComment', NULL, NULL, 1, 0, 0),
(168, 'show_tabs', 'dashboard', 'checkbox', 'Platform', 'true', 'ShowTabsTitle', 'ShowTabsComment', NULL, 'TabsDashboard', 1, 1, 0),
(169, 'use_users_timezone', 'timezones', 'radio', 'Timezones', 'true', 'UseUsersTimezoneTitle', 'UseUsersTimezoneComment', NULL, 'Timezones', 1, 1, 0),
(170, 'timezone_value', 'timezones', 'select', 'Timezones', '', 'TimezoneValueTitle', 'TimezoneValueComment', NULL, 'Timezones', 1, 1, 0),
(171, 'allow_user_course_subscription_by_course_admin', NULL, 'radio', 'Security', 'true', 'AllowUserCourseSubscriptionByCourseAdminTitle', 'AllowUserCourseSubscriptionByCourseAdminComment', NULL, NULL, 1, 1, 0),
(172, 'show_link_bug_notification', NULL, 'radio', 'Platform', 'false', 'ShowLinkBugNotificationTitle', 'ShowLinkBugNotificationComment', NULL, NULL, 1, 0, 0),
(173, 'show_link_ticket_notification', NULL, 'radio', 'Platform', 'false', 'ShowLinkTicketNotificationTitle', 'ShowLinkTicketNotificationComment', NULL, NULL, 1, 0, 0),
(174, 'course_validation', NULL, 'radio', 'Platform', 'false', 'EnableCourseValidation', 'EnableCourseValidationComment', NULL, NULL, 1, 1, 0),
(175, 'course_validation_terms_and_conditions_url', NULL, 'textfield', 'Platform', '', 'CourseValidationTermsAndConditionsLink', 'CourseValidationTermsAndConditionsLinkComment', NULL, NULL, 1, 1, 0),
(176, 'sso_authentication', NULL, 'radio', 'Security', 'false', 'EnableSSOTitle', 'EnableSSOComment', NULL, NULL, 1, 1, 0),
(177, 'sso_authentication_domain', NULL, 'textfield', 'Security', '', 'SSOServerDomainTitle', 'SSOServerDomainComment', NULL, NULL, 1, 1, 0),
(178, 'sso_authentication_auth_uri', NULL, 'textfield', 'Security', '/?q=user', 'SSOServerAuthURITitle', 'SSOServerAuthURIComment', NULL, NULL, 1, 1, 0),
(179, 'sso_authentication_unauth_uri', NULL, 'textfield', 'Security', '/?q=logout', 'SSOServerUnAuthURITitle', 'SSOServerUnAuthURIComment', NULL, NULL, 1, 1, 0),
(180, 'sso_authentication_protocol', NULL, 'radio', 'Security', 'http://', 'SSOServerProtocolTitle', 'SSOServerProtocolComment', NULL, NULL, 1, 1, 0),
(181, 'enabled_wiris', NULL, 'radio', 'Editor', 'false', 'EnabledWirisTitle', 'EnabledWirisComment', NULL, NULL, 1, 0, 0),
(182, 'allow_spellcheck', NULL, 'radio', 'Editor', 'true', 'AllowSpellCheckTitle', 'AllowSpellCheckComment', NULL, NULL, 1, 0, 0),
(183, 'force_wiki_paste_as_plain_text', NULL, 'radio', 'Editor', 'false', 'ForceWikiPasteAsPlainTextTitle', 'ForceWikiPasteAsPlainTextComment', NULL, NULL, 1, 0, 0),
(184, 'enabled_googlemaps', NULL, 'radio', 'Editor', 'false', 'EnabledGooglemapsTitle', 'EnabledGooglemapsComment', NULL, NULL, 1, 0, 0),
(185, 'enabled_imgmap', NULL, 'radio', 'Editor', 'true', 'EnabledImageMapsTitle', 'EnabledImageMapsComment', NULL, NULL, 1, 0, 0),
(186, 'enabled_support_svg', NULL, 'radio', 'Tools', 'true', 'EnabledSVGTitle', 'EnabledSVGComment', NULL, NULL, 1, 0, 0),
(187, 'pdf_export_watermark_enable', NULL, 'radio', 'Platform', 'false', 'PDFExportWatermarkEnableTitle', 'PDFExportWatermarkEnableComment', 'platform', NULL, 1, 1, 0),
(188, 'pdf_export_watermark_by_course', NULL, 'radio', 'Platform', 'false', 'PDFExportWatermarkByCourseTitle', 'PDFExportWatermarkByCourseComment', 'platform', NULL, 1, 1, 0),
(189, 'pdf_export_watermark_text', NULL, 'textfield', 'Platform', '', 'PDFExportWatermarkTextTitle', 'PDFExportWatermarkTextComment', 'platform', NULL, 1, 1, 0),
(190, 'enabled_insertHtml', NULL, 'radio', 'Editor', 'true', 'EnabledInsertHtmlTitle', 'EnabledInsertHtmlComment', NULL, NULL, 1, 0, 0),
(191, 'students_export2pdf', NULL, 'radio', 'Tools', 'true', 'EnabledStudentExport2PDFTitle', 'EnabledStudentExport2PDFComment', NULL, NULL, 1, 0, 0),
(192, 'exercise_min_score', NULL, 'textfield', 'Course', '', 'ExerciseMinScoreTitle', 'ExerciseMinScoreComment', 'platform', NULL, 1, 1, 0),
(193, 'exercise_max_score', NULL, 'textfield', 'Course', '', 'ExerciseMaxScoreTitle', 'ExerciseMaxScoreComment', 'platform', NULL, 1, 1, 0),
(194, 'show_users_folders', NULL, 'radio', 'Tools', 'true', 'ShowUsersFoldersTitle', 'ShowUsersFoldersComment', NULL, NULL, 1, 0, 0),
(195, 'show_default_folders', NULL, 'radio', 'Tools', 'true', 'ShowDefaultFoldersTitle', 'ShowDefaultFoldersComment', NULL, NULL, 1, 0, 0),
(196, 'show_chat_folder', NULL, 'radio', 'Tools', 'true', 'ShowChatFolderTitle', 'ShowChatFolderComment', NULL, NULL, 1, 0, 0),
(197, 'enabled_text2audio', NULL, 'radio', 'Tools', 'false', 'Text2AudioTitle', 'Text2AudioComment', NULL, NULL, 1, 0, 0),
(198, 'course_hide_tools', 'course_description', 'checkbox', 'Tools', 'false', 'CourseHideToolsTitle', 'CourseHideToolsComment', NULL, 'CourseDescription', 1, 1, 0),
(199, 'course_hide_tools', 'calendar_event', 'checkbox', 'Tools', 'false', 'CourseHideToolsTitle', 'CourseHideToolsComment', NULL, 'Agenda', 1, 1, 0),
(200, 'course_hide_tools', 'document', 'checkbox', 'Tools', 'false', 'CourseHideToolsTitle', 'CourseHideToolsComment', NULL, 'Documents', 1, 1, 0),
(201, 'course_hide_tools', 'learnpath', 'checkbox', 'Tools', 'false', 'CourseHideToolsTitle', 'CourseHideToolsComment', NULL, 'LearningPath', 1, 1, 0),
(202, 'course_hide_tools', 'link', 'checkbox', 'Tools', 'false', 'CourseHideToolsTitle', 'CourseHideToolsComment', NULL, 'Links', 1, 1, 0),
(203, 'course_hide_tools', 'announcement', 'checkbox', 'Tools', 'false', 'CourseHideToolsTitle', 'CourseHideToolsComment', NULL, 'Announcements', 1, 1, 0),
(204, 'course_hide_tools', 'forum', 'checkbox', 'Tools', 'false', 'CourseHideToolsTitle', 'CourseHideToolsComment', NULL, 'Forums', 1, 1, 0),
(205, 'course_hide_tools', 'dropbox', 'checkbox', 'Tools', 'false', 'CourseHideToolsTitle', 'CourseHideToolsComment', NULL, 'Dropbox', 1, 1, 0),
(206, 'course_hide_tools', 'quiz', 'checkbox', 'Tools', 'false', 'CourseHideToolsTitle', 'CourseHideToolsComment', NULL, 'Quiz', 1, 1, 0),
(207, 'course_hide_tools', 'user', 'checkbox', 'Tools', 'false', 'CourseHideToolsTitle', 'CourseHideToolsComment', NULL, 'Users', 1, 1, 0),
(208, 'course_hide_tools', 'group', 'checkbox', 'Tools', 'false', 'CourseHideToolsTitle', 'CourseHideToolsComment', NULL, 'Groups', 1, 1, 0),
(209, 'course_hide_tools', 'chat', 'checkbox', 'Tools', 'false', 'CourseHideToolsTitle', 'CourseHideToolsComment', NULL, 'Chat', 1, 1, 0),
(210, 'course_hide_tools', 'student_publication', 'checkbox', 'Tools', 'false', 'CourseHideToolsTitle', 'CourseHideToolsComment', NULL, 'StudentPublications', 1, 1, 0),
(211, 'course_hide_tools', 'wiki', 'checkbox', 'Tools', 'false', 'CourseHideToolsTitle', 'CourseHideToolsComment', NULL, 'Wiki', 1, 1, 0),
(212, 'course_hide_tools', 'gradebook', 'checkbox', 'Tools', 'false', 'CourseHideToolsTitle', 'CourseHideToolsComment', NULL, 'Gradebook', 1, 1, 0),
(213, 'course_hide_tools', 'survey', 'checkbox', 'Tools', 'false', 'CourseHideToolsTitle', 'CourseHideToolsComment', NULL, 'Survey', 1, 1, 0),
(214, 'course_hide_tools', 'glossary', 'checkbox', 'Tools', 'false', 'CourseHideToolsTitle', 'CourseHideToolsComment', NULL, 'Glossary', 1, 1, 0),
(215, 'course_hide_tools', 'notebook', 'checkbox', 'Tools', 'false', 'CourseHideToolsTitle', 'CourseHideToolsComment', NULL, 'Notebook', 1, 1, 0),
(216, 'course_hide_tools', 'attendance', 'checkbox', 'Tools', 'false', 'CourseHideToolsTitle', 'CourseHideToolsComment', NULL, 'Attendances', 1, 1, 0),
(217, 'course_hide_tools', 'course_progress', 'checkbox', 'Tools', 'false', 'CourseHideToolsTitle', 'CourseHideToolsComment', NULL, 'CourseProgress', 1, 1, 0),
(218, 'course_hide_tools', 'blog_management', 'checkbox', 'Tools', 'false', 'CourseHideToolsTitle', 'CourseHideToolsComment', NULL, 'Blog', 1, 1, 0),
(219, 'course_hide_tools', 'tracking', 'checkbox', 'Tools', 'false', 'CourseHideToolsTitle', 'CourseHideToolsComment', NULL, 'Stats', 1, 1, 0),
(220, 'course_hide_tools', 'course_maintenance', 'checkbox', 'Tools', 'false', 'CourseHideToolsTitle', 'CourseHideToolsComment', NULL, 'Maintenance', 1, 1, 0),
(221, 'course_hide_tools', 'course_setting', 'checkbox', 'Tools', 'false', 'CourseHideToolsTitle', 'CourseHideToolsComment', NULL, 'CourseSettings', 1, 1, 0),
(222, 'enabled_support_pixlr', NULL, 'radio', 'Tools', 'false', 'EnabledPixlrTitle', 'EnabledPixlrComment', NULL, NULL, 1, 0, 0),
(223, 'show_groups_to_users', NULL, 'radio', 'Session', 'false', 'ShowGroupsToUsersTitle', 'ShowGroupsToUsersComment', NULL, NULL, 1, 0, 0),
(224, 'accessibility_font_resize', NULL, 'radio', 'Platform', 'false', 'EnableAccessibilityFontResizeTitle', 'EnableAccessibilityFontResizeComment', NULL, NULL, 1, 1, 0),
(225, 'hide_courses_in_sessions', NULL, 'radio', 'Session', 'false', 'HideCoursesInSessionsTitle', 'HideCoursesInSessionsComment', 'platform', NULL, 1, 1, 0),
(226, 'enable_quiz_scenario', NULL, 'radio', 'Course', 'true', 'EnableQuizScenarioTitle', 'EnableQuizScenarioComment', NULL, NULL, 1, 1, 0),
(227, 'filter_terms', NULL, 'textarea', 'Security', '', 'FilterTermsTitle', 'FilterTermsComment', NULL, NULL, 1, 0, 0),
(228, 'header_extra_content', NULL, 'textarea', 'Tracking', '', 'HeaderExtraContentTitle', 'HeaderExtraContentComment', NULL, NULL, 1, 1, 0),
(229, 'footer_extra_content', NULL, 'textarea', 'Tracking', '', 'FooterExtraContentTitle', 'FooterExtraContentComment', NULL, NULL, 1, 1, 0),
(230, 'show_documents_preview', NULL, 'radio', 'Tools', 'false', 'ShowDocumentPreviewTitle', 'ShowDocumentPreviewComment', NULL, NULL, 1, 1, 0),
(231, 'htmlpurifier_wiki', NULL, 'radio', 'Editor', 'false', 'HtmlPurifierWikiTitle', 'HtmlPurifierWikiComment', NULL, NULL, 1, 0, 0),
(232, 'cas_activate', NULL, 'radio', 'CAS', 'false', 'CasMainActivateTitle', 'CasMainActivateComment', NULL, NULL, 1, 0, 1),
(233, 'cas_server', NULL, 'textfield', 'CAS', '', 'CasMainServerTitle', 'CasMainServerComment', NULL, NULL, 1, 0, 1),
(234, 'cas_server_uri', NULL, 'textfield', 'CAS', '', 'CasMainServerURITitle', 'CasMainServerURIComment', NULL, NULL, 1, 0, 1),
(235, 'cas_port', NULL, 'textfield', 'CAS', '', 'CasMainPortTitle', 'CasMainPortComment', NULL, NULL, 1, 0, 1),
(236, 'cas_protocol', NULL, 'radio', 'CAS', '', 'CasMainProtocolTitle', 'CasMainProtocolComment', NULL, NULL, 1, 0, 1),
(237, 'cas_add_user_activate', NULL, 'radio', 'CAS', 'false', 'CasUserAddActivateTitle', 'CasUserAddActivateComment', NULL, NULL, 1, 0, 1),
(238, 'update_user_info_cas_with_ldap', NULL, 'radio', 'CAS', 'true', 'UpdateUserInfoCasWithLdapTitle', 'UpdateUserInfoCasWithLdapComment', NULL, NULL, 1, 0, 1),
(239, 'student_page_after_login', NULL, 'textfield', 'Platform', '', 'StudentPageAfterLoginTitle', 'StudentPageAfterLoginComment', NULL, NULL, 1, 0, 0),
(240, 'teacher_page_after_login', NULL, 'textfield', 'Platform', '', 'TeacherPageAfterLoginTitle', 'TeacherPageAfterLoginComment', NULL, NULL, 1, 0, 0),
(241, 'drh_page_after_login', NULL, 'textfield', 'Platform', '', 'DRHPageAfterLoginTitle', 'DRHPageAfterLoginComment', NULL, NULL, 1, 0, 0),
(242, 'sessionadmin_page_after_login', NULL, 'textfield', 'Session', '', 'SessionAdminPageAfterLoginTitle', 'SessionAdminPageAfterLoginComment', NULL, NULL, 1, 0, 0),
(243, 'student_autosubscribe', NULL, 'textfield', 'Platform', '', 'StudentAutosubscribeTitle', 'StudentAutosubscribeComment', NULL, NULL, 1, 0, 0),
(244, 'teacher_autosubscribe', NULL, 'textfield', 'Platform', '', 'TeacherAutosubscribeTitle', 'TeacherAutosubscribeComment', NULL, NULL, 1, 0, 0),
(245, 'drh_autosubscribe', NULL, 'textfield', 'Platform', '', 'DRHAutosubscribeTitle', 'DRHAutosubscribeComment', NULL, NULL, 1, 0, 0),
(246, 'sessionadmin_autosubscribe', NULL, 'textfield', 'Session', '', 'SessionadminAutosubscribeTitle', 'SessionadminAutosubscribeComment', NULL, NULL, 1, 0, 0),
(247, 'scorm_cumulative_session_time', NULL, 'radio', 'Course', 'true', 'ScormCumulativeSessionTimeTitle', 'ScormCumulativeSessionTimeComment', NULL, NULL, 1, 0, 0),
(248, 'allow_hr_skills_management', NULL, 'radio', 'Gradebook', 'true', 'AllowHRSkillsManagementTitle', 'AllowHRSkillsManagementComment', NULL, NULL, 1, 1, 0),
(249, 'enable_help_link', NULL, 'radio', 'Platform', 'true', 'EnableHelpLinkTitle', 'EnableHelpLinkComment', NULL, NULL, 1, 0, 0),
(250, 'teachers_can_change_score_settings', NULL, 'radio', 'Gradebook', 'true', 'TeachersCanChangeScoreSettingsTitle', 'TeachersCanChangeScoreSettingsComment', NULL, NULL, 1, 1, 0),
(251, 'allow_users_to_change_email_with_no_password', NULL, 'radio', 'User', 'false', 'AllowUsersToChangeEmailWithNoPasswordTitle', 'AllowUsersToChangeEmailWithNoPasswordComment', NULL, NULL, 1, 0, 0),
(252, 'show_admin_toolbar', NULL, 'radio', 'Platform', 'do_not_show', 'ShowAdminToolbarTitle', 'ShowAdminToolbarComment', NULL, NULL, 1, 1, 0),
(253, 'allow_global_chat', NULL, 'radio', 'Platform', 'true', 'AllowGlobalChatTitle', 'AllowGlobalChatComment', NULL, NULL, 1, 1, 0),
(254, 'languagePriority1', NULL, 'radio', 'Languages', 'course_lang', 'LanguagePriority1Title', 'LanguagePriority1Comment', NULL, NULL, 1, 0, 1),
(255, 'languagePriority2', NULL, 'radio', 'Languages', 'user_profil_lang', 'LanguagePriority2Title', 'LanguagePriority2Comment', NULL, NULL, 1, 0, 1),
(256, 'languagePriority3', NULL, 'radio', 'Languages', 'user_selected_lang', 'LanguagePriority3Title', 'LanguagePriority3Comment', NULL, NULL, 1, 0, 1),
(257, 'languagePriority4', NULL, 'radio', 'Languages', 'platform_lang', 'LanguagePriority4Title', 'LanguagePriority4Comment', NULL, NULL, 1, 0, 1),
(258, 'login_is_email', NULL, 'radio', 'Platform', 'false', 'LoginIsEmailTitle', 'LoginIsEmailComment', NULL, NULL, 1, 0, 1),
(259, 'courses_default_creation_visibility', NULL, 'radio', 'Course', '2', 'CoursesDefaultCreationVisibilityTitle', 'CoursesDefaultCreationVisibilityComment', NULL, NULL, 1, 1, 0),
(260, 'gradebook_enable_grade_model', NULL, 'radio', 'Gradebook', 'false', 'GradebookEnableGradeModelTitle', 'GradebookEnableGradeModelComment', NULL, NULL, 1, 1, 0),
(261, 'teachers_can_change_grade_model_settings', NULL, 'radio', 'Gradebook', 'true', 'TeachersCanChangeGradeModelSettingsTitle', 'TeachersCanChangeGradeModelSettingsComment', NULL, NULL, 1, 1, 0),
(262, 'gradebook_default_weight', NULL, 'textfield', 'Gradebook', '100', 'GradebookDefaultWeightTitle', 'GradebookDefaultWeightComment', NULL, NULL, 1, 0, 0),
(263, 'ldap_description', NULL, 'radio', 'LDAP', NULL, 'LdapDescriptionTitle', 'LdapDescriptionComment', NULL, NULL, 1, 0, 1),
(264, 'shibboleth_description', NULL, 'radio', 'Shibboleth', 'false', 'ShibbolethMainActivateTitle', 'ShibbolethMainActivateComment', NULL, NULL, 1, 0, 0),
(265, 'facebook_description', NULL, 'radio', 'Facebook', 'false', 'FacebookMainActivateTitle', 'FacebookMainActivateComment', NULL, NULL, 1, 0, 0),
(266, 'gradebook_locking_enabled', NULL, 'radio', 'Gradebook', 'false', 'GradebookEnableLockingTitle', 'GradebookEnableLockingComment', NULL, NULL, 1, 0, 0),
(267, 'gradebook_default_grade_model_id', NULL, 'select', 'Gradebook', '-1', 'GradebookDefaultGradeModelTitle', 'GradebookDefaultGradeModelComment', NULL, NULL, 1, 1, 0),
(268, 'allow_session_admins_to_manage_all_sessions', NULL, 'radio', 'Session', 'false', 'AllowSessionAdminsToSeeAllSessionsTitle', 'AllowSessionAdminsToSeeAllSessionsComment', NULL, NULL, 1, 1, 0),
(269, 'allow_skills_tool', NULL, 'radio', 'Platform', 'true', 'AllowSkillsToolTitle', 'AllowSkillsToolComment', NULL, NULL, 1, 1, 0),
(270, 'allow_public_certificates', NULL, 'radio', 'Course', 'false', 'AllowPublicCertificatesTitle', 'AllowPublicCertificatesComment', NULL, NULL, 1, 1, 0),
(271, 'platform_unsubscribe_allowed', NULL, 'radio', 'Platform', 'false', 'PlatformUnsubscribeTitle', 'PlatformUnsubscribeComment', NULL, NULL, 1, 1, 0),
(272, 'activate_email_template', NULL, 'radio', 'Platform', 'false', 'ActivateEmailTemplateTitle', 'ActivateEmailTemplateComment', NULL, NULL, 1, 0, 0),
(273, 'enable_iframe_inclusion', NULL, 'radio', 'Editor', 'false', 'EnableIframeInclusionTitle', 'EnableIframeInclusionComment', NULL, NULL, 1, 1, 0),
(274, 'show_hot_courses', NULL, 'radio', 'Platform', 'true', 'ShowHotCoursesTitle', 'ShowHotCoursesComment', NULL, NULL, 1, 1, 0),
(275, 'enable_webcam_clip', NULL, 'radio', 'Tools', 'false', 'EnableWebCamClipTitle', 'EnableWebCamClipComment', NULL, NULL, 1, 0, 0),
(276, 'use_custom_pages', NULL, 'radio', 'Platform', 'false', 'UseCustomPagesTitle', 'UseCustomPagesComment', NULL, NULL, 1, 1, 0),
(277, 'tool_visible_by_default_at_creation', 'documents', 'checkbox', 'Tools', 'true', 'ToolVisibleByDefaultAtCreationTitle', 'ToolVisibleByDefaultAtCreationComment', NULL, 'Documents', 1, 1, 0),
(278, 'tool_visible_by_default_at_creation', 'learning_path', 'checkbox', 'Tools', 'true', 'ToolVisibleByDefaultAtCreationTitle', 'ToolVisibleByDefaultAtCreationComment', NULL, 'LearningPath', 1, 1, 0),
(279, 'tool_visible_by_default_at_creation', 'links', 'checkbox', 'Tools', 'true', 'ToolVisibleByDefaultAtCreationTitle', 'ToolVisibleByDefaultAtCreationComment', NULL, 'Links', 1, 1, 0),
(280, 'tool_visible_by_default_at_creation', 'announcements', 'checkbox', 'Tools', 'true', 'ToolVisibleByDefaultAtCreationTitle', 'ToolVisibleByDefaultAtCreationComment', NULL, 'Announcements', 1, 1, 0),
(281, 'tool_visible_by_default_at_creation', 'forums', 'checkbox', 'Tools', 'true', 'ToolVisibleByDefaultAtCreationTitle', 'ToolVisibleByDefaultAtCreationComment', NULL, 'Forums', 1, 1, 0),
(282, 'tool_visible_by_default_at_creation', 'quiz', 'checkbox', 'Tools', 'true', 'ToolVisibleByDefaultAtCreationTitle', 'ToolVisibleByDefaultAtCreationComment', NULL, 'Quiz', 1, 1, 0),
(283, 'tool_visible_by_default_at_creation', 'gradebook', 'checkbox', 'Tools', 'true', 'ToolVisibleByDefaultAtCreationTitle', 'ToolVisibleByDefaultAtCreationComment', NULL, 'Gradebook', 1, 1, 0),
(284, 'prevent_session_admins_to_manage_all_users', NULL, 'radio', 'Session', 'false', 'PreventSessionAdminsToManageAllUsersTitle', 'PreventSessionAdminsToManageAllUsersComment', NULL, NULL, 1, 1, 0),
(285, 'documents_default_visibility_defined_in_course', NULL, 'radio', 'Tools', 'false', 'DocumentsDefaultVisibilityDefinedInCourseTitle', 'DocumentsDefaultVisibilityDefinedInCourseComment', NULL, NULL, 1, 1, 0),
(286, 'enabled_mathjax', NULL, 'radio', 'Editor', 'false', 'EnableMathJaxTitle', 'EnableMathJaxComment', NULL, NULL, 1, 0, 0),
(287, 'meta_twitter_site', NULL, 'textfield', 'Tracking', '', 'MetaTwitterSiteTitle', 'MetaTwitterSiteComment', NULL, NULL, 1, 1, 0),
(288, 'meta_twitter_creator', NULL, 'textfield', 'Tracking', '', 'MetaTwitterCreatorTitle', 'MetaTwitterCreatorComment', NULL, NULL, 1, 1, 0),
(289, 'meta_title', NULL, 'textfield', 'Tracking', '', 'MetaTitleTitle', 'MetaTitleComment', NULL, NULL, 1, 1, 0),
(290, 'meta_description', NULL, 'textfield', 'Tracking', '', 'MetaDescriptionTitle', 'MetaDescriptionComment', NULL, NULL, 1, 1, 0),
(291, 'meta_image_path', NULL, 'textfield', 'Tracking', '', 'MetaImagePathTitle', 'MetaImagePathComment', NULL, NULL, 1, 1, 0),
(292, 'allow_teachers_to_create_sessions', NULL, 'radio', 'Session', 'false', 'AllowTeachersToCreateSessionsTitle', 'AllowTeachersToCreateSessionsComment', NULL, NULL, 1, 0, 0),
(293, 'institution_address', NULL, 'textfield', 'Platform', '', 'InstitutionAddressTitle', 'InstitutionAddressComment', NULL, NULL, 1, 1, 0),
(294, 'chamilo_database_version', NULL, 'textfield', NULL, '1.11.0.6', 'DatabaseVersion', '', NULL, NULL, 1, 0, 1),
(295, 'cron_remind_course_finished_activate', NULL, 'radio', 'Crons', 'true', 'CronRemindCourseFinishedActivateTitle', 'CronRemindCourseFinishedActivateComment', NULL, NULL, 1, 1, 0),
(296, 'cron_remind_course_expiration_frequency', NULL, 'textfield', 'Crons', '2', 'CronRemindCourseExpirationFrequencyTitle', 'CronRemindCourseExpirationFrequencyComment', NULL, NULL, 1, 1, 0),
(297, 'cron_remind_course_expiration_activate', NULL, 'radio', 'Crons', 'false', 'CronRemindCourseExpirationActivateTitle', 'CronRemindCourseExpirationActivateComment', NULL, NULL, 1, 1, 0),
(298, 'allow_coach_feedback_exercises', NULL, 'radio', 'Session', 'true', 'AllowCoachFeedbackExercisesTitle', 'AllowCoachFeedbackExercisesComment', NULL, NULL, 1, 0, 0),
(299, 'allow_my_files', NULL, 'radio', 'Platform', 'true', 'AllowMyFilesTitle', 'AllowMyFilesComment', '', NULL, 1, 1, 0),
(300, 'ticket_allow_student_add', NULL, 'radio', 'Ticket', 'false', 'TicketAllowStudentAddTitle', 'TicketAllowStudentAddComment', NULL, NULL, 1, 0, 0),
(301, 'ticket_send_warning_to_all_admins', NULL, 'radio', 'Ticket', 'false', 'TicketSendWarningToAllAdminsTitle', 'TicketSendWarningToAllAdminsComment', NULL, NULL, 1, 0, 0),
(302, 'ticket_warn_admin_no_user_in_category', NULL, 'radio', 'Ticket', 'false', 'TicketWarnAdminNoUserInCategoryTitle', 'TicketWarnAdminNoUserInCategoryComment', NULL, NULL, 1, 0, 0),
(303, 'ticket_allow_category_edition', NULL, 'radio', 'Ticket', 'false', 'TicketAllowCategoryEditionTitle', 'TicketAllowCategoryEditionComment', NULL, NULL, 1, 0, 0),
(304, 'load_term_conditions_section', NULL, 'radio', 'Platform', 'login', 'LoadTermConditionsSectionTitle', 'LoadTermConditionsSectionDescription', NULL, NULL, 1, 0, 0),
(305, 'show_terms_if_profile_completed', NULL, 'radio', 'Ticket', 'false', 'ShowTermsIfProfileCompletedTitle', 'ShowTermsIfProfileCompletedComment', NULL, NULL, 1, 0, 0),
(306, 'hide_home_top_when_connected', '', 'radio', 'Platform', 'false', 'HideHomeTopContentWhenLoggedInText', 'HideHomeTopContentWhenLoggedInComment', NULL, '', 1, 1, 0),
(307, 'hide_global_announcements_when_not_connected', '', 'radio', 'Platform', 'false', 'HideGlobalAnnouncementsWhenNotLoggedInText', 'HideGlobalAnnouncementsWhenNotLoggedInComment', NULL, '', 1, 1, 0),
(308, 'course_creation_use_template', '', 'select_course', 'Course', '', 'CourseCreationUsesTemplateText', 'CourseCreationUsesTemplateComment', NULL, '', 1, 1, 0),
(309, 'allow_strength_pass_checker', '', 'radio', 'Security', 'true', 'EnablePasswordStrengthCheckerText', 'EnablePasswordStrengthCheckerComment', NULL, '', 1, 1, 0),
(310, 'allow_captcha', '', 'radio', 'Security', 'false', 'EnableCaptchaText', 'EnableCaptchaComment', NULL, '', 1, 1, 0),
(311, 'captcha_number_mistakes_to_block_account', '', 'textfield', 'Security', '5', 'CaptchaNumberOfMistakesBeforeBlockingAccountText', 'CaptchaNumberOfMistakesBeforeBlockingAccountComment', NULL, '', 1, 1, 0),
(312, 'captcha_time_to_block', '', 'textfield', 'Security', '5', 'CaptchaTimeAccountIsLockedText', 'CaptchaTimeAccountIsLockedComment', NULL, '', 1, 1, 0),
(313, 'drh_can_access_all_session_content', '', 'radio', 'Session', 'false', 'DRHAccessToAllSessionContentText', 'DRHAccessToAllSessionContentComment', NULL, '', 1, 1, 0),
(314, 'display_groups_forum_in_general_tool', '', 'radio', 'Tools', 'true', 'ShowGroupForaInGeneralToolText', 'ShowGroupForaInGeneralToolComment', NULL, '', 1, 1, 0),
(315, 'allow_tutors_to_assign_students_to_session', '', 'radio', 'Session', 'false', 'TutorsCanAssignStudentsToSessionsText', 'TutorsCanAssignStudentsToSessionsComment', NULL, '', 1, 1, 0),
(316, 'allow_lp_return_link', NULL, 'radio', 'Course', 'true', 'AllowLearningPathReturnLinkTitle', 'AllowLearningPathReturnLinkComment', NULL, NULL, 1, 1, 0),
(317, 'hide_scorm_export_link', NULL, 'radio', 'Course', 'false', 'HideScormExportLinkTitle', 'HideScormExportLinkComment', NULL, NULL, 1, 1, 0),
(318, 'hide_scorm_copy_link', NULL, 'radio', 'Course', 'false', 'HideScormCopyLinkTitle', 'HideScormCopyLinkComment', NULL, NULL, 1, 1, 0),
(319, 'hide_scorm_pdf_link', NULL, 'radio', 'Course', 'true', 'HideScormPdfLinkTitle', 'HideScormPdfLinkComment', NULL, NULL, 1, 1, 0),
(320, 'session_days_before_coach_access', NULL, 'textfield', 'Session', '0', 'SessionDaysBeforeCoachAccessTitle', 'SessionDaysBeforeCoachAccessComment', NULL, NULL, 1, 1, 0),
(321, 'session_days_after_coach_access', NULL, 'textfield', 'Session', '0', 'SessionDaysAfterCoachAccessTitle', 'SessionDaysAfterCoachAccessComment', NULL, NULL, 1, 1, 0),
(322, 'pdf_logo_header', NULL, 'radio', 'Course', 'false', 'PdfLogoHeaderTitle', 'PdfLogoHeaderComment', NULL, NULL, 1, 1, 0),
(323, 'order_user_list_by_official_code', NULL, 'radio', 'Platform', 'false', 'OrderUserListByOfficialCodeTitle', 'OrderUserListByOfficialCodeComment', NULL, NULL, 1, 1, 0),
(324, 'email_alert_manager_on_new_quiz', NULL, 'radio', 'Tools', 'true', 'AlertManagerOnNewQuizTitle', 'AlertManagerOnNewQuizComment', NULL, NULL, 1, 1, 0),
(325, 'show_official_code_exercise_result_list', NULL, 'radio', 'Tools', 'false', 'ShowOfficialCodeInExerciseResultListTitle', 'ShowOfficialCodeInExerciseResultListComment', NULL, NULL, 1, 1, 0),
(326, 'course_catalog_hide_private', NULL, 'radio', 'Platform', 'false', 'HidePrivateCoursesFromCourseCatalogTitle', 'HidePrivateCoursesFromCourseCatalogComment', NULL, NULL, 1, 1, 0),
(327, 'catalog_show_courses_sessions', NULL, 'radio', 'Platform', '0', 'CoursesCatalogueShowSessionsTitle', 'CoursesCatalogueShowSessionsComment', NULL, NULL, 1, 1, 0),
(328, 'auto_detect_language_custom_pages', NULL, 'radio', 'Platform', 'true', 'AutoDetectLanguageCustomPagesTitle', 'AutoDetectLanguageCustomPagesComment', NULL, NULL, 1, 1, 0);
INSERT INTO `settings_current` (`id`, `variable`, `subkey`, `type`, `category`, `selected_value`, `title`, `comment`, `scope`, `subkeytext`, `access_url`, `access_url_changeable`, `access_url_locked`) VALUES
(329, 'lp_show_reduced_report', NULL, 'radio', 'Tools', 'false', 'LearningPathShowReducedReportTitle', 'LearningPathShowReducedReportComment', NULL, NULL, 1, 1, 0),
(330, 'allow_session_course_copy_for_teachers', NULL, 'radio', 'Session', 'false', 'AllowSessionCourseCopyForTeachersTitle', 'AllowSessionCourseCopyForTeachersComment', NULL, NULL, 1, 1, 0),
(331, 'hide_logout_button', NULL, 'radio', 'Platform', 'false', 'HideLogoutButtonTitle', 'HideLogoutButtonComment', NULL, NULL, 1, 1, 0),
(332, 'redirect_admin_to_courses_list', NULL, 'radio', 'Platform', 'false', 'RedirectAdminToCoursesListTitle', 'RedirectAdminToCoursesListComment', NULL, NULL, 1, 1, 0),
(333, 'course_images_in_courses_list', NULL, 'radio', 'Course', 'true', 'CourseImagesInCoursesListTitle', 'CourseImagesInCoursesListComment', NULL, NULL, 1, 1, 0),
(334, 'student_publication_to_take_in_gradebook', NULL, 'radio', 'Gradebook', 'first', 'StudentPublicationSelectionForGradebookTitle', 'StudentPublicationSelectionForGradebookComment', NULL, NULL, 1, 1, 0),
(335, 'certificate_filter_by_official_code', NULL, 'radio', 'Gradebook', 'false', 'FilterCertificateByOfficialCodeTitle', 'FilterCertificateByOfficialCodeComment', NULL, NULL, 1, 1, 0),
(336, 'exercise_max_ckeditors_in_page', NULL, 'textfield', 'Tools', '0', 'MaxCKeditorsOnExerciseResultsPageTitle', 'MaxCKeditorsOnExerciseResultsPageComment', NULL, NULL, 1, 1, 0),
(337, 'document_if_file_exists_option', NULL, 'radio', 'Tools', 'rename', 'DocumentDefaultOptionIfFileExistsTitle', 'DocumentDefaultOptionIfFileExistsComment', NULL, NULL, 1, 1, 0),
(338, 'add_gradebook_certificates_cron_task_enabled', NULL, 'radio', 'Tools', 'false', 'GradebookCronTaskGenerationTitle', 'GradebookCronTaskGenerationComment', NULL, NULL, 1, 1, 0),
(339, 'openbadges_backpack', NULL, 'textfield', 'Gradebook', 'https://backpack.openbadges.org/', 'OpenBadgesBackpackUrlTitle', 'OpenBadgesBackpackUrlComment', NULL, NULL, 1, 1, 0),
(340, 'cookie_warning', NULL, 'radio', 'Tools', 'false', 'CookieWarningTitle', 'CookieWarningComment', NULL, NULL, 1, 1, 0),
(341, 'hide_course_group_if_no_tools_available', NULL, 'radio', 'Tools', 'false', 'HideCourseGroupIfNoToolAvailableTitle', 'HideCourseGroupIfNoToolAvailableComment', NULL, NULL, 1, 1, 0),
(342, 'catalog_allow_session_auto_subscription', NULL, 'radio', 'Session', 'false', 'CatalogueAllowSessionAutoSubscriptionTitle', 'CatalogueAllowSessionAutoSubscriptionTitle', NULL, NULL, 1, 1, 0),
(343, 'registration.soap.php.decode_utf8', NULL, 'radio', 'Platform', 'false', 'SoapRegistrationDecodeUtf8Title', 'SoapRegistrationDecodeUtf8Comment', NULL, NULL, 1, 1, 0),
(344, 'allow_delete_attendance', NULL, 'radio', 'Tools', 'true', 'AttendanceDeletionEnableTitle', 'AttendanceDeletionEnableComment', NULL, NULL, 1, 1, 0),
(345, 'gravatar_enabled', NULL, 'radio', 'Platform', 'false', 'GravatarPicturesTitle', 'GravatarPicturesComment', NULL, NULL, 1, 1, 0),
(346, 'gravatar_type', NULL, 'radio', 'Platform', 'mm', 'GravatarPicturesTypeTitle', 'GravatarPicturesTypeComment', NULL, NULL, 1, 1, 0),
(347, 'limit_session_admin_role', NULL, 'radio', 'Session', 'false', 'SessionAdminPermissionsLimitTitle', 'SessionAdminPermissionsLimitComment', NULL, NULL, 1, 1, 0),
(348, 'show_session_description', NULL, 'radio', 'Session', 'false', 'ShowSessionDescriptionTitle', 'ShowSessionDescriptionComment', NULL, NULL, 1, 1, 0),
(349, 'hide_certificate_export_link_students', NULL, 'radio', 'Gradebook', 'false', 'CertificateHideExportLinkStudentTitle', 'CertificateHideExportLinkStudentComment', NULL, NULL, 1, 1, 0),
(350, 'hide_certificate_export_link', NULL, 'radio', 'Gradebook', 'false', 'CertificateHideExportLinkTitle', 'CertificateHideExportLinkComment', NULL, NULL, 1, 1, 0),
(351, 'dropbox_hide_course_coach', NULL, 'radio', 'Tools', 'false', 'DropboxHideCourseCoachTitle', 'DropboxHideCourseCoachComment', NULL, NULL, 1, 1, 0),
(352, 'dropbox_hide_general_coach', NULL, 'radio', 'Tools', 'false', 'DropboxHideGeneralCoachTitle', 'DropboxHideGeneralCoachComment', NULL, NULL, 1, 1, 0),
(353, 'sso_force_redirect', NULL, 'radio', 'Security', 'false', 'SSOForceRedirectTitle', 'SSOForceRedirectComment', NULL, NULL, 1, 1, 0),
(354, 'session_course_ordering', NULL, 'radio', 'Session', 'false', 'SessionCourseOrderingTitle', 'SessionCourseOrderingComment', NULL, NULL, 1, 1, 0),
(355, 'gamification_mode', NULL, 'radio', 'Platform', '0', 'GamificationModeTitle', 'GamificationModeComment', NULL, NULL, 1, 1, 0),
(356, 'prevent_multiple_simultaneous_login', NULL, 'radio', 'Security', 'false', 'PreventMultipleSimultaneousLoginTitle', 'PreventMultipleSimultaneousLoginComment', NULL, NULL, 1, 0, 0),
(357, 'gradebook_detailed_admin_view', NULL, 'radio', 'Gradebook', 'false', 'ShowAdditionalColumnsInStudentResultsPageTitle', 'ShowAdditionalColumnsInStudentResultsPageComment', NULL, NULL, 1, 1, 0),
(358, 'course_catalog_published', NULL, 'radio', 'Course', 'false', 'CourseCatalogIsPublicTitle', 'CourseCatalogIsPublicComment', NULL, NULL, 1, 0, 0),
(359, 'user_reset_password', NULL, 'radio', 'Security', 'false', 'ResetPasswordTokenTitle', 'ResetPasswordTokenComment', NULL, NULL, 1, 0, 0),
(360, 'user_reset_password_token_limit', NULL, 'textfield', 'Security', '3600', 'ResetPasswordTokenLimitTitle', 'ResetPasswordTokenLimitComment', NULL, NULL, 1, 0, 0),
(361, 'my_courses_view_by_session', NULL, 'radio', 'Session', 'false', 'ViewMyCoursesListBySessionTitle', 'ViewMyCoursesListBySessionComment', NULL, NULL, 1, 0, 0),
(362, 'show_full_skill_name_on_skill_wheel', NULL, 'radio', 'Platform', 'false', 'ShowFullSkillNameOnSkillWheelTitle', 'ShowFullSkillNameOnSkillWheelComment', NULL, NULL, 1, 1, 0),
(363, 'messaging_allow_send_push_notification', NULL, 'radio', 'WebServices', 'false', 'MessagingAllowSendPushNotificationTitle', 'MessagingAllowSendPushNotificationComment', NULL, NULL, 1, 0, 0),
(364, 'messaging_gdc_project_number', NULL, 'textfield', 'WebServices', '', 'MessagingGDCProjectNumberTitle', 'MessagingGDCProjectNumberComment', NULL, NULL, 1, 0, 0),
(365, 'messaging_gdc_api_key', NULL, 'textfield', 'WebServices', '', 'MessagingGDCApiKeyTitle', 'MessagingGDCApiKeyComment', NULL, NULL, 1, 0, 0),
(366, 'teacher_can_select_course_template', NULL, 'radio', 'Course', 'true', 'TeacherCanSelectCourseTemplateTitle', 'TeacherCanSelectCourseTemplateComment', NULL, NULL, 1, 0, 0),
(367, 'enable_record_audio', NULL, 'radio', 'Tools', 'true', 'EnableRecordAudioTitle', 'EnableRecordAudioComment', NULL, NULL, 1, 0, 0),
(368, 'allow_show_skype_account', NULL, 'radio', 'Platform', 'true', 'AllowShowSkypeAccountTitle', 'AllowShowSkypeAccountComment', NULL, NULL, 1, 1, 0),
(369, 'allow_show_linkedin_url', NULL, 'radio', 'Platform', 'true', 'AllowShowLinkedInUrlTitle', 'AllowShowLinkedInUrlComment', NULL, NULL, 1, 1, 0),
(370, 'enable_profile_user_address_geolocalization', NULL, 'radio', 'User', 'true', 'EnableProfileUsersAddressGeolocalizationTitle', 'EnableProfileUsersAddressGeolocalizationComment', NULL, NULL, 1, 0, 0),
(371, 'show_official_code_whoisonline', NULL, 'radio', 'User', 'false', 'ShowOfficialCodeInWhoIsOnlinePage', 'ShowOfficialCodeInWhoIsOnlinePageComment', NULL, NULL, 1, 0, 0),
(372, 'icons_mode_svg', NULL, 'radio', 'Tuning', 'false', 'IconsModeSVGTitle', 'IconsModeSVGComment', '', NULL, 1, 1, 0),
(373, 'status', 'bbb', 'setting', 'Plugins', 'installed', 'bbb', NULL, NULL, NULL, 1, 1, 0),
(374, 'status', 'clockworksms', 'setting', 'Plugins', 'installed', 'clockworksms', NULL, NULL, NULL, 1, 1, 0),
(395, 'course_tool_plugin', 'clockworksms', 'region', 'Plugins', 'clockworksms', 'clockworksms', NULL, NULL, NULL, 1, 1, 0),
(396, 'bbb_tool_enable', 'bbb', 'setting', 'Plugins', 'true', 'bbb', NULL, NULL, NULL, 1, 1, 0),
(397, 'bbb_host', 'bbb', 'setting', 'Plugins', '192.168.1.77', 'bbb', NULL, NULL, NULL, 1, 1, 0),
(398, 'bbb_salt', 'bbb', 'setting', 'Plugins', '', 'bbb', NULL, NULL, NULL, 1, 1, 0),
(399, 'bbb_enable_global_conference', 'bbb', 'setting', 'Plugins', 'true', 'bbb', NULL, NULL, NULL, 1, 1, 0),
(400, 'bbb_enable_global_conference_per_user', 'bbb', 'setting', 'Plugins', 'true', 'bbb', NULL, NULL, NULL, 1, 1, 0),
(401, 'bbb_enable_conference_in_course_groups', 'bbb', 'setting', 'Plugins', 'true', 'bbb', NULL, NULL, NULL, 1, 1, 0),
(402, 'bbb_enable_global_conference_link', 'bbb', 'setting', 'Plugins', 'true', 'bbb', NULL, NULL, NULL, 1, 1, 0),
(403, 'bbb_submit_button', 'bbb', 'setting', 'Plugins', '', 'bbb', NULL, NULL, NULL, 1, 1, 0),
(407, 'clockworksms_tool_enable', 'clockworksms', 'setting', 'Plugins', 'true', 'clockworksms', NULL, NULL, NULL, 1, 1, 0),
(408, 'clockworksms_api_key', 'clockworksms', 'setting', 'Plugins', 'c080bc47d4bb828cd446bd50b5bfb962dad33bca', 'clockworksms', NULL, NULL, NULL, 1, 1, 0),
(409, 'clockworksms_MessageWelcomeXLoginXPasswordX', 'clockworksms', 'setting', 'Plugins', 'true', 'clockworksms', NULL, NULL, NULL, 1, 1, 0),
(410, 'clockworksms_submit_button', 'clockworksms', 'setting', 'Plugins', '', 'clockworksms', NULL, NULL, NULL, 1, 1, 0),
(411, 'menu_administrator', 'bbb', 'region', 'Plugins', 'bbb', 'bbb', NULL, NULL, NULL, 1, 1, 0),
(412, 'course_tool_plugin', 'bbb', 'region', 'Plugins', 'bbb', 'bbb', NULL, NULL, NULL, 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings_options`
--

CREATE TABLE `settings_options` (
  `id` int(11) NOT NULL,
  `variable` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `settings_options`
--

INSERT INTO `settings_options` (`id`, `variable`, `value`, `display_text`) VALUES
(1, 'show_administrator_data', 'true', 'Yes'),
(2, 'show_administrator_data', 'false', 'No'),
(3, 'show_tutor_data', 'true', 'Yes'),
(4, 'show_tutor_data', 'false', 'No'),
(5, 'show_teacher_data', 'true', 'Yes'),
(6, 'show_teacher_data', 'false', 'No'),
(7, 'homepage_view', 'activity', 'HomepageViewActivity'),
(8, 'homepage_view', '2column', 'HomepageView2column'),
(9, 'homepage_view', '3column', 'HomepageView3column'),
(10, 'homepage_view', 'vertical_activity', 'HomepageViewVerticalActivity'),
(11, 'homepage_view', 'activity_big', 'HomepageViewActivityBig'),
(12, 'show_toolshortcuts', 'true', 'Yes'),
(13, 'show_toolshortcuts', 'false', 'No'),
(14, 'allow_group_categories', 'true', 'Yes'),
(15, 'allow_group_categories', 'false', 'No'),
(16, 'server_type', 'production', 'ProductionServer'),
(17, 'server_type', 'test', 'TestServer'),
(18, 'allow_name_change', 'true', 'Yes'),
(19, 'allow_name_change', 'false', 'No'),
(20, 'allow_officialcode_change', 'true', 'Yes'),
(21, 'allow_officialcode_change', 'false', 'No'),
(22, 'allow_registration', 'true', 'Yes'),
(23, 'allow_registration', 'false', 'No'),
(24, 'allow_registration', 'approval', 'AfterApproval'),
(25, 'allow_registration_as_teacher', 'true', 'Yes'),
(26, 'allow_registration_as_teacher', 'false', 'No'),
(27, 'allow_lostpassword', 'true', 'Yes'),
(28, 'allow_lostpassword', 'false', 'No'),
(29, 'allow_user_headings', 'true', 'Yes'),
(30, 'allow_user_headings', 'false', 'No'),
(31, 'allow_personal_agenda', 'true', 'Yes'),
(32, 'allow_personal_agenda', 'false', 'No'),
(33, 'display_coursecode_in_courselist', 'true', 'Yes'),
(34, 'display_coursecode_in_courselist', 'false', 'No'),
(35, 'display_teacher_in_courselist', 'true', 'Yes'),
(36, 'display_teacher_in_courselist', 'false', 'No'),
(37, 'permanently_remove_deleted_files', 'true', 'YesWillDeletePermanently'),
(38, 'permanently_remove_deleted_files', 'false', 'NoWillDeletePermanently'),
(39, 'dropbox_allow_overwrite', 'true', 'Yes'),
(40, 'dropbox_allow_overwrite', 'false', 'No'),
(41, 'dropbox_allow_just_upload', 'true', 'Yes'),
(42, 'dropbox_allow_just_upload', 'false', 'No'),
(43, 'dropbox_allow_student_to_student', 'true', 'Yes'),
(44, 'dropbox_allow_student_to_student', 'false', 'No'),
(45, 'dropbox_allow_group', 'true', 'Yes'),
(46, 'dropbox_allow_group', 'false', 'No'),
(47, 'dropbox_allow_mailing', 'true', 'Yes'),
(48, 'dropbox_allow_mailing', 'false', 'No'),
(49, 'extended_profile', 'true', 'Yes'),
(50, 'extended_profile', 'false', 'No'),
(51, 'student_view_enabled', 'true', 'Yes'),
(52, 'student_view_enabled', 'false', 'No'),
(53, 'show_navigation_menu', 'false', 'No'),
(54, 'show_navigation_menu', 'icons', 'IconsOnly'),
(55, 'show_navigation_menu', 'text', 'TextOnly'),
(56, 'show_navigation_menu', 'iconstext', 'IconsText'),
(57, 'enable_tool_introduction', 'true', 'Yes'),
(58, 'enable_tool_introduction', 'false', 'No'),
(59, 'page_after_login', 'index.php', 'CampusHomepage'),
(60, 'page_after_login', 'user_portal.php', 'MyCourses'),
(61, 'page_after_login', 'main/auth/courses.php', 'CourseCatalog'),
(62, 'breadcrumbs_course_homepage', 'get_lang', 'CourseHomepage'),
(63, 'breadcrumbs_course_homepage', 'course_code', 'CourseCode'),
(64, 'breadcrumbs_course_homepage', 'course_title', 'CourseTitle'),
(65, 'example_material_course_creation', 'true', 'Yes'),
(66, 'example_material_course_creation', 'false', 'No'),
(67, 'use_session_mode', 'true', 'Yes'),
(68, 'use_session_mode', 'false', 'No'),
(69, 'allow_email_editor', 'true', 'Yes'),
(70, 'allow_email_editor', 'false', 'No'),
(71, 'show_email_addresses', 'true', 'Yes'),
(72, 'show_email_addresses', 'false', 'No'),
(73, 'upload_extensions_list_type', 'blacklist', 'Blacklist'),
(74, 'upload_extensions_list_type', 'whitelist', 'Whitelist'),
(75, 'upload_extensions_skip', 'true', 'Remove'),
(76, 'upload_extensions_skip', 'false', 'Rename'),
(77, 'show_number_of_courses', 'true', 'Yes'),
(78, 'show_number_of_courses', 'false', 'No'),
(79, 'show_empty_course_categories', 'true', 'Yes'),
(80, 'show_empty_course_categories', 'false', 'No'),
(81, 'show_back_link_on_top_of_tree', 'true', 'Yes'),
(82, 'show_back_link_on_top_of_tree', 'false', 'No'),
(83, 'show_different_course_language', 'true', 'Yes'),
(84, 'show_different_course_language', 'false', 'No'),
(85, 'split_users_upload_directory', 'true', 'Yes'),
(86, 'split_users_upload_directory', 'false', 'No'),
(87, 'hide_dltt_markup', 'false', 'No'),
(88, 'hide_dltt_markup', 'true', 'Yes'),
(89, 'display_categories_on_homepage', 'true', 'Yes'),
(90, 'display_categories_on_homepage', 'false', 'No'),
(91, 'default_forum_view', 'flat', 'Flat'),
(92, 'default_forum_view', 'threaded', 'Threaded'),
(93, 'default_forum_view', 'nested', 'Nested'),
(94, 'survey_email_sender_noreply', 'coach', 'CourseCoachEmailSender'),
(95, 'survey_email_sender_noreply', 'noreply', 'NoReplyEmailSender'),
(96, 'openid_authentication', 'true', 'Yes'),
(97, 'openid_authentication', 'false', 'No'),
(98, 'gradebook_enable', 'true', 'Yes'),
(99, 'gradebook_enable', 'false', 'No'),
(100, 'user_selected_theme', 'true', 'Yes'),
(101, 'user_selected_theme', 'false', 'No'),
(102, 'allow_course_theme', 'true', 'Yes'),
(103, 'allow_course_theme', 'false', 'No'),
(104, 'show_closed_courses', 'true', 'Yes'),
(105, 'show_closed_courses', 'false', 'No'),
(106, 'ldap_version', '2', 'LDAPVersion2'),
(107, 'ldap_version', '3', 'LDAPVersion3'),
(108, 'add_users_by_coach', 'true', 'Yes'),
(109, 'add_users_by_coach', 'false', 'No'),
(110, 'extend_rights_for_coach', 'true', 'Yes'),
(111, 'extend_rights_for_coach', 'false', 'No'),
(112, 'extend_rights_for_coach_on_survey', 'true', 'Yes'),
(113, 'extend_rights_for_coach_on_survey', 'false', 'No'),
(114, 'show_session_coach', 'true', 'Yes'),
(115, 'show_session_coach', 'false', 'No'),
(116, 'allow_users_to_create_courses', 'true', 'Yes'),
(117, 'allow_users_to_create_courses', 'false', 'No'),
(118, 'breadcrumbs_course_homepage', 'session_name_and_course_title', 'SessionNameAndCourseTitle'),
(119, 'allow_message_tool', 'true', 'Yes'),
(120, 'allow_message_tool', 'false', 'No'),
(121, 'allow_social_tool', 'true', 'Yes'),
(122, 'allow_social_tool', 'false', 'No'),
(123, 'allow_students_to_browse_courses', 'true', 'Yes'),
(124, 'allow_students_to_browse_courses', 'false', 'No'),
(125, 'show_email_of_teacher_or_tutor ', 'true', 'Yes'),
(126, 'show_email_of_teacher_or_tutor ', 'false', 'No'),
(127, 'show_session_data ', 'true', 'Yes'),
(128, 'show_session_data ', 'false', 'No'),
(129, 'allow_use_sub_language', 'true', 'Yes'),
(130, 'allow_use_sub_language', 'false', 'No'),
(131, 'show_glossary_in_documents', 'none', 'ShowGlossaryInDocumentsIsNone'),
(132, 'show_glossary_in_documents', 'ismanual', 'ShowGlossaryInDocumentsIsManual'),
(133, 'show_glossary_in_documents', 'isautomatic', 'ShowGlossaryInDocumentsIsAutomatic'),
(134, 'allow_terms_conditions', 'true', 'Yes'),
(135, 'allow_terms_conditions', 'false', 'No'),
(136, 'search_enabled', 'true', 'Yes'),
(137, 'search_enabled', 'false', 'No'),
(138, 'search_show_unlinked_results', 'true', 'SearchShowUnlinkedResults'),
(139, 'search_show_unlinked_results', 'false', 'SearchHideUnlinkedResults'),
(140, 'show_courses_descriptions_in_catalog', 'true', 'Yes'),
(141, 'show_courses_descriptions_in_catalog', 'false', 'No'),
(142, 'allow_coach_to_edit_course_session', 'true', 'Yes'),
(143, 'allow_coach_to_edit_course_session', 'false', 'No'),
(144, 'show_glossary_in_extra_tools', 'none', 'None'),
(145, 'show_glossary_in_extra_tools', 'exercise', 'Exercise'),
(146, 'show_glossary_in_extra_tools', 'lp', 'Learning path'),
(147, 'show_glossary_in_extra_tools', 'exercise_and_lp', 'ExerciseAndLearningPath'),
(148, 'send_email_to_admin_when_create_course', 'true', 'Yes'),
(149, 'send_email_to_admin_when_create_course', 'false', 'No'),
(150, 'go_to_course_after_login', 'true', 'Yes'),
(151, 'go_to_course_after_login', 'false', 'No'),
(152, 'math_asciimathML', 'true', 'Yes'),
(153, 'math_asciimathML', 'false', 'No'),
(154, 'enabled_asciisvg', 'true', 'Yes'),
(155, 'enabled_asciisvg', 'false', 'No'),
(156, 'include_asciimathml_script', 'true', 'Yes'),
(157, 'include_asciimathml_script', 'false', 'No'),
(158, 'youtube_for_students', 'true', 'Yes'),
(159, 'youtube_for_students', 'false', 'No'),
(160, 'block_copy_paste_for_students', 'true', 'Yes'),
(161, 'block_copy_paste_for_students', 'false', 'No'),
(162, 'more_buttons_maximized_mode', 'true', 'Yes'),
(163, 'more_buttons_maximized_mode', 'false', 'No'),
(164, 'students_download_folders', 'true', 'Yes'),
(165, 'students_download_folders', 'false', 'No'),
(166, 'users_copy_files', 'true', 'Yes'),
(167, 'users_copy_files', 'false', 'No'),
(168, 'allow_students_to_create_groups_in_social', 'true', 'Yes'),
(169, 'allow_students_to_create_groups_in_social', 'false', 'No'),
(170, 'allow_send_message_to_all_platform_users', 'true', 'Yes'),
(171, 'allow_send_message_to_all_platform_users', 'false', 'No'),
(172, 'use_users_timezone', 'true', 'Yes'),
(173, 'use_users_timezone', 'false', 'No'),
(174, 'allow_user_course_subscription_by_course_admin', 'true', 'Yes'),
(175, 'allow_user_course_subscription_by_course_admin', 'false', 'No'),
(176, 'show_link_bug_notification', 'true', 'Yes'),
(177, 'show_link_bug_notification', 'false', 'No'),
(178, 'show_link_ticket_notification', 'true', 'Yes'),
(179, 'show_link_ticket_notification', 'false', 'No'),
(180, 'course_validation', 'true', 'Yes'),
(181, 'course_validation', 'false', 'No'),
(182, 'sso_authentication', 'true', 'Yes'),
(183, 'sso_authentication', 'false', 'No'),
(184, 'sso_authentication_protocol', 'http://', 'http://'),
(185, 'sso_authentication_protocol', 'https://', 'https://'),
(186, 'enabled_wiris', 'true', 'Yes'),
(187, 'enabled_wiris', 'false', 'No'),
(188, 'allow_spellcheck', 'true', 'Yes'),
(189, 'allow_spellcheck', 'false', 'No'),
(190, 'force_wiki_paste_as_plain_text', 'true', 'Yes'),
(191, 'force_wiki_paste_as_plain_text', 'false', 'No'),
(192, 'enabled_googlemaps', 'true', 'Yes'),
(193, 'enabled_googlemaps', 'false', 'No'),
(194, 'enabled_imgmap', 'true', 'Yes'),
(195, 'enabled_imgmap', 'false', 'No'),
(196, 'enabled_support_svg', 'true', 'Yes'),
(197, 'enabled_support_svg', 'false', 'No'),
(198, 'pdf_export_watermark_enable', 'true', 'Yes'),
(199, 'pdf_export_watermark_enable', 'false', 'No'),
(200, 'pdf_export_watermark_by_course', 'true', 'Yes'),
(201, 'pdf_export_watermark_by_course', 'false', 'No'),
(202, 'enabled_insertHtml', 'true', 'Yes'),
(203, 'enabled_insertHtml', 'false', 'No'),
(204, 'students_export2pdf', 'true', 'Yes'),
(205, 'students_export2pdf', 'false', 'No'),
(206, 'show_users_folders', 'true', 'Yes'),
(207, 'show_users_folders', 'false', 'No'),
(208, 'show_default_folders', 'true', 'Yes'),
(209, 'show_default_folders', 'false', 'No'),
(210, 'show_chat_folder', 'true', 'Yes'),
(211, 'show_chat_folder', 'false', 'No'),
(212, 'enabled_text2audio', 'true', 'Yes'),
(213, 'enabled_text2audio', 'false', 'No'),
(214, 'enabled_support_pixlr', 'true', 'Yes'),
(215, 'enabled_support_pixlr', 'false', 'No'),
(216, 'show_groups_to_users', 'true', 'Yes'),
(217, 'show_groups_to_users', 'false', 'No'),
(218, 'accessibility_font_resize', 'true', 'Yes'),
(219, 'accessibility_font_resize', 'false', 'No'),
(220, 'hide_courses_in_sessions', 'true', 'Yes'),
(221, 'hide_courses_in_sessions', 'false', 'No'),
(222, 'enable_quiz_scenario', 'true', 'Yes'),
(223, 'enable_quiz_scenario', 'false', 'No'),
(224, 'show_documents_preview', 'true', 'Yes'),
(225, 'show_documents_preview', 'false', 'No'),
(226, 'htmlpurifier_wiki', 'true', 'Yes'),
(227, 'htmlpurifier_wiki', 'false', 'No'),
(228, 'cas_activate', 'true', 'Yes'),
(229, 'cas_activate', 'false', 'No'),
(230, 'cas_protocol', 'CAS1', 'CAS1Text'),
(231, 'cas_protocol', 'CAS2', 'CAS2Text'),
(232, 'cas_protocol', 'SAML', 'SAMLText'),
(233, 'cas_add_user_activate', 'false', 'No'),
(234, 'cas_add_user_activate', 'platform', 'casAddUserActivatePlatform'),
(235, 'cas_add_user_activate', 'extldap', 'casAddUserActivateLDAP'),
(236, 'update_user_info_cas_with_ldap', 'true', 'Yes'),
(237, 'update_user_info_cas_with_ldap', 'false', 'No'),
(238, 'scorm_cumulative_session_time', 'true', 'Yes'),
(239, 'scorm_cumulative_session_time', 'false', 'No'),
(240, 'allow_hr_skills_management', 'true', 'Yes'),
(241, 'allow_hr_skills_management', 'false', 'No'),
(242, 'enable_help_link', 'true', 'Yes'),
(243, 'enable_help_link', 'false', 'No'),
(244, 'allow_users_to_change_email_with_no_password', 'true', 'Yes'),
(245, 'allow_users_to_change_email_with_no_password', 'false', 'No'),
(246, 'show_admin_toolbar', 'do_not_show', 'DoNotShow'),
(247, 'show_admin_toolbar', 'show_to_admin', 'ShowToAdminsOnly'),
(248, 'show_admin_toolbar', 'show_to_admin_and_teachers', 'ShowToAdminsAndTeachers'),
(249, 'show_admin_toolbar', 'show_to_all', 'ShowToAllUsers'),
(250, 'use_custom_pages', 'true', 'Yes'),
(251, 'use_custom_pages', 'false', 'No'),
(252, 'languagePriority1', 'platform_lang', 'PlatformLanguage'),
(253, 'languagePriority1', 'user_profil_lang', 'UserLanguage'),
(254, 'languagePriority1', 'user_selected_lang', 'UserSelectedLanguage'),
(255, 'languagePriority1', 'course_lang', 'CourseLanguage'),
(256, 'languagePriority2', 'platform_lang', 'PlatformLanguage'),
(257, 'languagePriority2', 'user_profil_lang', 'UserLanguage'),
(258, 'languagePriority2', 'user_selected_lang', 'UserSelectedLanguage'),
(259, 'languagePriority2', 'course_lang', 'CourseLanguage'),
(260, 'languagePriority3', 'platform_lang', 'PlatformLanguage'),
(261, 'languagePriority3', 'user_profil_lang', 'UserLanguage'),
(262, 'languagePriority3', 'user_selected_lang', 'UserSelectedLanguage'),
(263, 'languagePriority3', 'course_lang', 'CourseLanguage'),
(264, 'languagePriority4', 'platform_lang', 'PlatformLanguage'),
(265, 'languagePriority4', 'user_profil_lang', 'UserLanguage'),
(266, 'languagePriority4', 'user_selected_lang', 'UserSelectedLanguage'),
(267, 'languagePriority4', 'course_lang', 'CourseLanguage'),
(268, 'allow_global_chat', 'true', 'Yes'),
(269, 'allow_global_chat', 'false', 'No'),
(270, 'login_is_email', 'true', 'Yes'),
(271, 'login_is_email', 'false', 'No'),
(272, 'courses_default_creation_visibility', '3', 'OpenToTheWorld'),
(273, 'courses_default_creation_visibility', '2', 'OpenToThePlatform'),
(274, 'courses_default_creation_visibility', '1', 'Private'),
(275, 'courses_default_creation_visibility', '0', 'CourseVisibilityClosed'),
(276, 'teachers_can_change_score_settings', 'true', 'Yes'),
(277, 'teachers_can_change_score_settings', 'false', 'No'),
(278, 'teachers_can_change_grade_model_settings', 'true', 'Yes'),
(279, 'teachers_can_change_grade_model_settings', 'false', 'No'),
(280, 'gradebook_locking_enabled', 'true', 'Yes'),
(281, 'gradebook_locking_enabled', 'false', 'No'),
(282, 'gradebook_enable_grade_model', 'true', 'Yes'),
(283, 'gradebook_enable_grade_model', 'false', 'No'),
(284, 'allow_session_admins_to_manage_all_sessions', 'true', 'Yes'),
(285, 'allow_session_admins_to_manage_all_sessions', 'false', 'No'),
(286, 'allow_skills_tool', 'true', 'Yes'),
(287, 'allow_skills_tool', 'false', 'No'),
(288, 'allow_public_certificates', 'true', 'Yes'),
(289, 'allow_public_certificates', 'false', 'No'),
(290, 'platform_unsubscribe_allowed', 'true', 'Yes'),
(291, 'platform_unsubscribe_allowed', 'false', 'No'),
(292, 'activate_email_template', 'true', 'Yes'),
(293, 'activate_email_template', 'false', 'No'),
(294, 'enable_iframe_inclusion', 'true', 'Yes'),
(295, 'enable_iframe_inclusion', 'false', 'No'),
(296, 'show_hot_courses', 'true', 'Yes'),
(297, 'show_hot_courses', 'false', 'No'),
(298, 'enable_webcam_clip', 'true', 'Yes'),
(299, 'enable_webcam_clip', 'false', 'No'),
(300, 'prevent_session_admins_to_manage_all_users', 'true', 'Yes'),
(301, 'prevent_session_admins_to_manage_all_users', 'false', 'No'),
(302, 'documents_default_visibility_defined_in_course', 'true', 'Yes'),
(303, 'documents_default_visibility_defined_in_course', 'false', 'No'),
(304, 'enabled_mathjax', 'true', 'Yes'),
(305, 'enabled_mathjax', 'false', 'No'),
(306, 'allow_teachers_to_create_sessions', 'true', 'Yes'),
(307, 'allow_teachers_to_create_sessions', 'false', 'No'),
(308, 'cron_remind_course_finished_activate', 'false', 'No'),
(309, 'cron_remind_course_finished_activate', 'true', 'Yes'),
(310, 'cron_remind_course_expiration_activate', 'false', 'No'),
(311, 'cron_remind_course_expiration_activate', 'true', 'Yes'),
(312, 'allow_coach_feedback_exercises', 'true', 'Yes'),
(313, 'allow_coach_feedback_exercises', 'false', 'No'),
(314, 'allow_my_files', 'true', 'Yes'),
(315, 'allow_my_files', 'false', 'No'),
(316, 'ticket_allow_student_add', 'true', 'Yes'),
(317, 'ticket_allow_student_add', 'false', 'No'),
(318, 'ticket_allow_category_edition', 'true', 'Yes'),
(319, 'ticket_allow_category_edition', 'false', 'No'),
(320, 'ticket_send_warning_to_all_admins', 'true', 'Yes'),
(321, 'ticket_send_warning_to_all_admins', 'false', 'No'),
(322, 'ticket_warn_admin_no_user_in_category', 'true', 'Yes'),
(323, 'ticket_warn_admin_no_user_in_category', 'false', 'No'),
(324, 'load_term_conditions_section', 'login', 'Login'),
(325, 'load_term_conditions_section', 'course', 'Course'),
(326, 'show_terms_if_profile_completed', 'true', 'Yes'),
(327, 'show_terms_if_profile_completed', 'false', 'No'),
(328, 'hide_home_top_when_connected', 'true', 'Yes'),
(329, 'hide_home_top_when_connected', 'false', 'No'),
(330, 'hide_global_announcements_when_not_connected', 'true', 'Yes'),
(331, 'hide_global_announcements_when_not_connected', 'false', 'No'),
(332, 'allow_strength_pass_checker', 'true', 'Yes'),
(333, 'allow_strength_pass_checker', 'false', 'No'),
(334, 'allow_captcha', 'true', 'Yes'),
(335, 'allow_captcha', 'false', 'No'),
(336, 'drh_can_access_all_session_content', 'true', 'Yes'),
(337, 'drh_can_access_all_session_content', 'false', 'No'),
(338, 'display_groups_forum_in_general_tool', 'true', 'Yes'),
(339, 'display_groups_forum_in_general_tool', 'false', 'No'),
(340, 'allow_tutors_to_assign_students_to_session', 'true', 'Yes'),
(341, 'allow_tutors_to_assign_students_to_session', 'false', 'No'),
(342, 'allow_lp_return_link', 'true', 'Yes'),
(343, 'allow_lp_return_link', 'false', 'No'),
(344, 'hide_scorm_export_link', 'true', 'Yes'),
(345, 'hide_scorm_export_link', 'false', 'No'),
(346, 'hide_scorm_copy_link', 'true', 'Yes'),
(347, 'hide_scorm_copy_link', 'false', 'No'),
(348, 'hide_scorm_pdf_link', 'true', 'Yes'),
(349, 'hide_scorm_pdf_link', 'false', 'No'),
(350, 'pdf_logo_header', 'true', 'Yes'),
(351, 'pdf_logo_header', 'false', 'No'),
(352, 'order_user_list_by_official_code', 'true', 'Yes'),
(353, 'order_user_list_by_official_code', 'false', 'No'),
(354, 'email_alert_manager_on_new_quiz', 'true', 'Yes'),
(355, 'email_alert_manager_on_new_quiz', 'false', 'No'),
(356, 'show_official_code_exercise_result_list', 'true', 'Yes'),
(357, 'show_official_code_exercise_result_list', 'false', 'No'),
(358, 'course_catalog_hide_private', 'true', 'Yes'),
(359, 'course_catalog_hide_private', 'false', 'No'),
(360, 'catalog_show_courses_sessions', '0', 'CatalogueShowOnlyCourses'),
(361, 'catalog_show_courses_sessions', '1', 'CatalogueShowOnlySessions'),
(362, 'catalog_show_courses_sessions', '2', 'CatalogueShowCoursesAndSessions'),
(363, 'auto_detect_language_custom_pages', 'true', 'Yes'),
(364, 'auto_detect_language_custom_pages', 'false', 'No'),
(365, 'lp_show_reduced_report', 'true', 'Yes'),
(366, 'lp_show_reduced_report', 'false', 'No'),
(367, 'allow_session_course_copy_for_teachers', 'true', 'Yes'),
(368, 'allow_session_course_copy_for_teachers', 'false', 'No'),
(369, 'hide_logout_button', 'true', 'Yes'),
(370, 'hide_logout_button', 'false', 'No'),
(371, 'redirect_admin_to_courses_list', 'true', 'Yes'),
(372, 'redirect_admin_to_courses_list', 'false', 'No'),
(373, 'course_images_in_courses_list', 'true', 'Yes'),
(374, 'course_images_in_courses_list', 'false', 'No'),
(375, 'student_publication_to_take_in_gradebook', 'first', 'First'),
(376, 'student_publication_to_take_in_gradebook', 'last', 'Last'),
(377, 'certificate_filter_by_official_code', 'true', 'Yes'),
(378, 'certificate_filter_by_official_code', 'false', 'No'),
(379, 'document_if_file_exists_option', 'rename', 'Rename'),
(380, 'document_if_file_exists_option', 'overwrite', 'Overwrite'),
(381, 'add_gradebook_certificates_cron_task_enabled', 'true', 'Yes'),
(382, 'add_gradebook_certificates_cron_task_enabled', 'false', 'No'),
(383, 'cookie_warning', 'true', 'Yes'),
(384, 'cookie_warning', 'false', 'No'),
(385, 'hide_course_group_if_no_tools_available', 'true', 'Yes'),
(386, 'hide_course_group_if_no_tools_available', 'false', 'No'),
(387, 'catalog_allow_session_auto_subscription', 'true', 'Yes'),
(388, 'catalog_allow_session_auto_subscription', 'false', 'No'),
(389, 'registration.soap.php.decode_utf8', 'true', 'Yes'),
(390, 'registration.soap.php.decode_utf8', 'false', 'No'),
(391, 'allow_delete_attendance', 'true', 'Yes'),
(392, 'allow_delete_attendance', 'false', 'No'),
(393, 'gravatar_enabled', 'true', 'Yes'),
(394, 'gravatar_enabled', 'false', 'No'),
(395, 'gravatar_type', 'mm', 'mistery-man'),
(396, 'gravatar_type', 'identicon', 'identicon'),
(397, 'gravatar_type', 'monsterid', 'monsterid'),
(398, 'gravatar_type', 'wavatar', 'wavatar'),
(399, 'limit_session_admin_role', 'true', 'Yes'),
(400, 'limit_session_admin_role', 'false', 'No'),
(401, 'show_session_description', 'true', 'Yes'),
(402, 'show_session_description', 'false', 'No'),
(403, 'hide_certificate_export_link_students', 'true', 'Yes'),
(404, 'hide_certificate_export_link_students', 'false', 'No'),
(405, 'hide_certificate_export_link', 'true', 'Yes'),
(406, 'hide_certificate_export_link', 'false', 'No'),
(407, 'dropbox_hide_course_coach', 'true', 'Yes'),
(408, 'dropbox_hide_course_coach', 'false', 'No'),
(409, 'dropbox_hide_general_coach', 'true', 'Yes'),
(410, 'dropbox_hide_general_coach', 'false', 'No'),
(411, 'sso_force_redirect', 'true', 'Yes'),
(412, 'sso_force_redirect', 'false', 'No'),
(413, 'session_course_ordering', 'true', 'Yes'),
(414, 'session_course_ordering', 'false', 'No'),
(415, 'gamification_mode', '1', 'Yes'),
(416, 'gamification_mode', '0', 'No'),
(417, 'prevent_multiple_simultaneous_login', 'true', 'Yes'),
(418, 'prevent_multiple_simultaneous_login', 'false', 'No'),
(419, 'gradebook_detailed_admin_view', 'true', 'Yes'),
(420, 'gradebook_detailed_admin_view', 'false', 'No'),
(421, 'course_catalog_published', 'true', 'Yes'),
(422, 'course_catalog_published', 'false', 'No'),
(423, 'user_reset_password', 'true', 'Yes'),
(424, 'user_reset_password', 'false', 'No'),
(425, 'my_courses_view_by_session', 'true', 'Yes'),
(426, 'my_courses_view_by_session', 'false', 'No'),
(427, 'show_full_skill_name_on_skill_wheel', 'true', 'Yes'),
(428, 'show_full_skill_name_on_skill_wheel', 'false', 'No'),
(429, 'messaging_allow_send_push_notification', 'true', 'Yes'),
(430, 'messaging_allow_send_push_notification', 'false', 'No'),
(431, 'teacher_can_select_course_template', 'true', 'Yes'),
(432, 'teacher_can_select_course_template', 'false', 'No'),
(433, 'enable_record_audio', 'true', 'Yes'),
(434, 'enable_record_audio', 'false', 'No'),
(435, 'allow_show_skype_account', 'true', 'Yes'),
(436, 'allow_show_skype_account', 'false', 'No'),
(437, 'allow_show_linkedin_url', 'true', 'Yes'),
(438, 'allow_show_linkedin_url', 'false', 'No'),
(439, 'enable_profile_user_address_geolocalization', 'true', 'Yes'),
(440, 'enable_profile_user_address_geolocalization', 'false', 'No'),
(441, 'show_official_code_whoisonline', 'true', 'Yes'),
(442, 'show_official_code_whoisonline', 'false', 'No'),
(443, 'icons_mode_svg', 'true', 'Yes'),
(444, 'icons_mode_svg', 'false', 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shared_survey`
--

CREATE TABLE `shared_survey` (
  `survey_id` int(11) NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci,
  `subtitle` longtext COLLATE utf8_unicode_ci,
  `author` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` longtext COLLATE utf8_unicode_ci,
  `surveythanks` longtext COLLATE utf8_unicode_ci,
  `creation_date` datetime NOT NULL,
  `course_code` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shared_survey_question`
--

CREATE TABLE `shared_survey_question` (
  `question_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `survey_question` longtext COLLATE utf8_unicode_ci NOT NULL,
  `survey_question_comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `display` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `max_value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shared_survey_question_option`
--

CREATE TABLE `shared_survey_question_option` (
  `question_option_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `option_text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skill`
--

CREATE TABLE `skill` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `access_url_id` int(11) NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `criteria` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `skill`
--

INSERT INTO `skill` (`id`, `profile_id`, `name`, `short_code`, `description`, `access_url_id`, `icon`, `criteria`, `status`, `updated_at`) VALUES
(1, NULL, 'Root', 'root', '', 1, '', NULL, 1, '2016-11-11 09:23:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skill_level`
--

CREATE TABLE `skill_level` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `short_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skill_level_profile`
--

CREATE TABLE `skill_level_profile` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skill_profile`
--

CREATE TABLE `skill_profile` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skill_rel_gradebook`
--

CREATE TABLE `skill_rel_gradebook` (
  `id` int(11) NOT NULL,
  `gradebook_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skill_rel_profile`
--

CREATE TABLE `skill_rel_profile` (
  `id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skill_rel_skill`
--

CREATE TABLE `skill_rel_skill` (
  `id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `relation_type` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `skill_rel_skill`
--

INSERT INTO `skill_rel_skill` (`id`, `skill_id`, `parent_id`, `relation_type`, `level`) VALUES
(1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skill_rel_user`
--

CREATE TABLE `skill_rel_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `acquired_level` int(11) DEFAULT NULL,
  `acquired_skill_at` datetime NOT NULL,
  `assigned_by` int(11) NOT NULL,
  `argumentation` longtext COLLATE utf8_unicode_ci NOT NULL,
  `argumentation_author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skill_rel_user_comment`
--

CREATE TABLE `skill_rel_user_comment` (
  `id` int(11) NOT NULL,
  `skill_rel_user_id` int(11) DEFAULT NULL,
  `feedback_giver_id` int(11) DEFAULT NULL,
  `feedback_text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `feedback_value` int(11) DEFAULT '1',
  `feedback_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `specific_field`
--

CREATE TABLE `specific_field` (
  `id` int(11) NOT NULL,
  `code` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `specific_field_values`
--

CREATE TABLE `specific_field_values` (
  `id` int(11) NOT NULL,
  `course_code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `tool_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ref_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `value` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `system_template`
--

CREATE TABLE `system_template` (
  `id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `system_template`
--

INSERT INTO `system_template` (`id`, `title`, `comment`, `image`, `content`) VALUES
(1, 'TemplateTitleCourseTitle', 'TemplateTitleCourseTitleDescription', 'coursetitle.gif', '\n<!DOCTYPE html>\n<html>\n<head>\n    {CSS}\n    <style type="text/css">\n        .gris_title {\n            color: silver;\n        }\n\n        h1 {\n            text-align: right;\n        }\n    </style>\n</head>\n<body>\n<table style="background: transparent url({IMG_DIR}faded_blue_horizontal.png) repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; text-align: left; width: 720px; height: 400px;"\n       border="0" cellpadding="15" cellspacing="6">\n    <tbody>\n    <tr>\n        <td style="vertical-align: middle; width: 50%;" colspan="1" rowspan="1">\n            <h1>TITULUS 1<br>\n                <span class="gris_title">TITULUS 2</span><br>\n            </h1>\n        </td>\n        <td style="width: 50%;">\n            <img style="width: 100px; height: 100px;" alt="Chamilo logo" src="{COURSE_DIR}images/logo_chamilo.png">\n        </td>\n    </tr>\n    </tbody>\n</table>\n<p>\n    <br><br>\n</p>\n</body>\n</html>\n'),
(2, 'TemplateTitleTeacher', 'TemplateTitleTeacherDescription', 'yourinstructor.gif', '\n<!DOCTYPE html>\n<html>\n<head>\n    {CSS}\n    <style type="text/css">\n        .text {\n            font-weight: normal;\n        }\n    </style>\n</head>\n<body>\n<table style="background: transparent url({IMG_DIR}faded_blue_horizontal.png ) repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; text-align: left; width: 720px; height: 400px;"\n       border="0" cellpadding="15" cellspacing="6">\n    <tbody>\n    <tr>\n        <td></td>\n        <td style="height: 33%;"></td>\n        <td></td>\n    </tr>\n    <tr>\n        <td style="width: 25%;"></td>\n        <td style="background: transparent url({IMG_DIR}faded_grey.png ) repeat scroll center top; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; vertical-align: top; width: 33%; text-align: right; font-weight: bold;"\n            colspan="1" rowspan="1">\n    <span class="text">\n    <br>\n    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Duis pellentesque.</span>\n        </td>\n        <td style="width: 25%; font-weight: bold;">\n            <img style="width: 180px; height: 241px;" alt="trainer" src="{COURSE_DIR}images/trainer/trainer_case.png ">\n        </td>\n    </tr>\n    </tbody>\n</table>\n<p>\n    <br><br>\n</p>\n</body>\n</html>\n'),
(3, 'TemplateTitleLeftList', 'TemplateTitleListLeftListDescription', 'leftlist.gif', '\n<!DOCTYPE html>\n<html>\n<head>\n    {CSS}\n</head>\n<body>\n<table style="background: transparent url({IMG_DIR}faded_blue_horizontal.png ) repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; text-align: left; width: 720px; height: 400px;"\n       border="0" cellpadding="15" cellspacing="6">\n    <tbody>\n    <tr>\n        <td style="width: 66%;"></td>\n        <td style="vertical-align: bottom; width: 33%;" colspan="1" rowspan="4">&nbsp;<img\n                style="width: 180px; height: 248px;" alt="trainer"\n                src="{COURSE_DIR}images/trainer/trainer_reads.png "><br>\n        </td>\n    </tr>\n    <tr align="right">\n        <td style="background: transparent url({IMG_DIR}faded_grey.png ) repeat scroll center top; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; vertical-align: top; width: 66%;">\n            Lorem\n            ipsum dolor sit amet.\n        </td>\n    </tr>\n    <tr align="right">\n        <td style="background: transparent url({IMG_DIR}faded_grey.png ) repeat scroll center top; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; vertical-align: top; width: 66%;">\n            Vivamus\n            a quam.&nbsp;<br>\n        </td>\n    </tr>\n    <tr align="right">\n        <td style="background: transparent url({IMG_DIR}faded_grey.png ) repeat scroll center top; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; vertical-align: top; width: 66%;">\n            Proin\n            a est stibulum ante ipsum.\n        </td>\n    </tr>\n    </tbody>\n</table>\n<p><br>\n    <br>\n</p>\n</body>\n</html>\n'),
(4, 'TemplateTitleLeftRightList', 'TemplateTitleLeftRightListDescription', 'leftrightlist.gif', '\n<!DOCTYPE html>\n<html>\n<head>\n    {CSS}\n</head>\n<body>\n<table style="background: transparent url({IMG_DIR}faded_blue_horizontal.png ) repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; text-align: left; height: 400px; width: 720px;"\n       border="0" cellpadding="15" cellspacing="6">\n    <tbody>\n    <tr>\n        <td></td>\n        <td style="vertical-align: top;" colspan="1" rowspan="4">&nbsp;<img style="width: 180px; height: 294px;"\n                                                                            alt="Trainer"\n                                                                            src="{COURSE_DIR}images/trainer/trainer_join_hands.png "><br>\n        </td>\n        <td></td>\n    </tr>\n    <tr>\n        <td style="background: transparent url({IMG_DIR}faded_grey.png ) repeat scroll center top; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; vertical-align: top; width: 33%; text-align: right;">\n            Lorem\n            ipsum dolor sit amet.\n        </td>\n        <td style="background: transparent url({IMG_DIR}faded_grey.png ) repeat scroll center top; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; vertical-align: top; width: 33%; text-align: left;">\n            Convallis\n            ut.&nbsp;Cras dui magna.\n        </td>\n    </tr>\n    <tr>\n        <td style="background: transparent url({IMG_DIR}faded_grey.png ) repeat scroll center top; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; vertical-align: top; width: 33%; text-align: right;">\n            Vivamus\n            a quam.&nbsp;<br>\n        </td>\n        <td style="background: transparent url({IMG_DIR}faded_grey.png ) repeat scroll center top; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; vertical-align: top; width: 33%; text-align: left;">\n            Etiam\n            lacinia stibulum ante.<br>\n        </td>\n    </tr>\n    <tr>\n        <td style="background: transparent url({IMG_DIR}faded_grey.png ) repeat scroll center top; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; vertical-align: top; width: 33%; text-align: right;">\n            Proin\n            a est stibulum ante ipsum.\n        </td>\n        <td style="background: transparent url({IMG_DIR}faded_grey.png ) repeat scroll center top; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; vertical-align: top; width: 33%; text-align: left;">\n            Consectetuer\n            adipiscing elit. <br>\n        </td>\n    </tr>\n    </tbody>\n</table>\n<p><br>\n    <br>\n</p>\n</body>\n</html>\n'),
(5, 'TemplateTitleRightList', 'TemplateTitleRightListDescription', 'rightlist.gif', '\n<!DOCTYPE html>\n<html>\n<head>\n    {CSS}\n</head>\n<body style="direction: ltr;">\n<table style="background: transparent url({IMG_DIR}faded_blue_horizontal.png ) repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; text-align: left; width: 720px; height: 400px;"\n       border="0" cellpadding="15" cellspacing="6">\n    <tbody>\n    <tr>\n        <td style="vertical-align: bottom; width: 50%;" colspan="1" rowspan="4"><img\n                style="width: 300px; height: 199px;" alt="trainer"\n                src="{COURSE_DIR}images/trainer/trainer_points_right.png"><br>\n        </td>\n        <td style="width: 50%;"></td>\n    </tr>\n    <tr>\n        <td style="background: transparent url({IMG_DIR}faded_grey.png ) repeat scroll center top; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; vertical-align: top; text-align: left; width: 50%;">\n            Convallis\n            ut.&nbsp;Cras dui magna.\n        </td>\n    </tr>\n    <tr>\n        <td style="background: transparent url({IMG_DIR}faded_grey.png ) repeat scroll center top; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; vertical-align: top; text-align: left; width: 50%;">\n            Etiam\n            lacinia.<br>\n        </td>\n    </tr>\n    <tr>\n        <td style="background: transparent url({IMG_DIR}faded_grey.png ) repeat scroll center top; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; vertical-align: top; text-align: left; width: 50%;">\n            Consectetuer\n            adipiscing elit. <br>\n        </td>\n    </tr>\n    </tbody>\n</table>\n<p><br>\n    <br>\n</p>\n</body>\n</html>\n'),
(6, 'TemplateTitleDiagram', 'TemplateTitleDiagramDescription', 'diagram.gif', '\n<!DOCTYPE html>\n<html>\n<head>\n    {CSS}\n</head>\n<body>\n<table style="background: transparent url({IMG_DIR}faded_blue_horizontal.png ) repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; text-align: left; width: 720px; height: 400px;"\n       border="0" cellpadding="15" cellspacing="6">\n    <tbody>\n    <tr>\n        <td style="background: transparent url({IMG_DIR}faded_grey.png ) repeat scroll center top; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; vertical-align: top; text-align: left; height: 33%; width: 33%;">\n            <br>\n            Etiam\n            lacinia stibulum ante.\n            Convallis\n            ut.&nbsp;Cras dui magna.\n        </td>\n        <td colspan="1" rowspan="3">\n            <img style="width: 350px; height: 267px;" alt="Alaska chart"\n                 src="{COURSE_DIR}images/diagrams/alaska_chart.png "></td>\n    </tr>\n    <tr>\n        <td colspan="1" rowspan="1">\n            <img style="width: 300px; height: 199px;" alt="trainer"\n                 src="{COURSE_DIR}images/trainer/trainer_points_right.png "></td>\n    </tr>\n    <tr>\n    </tr>\n    </tbody>\n</table>\n<p><br>\n    <br>\n</p>\n</body>\n</html>\n'),
(7, 'TemplateTitleDesc', 'TemplateTitleCheckListDescription', 'description.gif', '\n<!DOCTYPE html>\n<html>\n<head>\n    {CSS}\n</head>\n<body>\n<table style="background: transparent url({IMG_DIR}faded_blue_horizontal.png ) repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; text-align: left; width: 720px; height: 400px;"\n       border="0" cellpadding="15" cellspacing="6">\n    <tbody>\n    <tr>\n        <td style="width: 50%; vertical-align: top;">\n            <img style="width: 48px; height: 49px; float: left;" alt="01" src="{COURSE_DIR}images/small/01.png "\n                 hspace="5"><br>Lorem ipsum dolor sit amet<br><br><br>\n            <img style="width: 48px; height: 49px; float: left;" alt="02" src="{COURSE_DIR}images/small/02.png "\n                 hspace="5">\n            <br>Ut enim ad minim veniam<br><br><br>\n            <img style="width: 48px; height: 49px; float: left;" alt="03" src="{COURSE_DIR}images/small/03.png "\n                 hspace="5">Duis aute irure dolor in reprehenderit<br><br><br>\n            <img style="width: 48px; height: 49px; float: left;" alt="04" src="{COURSE_DIR}images/small/04.png "\n                 hspace="5">Neque porro quisquam est\n        </td>\n\n        <td style="vertical-align: top; width: 50%; text-align: right;" colspan="1" rowspan="1">\n            <img style="width: 300px; height: 291px;" alt="Gearbox" src="{COURSE_DIR}images/diagrams/gearbox.jpg "><br>\n        </td>\n    </tr>\n    <tr></tr>\n    </tbody>\n</table>\n<p><br>\n    <br>\n</p>\n</body>\n</html>\n'),
(8, 'TemplateTitleCycle', 'TemplateTitleCycleDescription', 'cyclechart.gif', '\n<!DOCTYPE html>\n<html>\n<head>\n    {CSS}\n    <style>\n        .title {\n            color: white;\n            font-weight: bold;\n        }\n    </style>\n</head>\n<body>\n<table style="background: transparent url({IMG_DIR}faded_blue_horizontal.png ) repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; text-align: left; width: 720px; height: 400px;"\n       border="0" cellpadding="8" cellspacing="6">\n    <tbody>\n    <tr>\n        <td style="text-align: center; vertical-align: bottom; height: 10%;" colspan="3" rowspan="1">\n            <img style="width: 250px; height: 76px;" alt="arrow" src="{COURSE_DIR}images/diagrams/top_arrow.png ">\n        </td>\n    </tr>\n    <tr>\n        <td style="height: 5%; width: 45%; vertical-align: top; background-color: rgb(153, 153, 153); text-align: center;">\n            <span class="title">Lorem ipsum</span>\n        </td>\n        <td style="height: 5%; width: 10%;"></td>\n        <td style="height: 5%; vertical-align: top; background-color: rgb(153, 153, 153); text-align: center;">\n            <span class="title">Sed ut perspiciatis</span>\n        </td>\n    </tr>\n    <tr>\n        <td style="background-color: rgb(204, 204, 255); width: 45%; vertical-align: top;">\n            <ul>\n                <li>dolor sit amet</li>\n                <li>consectetur adipisicing elit</li>\n                <li>sed do eiusmod tempor&nbsp;</li>\n                <li>adipisci velit, sed quia non numquam</li>\n                <li>eius modi tempora incidunt ut labore et dolore magnam</li>\n            </ul>\n        </td>\n        <td style="width: 10%;"></td>\n        <td style="background-color: rgb(204, 204, 255); width: 45%; vertical-align: top;">\n            <ul>\n                <li>ut enim ad minim veniam</li>\n                <li>quis nostrud exercitation</li>\n                <li>ullamco laboris nisi ut</li>\n                <li> Quis autem vel eum iure reprehenderit qui in ea</li>\n                <li>voluptate velit esse quam nihil molestiae consequatur,</li>\n            </ul>\n        </td>\n    </tr>\n    <tr align="center">\n        <td style="height: 10%; vertical-align: top;" colspan="3" rowspan="1">\n            <img style="width: 250px; height: 76px;" alt="arrow" src="{COURSE_DIR}images/diagrams/bottom_arrow.png ">&nbsp;&nbsp;\n            &nbsp; &nbsp; &nbsp;\n        </td>\n    </tr>\n    </tbody>\n</table>\n<p><br>\n    <br>\n</p>\n</body>\n</html>\n'),
(9, 'TemplateTitleTimeline', 'TemplateTitleTimelineDescription', 'phasetimeline.gif', '\n<!DOCTYPE html>\n<html>\n<head>\n    {CSS}\n    <style>\n        .title {\n            font-weight: bold;\n            text-align: center;\n        }\n    </style>\n</head>\n<body>\n<table style="background: transparent url({IMG_DIR}faded_blue_horizontal.png ) repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; text-align: left; width: 720px; height: 400px;"\n       border="0" cellpadding="8" cellspacing="5">\n    <tbody>\n    <tr class="title">\n        <td style="vertical-align: top; height: 3%; background-color: rgb(224, 224, 224);">Lorem ipsum</td>\n        <td style="height: 3%;"></td>\n        <td style="vertical-align: top; height: 3%; background-color: rgb(237, 237, 237);">Perspiciatis</td>\n        <td style="height: 3%;"></td>\n        <td style="vertical-align: top; height: 3%; background-color: rgb(245, 245, 245);">Nemo enim</td>\n    </tr>\n    <tr>\n        <td style="vertical-align: top; width: 30%; background-color: rgb(224, 224, 224);">\n            <ul>\n                <li>dolor sit amet</li>\n                <li>consectetur</li>\n                <li>adipisicing elit</li>\n            </ul>\n            <br>\n        </td>\n        <td>\n            <img style="width: 32px; height: 32px;" alt="arrow" src="{COURSE_DIR}images/small/arrow.png ">\n        </td>\n        <td style="vertical-align: top; width: 30%; background-color: rgb(237, 237, 237);">\n            <ul>\n                <li>ut labore</li>\n                <li>et dolore</li>\n                <li>magni dolores</li>\n            </ul>\n        </td>\n        <td>\n            <img style="width: 32px; height: 32px;" alt="arrow" src="{COURSE_DIR}images/small/arrow.png ">\n        </td>\n        <td style="vertical-align: top; background-color: rgb(245, 245, 245); width: 30%;">\n            <ul>\n                <li>neque porro</li>\n                <li>quisquam est</li>\n                <li>qui dolorem&nbsp;&nbsp;</li>\n            </ul>\n            <br><br>\n        </td>\n    </tr>\n    </tbody>\n</table>\n<p><br>\n    <br>\n</p>\n</body>\n</html>\n'),
(10, 'TemplateTitleTable', 'TemplateTitleCheckListDescription', 'table.gif', '\n<!DOCTYPE html>\n<html>\n<head>\n    {CSS}\n    <style type="text/css">\n        .title {\n            font-weight: bold;\n            text-align: center;\n        }\n\n        .items {\n            text-align: right;\n        }\n    </style>\n</head>\n<body>\n<br/>\n<h2>A table</h2>\n<table style="background: transparent url({IMG_DIR}faded_blue_horizontal.png ) repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; text-align: left; width: 720px;"\n       border="1" cellpadding="5" cellspacing="0">\n    <tbody>\n    <tr class="title">\n        <td>City</td>\n        <td>2005</td>\n        <td>2006</td>\n        <td>2007</td>\n        <td>2008</td>\n    </tr>\n    <tr class="items">\n        <td>Lima</td>\n        <td>10,40</td>\n        <td>8,95</td>\n        <td>9,19</td>\n        <td>9,76</td>\n    </tr>\n    <tr class="items">\n        <td>New York</td>\n        <td>18,39</td>\n        <td>17,52</td>\n        <td>16,57</td>\n        <td>16,60</td>\n    </tr>\n    <tr class="items">\n        <td>Barcelona</td>\n        <td>0,10</td>\n        <td>0,10</td>\n        <td>0,05</td>\n        <td>0,05</td>\n    </tr>\n    <tr class="items">\n        <td>Paris</td>\n        <td>3,38</td>\n        <td>3,63</td>\n        <td>3,63</td>\n        <td>3,54</td>\n    </tr>\n    </tbody>\n</table>\n<br>\n</body>\n</html>\n'),
(11, 'TemplateTitleAudio', 'TemplateTitleAudioDescription', 'audiocomment.gif', '\n<!DOCTYPE html>\n<html>\n<head>\n    {CSS}\n</head>\n<body>\n<table style="background: transparent url({IMG_DIR}faded_blue_horizontal.png ) repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; text-align: left; width: 720px; height: 400px;"\n       border="0" cellpadding="15" cellspacing="6">\n    <tbody>\n    <tr>\n        <td>\n            <div align="center">\n    <span style="text-align: center;">\n        <embed type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer"\n               width="300" height="20" bgcolor="#FFFFFF" src="{REL_PATH}main/inc/lib/mediaplayer/player.swf"\n               allowfullscreen="false" allowscriptaccess="always"\n               flashvars="file={COURSE_DIR}audio/ListeningComprehension.mp3&amp;autostart=true"></embed>\n    </span></div>\n\n            <br>\n        </td>\n        <td colspan="1" rowspan="3"><br>\n            <img style="width: 300px; height: 341px; float: right;" alt="image"\n                 src="{COURSE_DIR}images/diagrams/head_olfactory_nerve.png "><br></td>\n    </tr>\n    <tr>\n        <td colspan="1" rowspan="1">\n            <img style="width: 180px; height: 271px;" alt="trainer"\n                 src="{COURSE_DIR}images/trainer/trainer_glasses.png"><br></td>\n    </tr>\n    <tr>\n    </tr>\n    </tbody>\n</table>\n<p><br>\n    <br>\n</p>\n</body>\n</html>\n'),
(12, 'TemplateTitleVideo', 'TemplateTitleVideoDescription', 'video.gif', '\n<!DOCTYPE html>\n<html>\n<head>\n    {CSS}\n</head>\n<body>\n<table style="background: transparent url({IMG_DIR}faded_blue_horizontal.png ) repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; text-align: left; width: 720px; height: 400px;"\n       border="0" cellpadding="15" cellspacing="6">\n    <tbody>\n    <tr>\n        <td style="width: 50%; vertical-align: top;">\n            <div style="text-align: center;" id="player810625-parent">\n                <div style="border-style: none; overflow: hidden; width: 320px; height: 240px; background-color: rgb(220, 220, 220);">\n                    <div id="player810625">\n                        <div id="player810625-config"\n                             style="overflow: hidden; display: none; visibility: hidden; width: 0px; height: 0px;">\n                            url={REL_PATH}main/default_course_document/video/flv/example.flv width=320 height=240\n                            loop=false play=false downloadable=false fullscreen=true displayNavigation=true\n                            displayDigits=true align=left dispPlaylist=none playlistThumbs=false\n                        </div>\n                    </div>\n                    <embed\n                            type="application/x-shockwave-flash"\n                            src="{REL_PATH}main/inc/lib/mediaplayer/player.swf"\n                            width="320"\n                            height="240"\n                            id="single"\n                            name="single"\n                            quality="high"\n                            allowfullscreen="true"\n                            flashvars="width=320&height=240&autostart=false&file={REL_PATH}main/default_course_document/video/flv/example.flv&repeat=false&image=&showdownload=false&link={REL_PATH}main/default_course_document/video/flv/example.flv&showdigits=true&shownavigation=true&logo="\n                    />\n                </div>\n            </div>\n        </td>\n        <td style="background: transparent url({IMG_DIR}faded_grey.png) repeat scroll center top; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; vertical-align: top; width: 50%;">\n            <h3><br>\n            </h3>\n            <h3>Lorem ipsum dolor sit amet</h3>\n            <ul>\n                <li>consectetur adipisicing elit</li>\n                <li>sed do eiusmod tempor incididunt</li>\n                <li>ut labore et dolore magna aliqua</li>\n            </ul>\n            <h3>Ut enim ad minim veniam</h3>\n            <ul>\n                <li>quis nostrud exercitation ullamco</li>\n                <li>laboris nisi ut aliquip ex ea commodo consequat</li>\n                <li>Excepteur sint occaecat cupidatat non proident</li>\n            </ul>\n        </td>\n    </tr>\n    </tbody>\n</table>\n<p><br>\n    <br>\n</p>\n<style type="text/css">body {\n}</style><!-- to fix a strange bug appearing with firefox when editing this template -->\n</body>\n</html>\n'),
(13, 'TemplateTitleFlash', 'TemplateTitleFlashDescription', 'flash.gif', '\n<!DOCTYPE html>\n<html>\n<head>\n    {CSS}\n</head>\n<body>\n<table style="background: transparent url({IMG_DIR}faded_blue_horizontal.png ) repeat scroll 0% 50%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; text-align: left; width: 100%; height: 400px;"\n       border="0" cellpadding="15" cellspacing="6">\n    <tbody>\n    <tr>\n        <td align="center">\n            <embed width="700" height="300" type="application/x-shockwave-flash"\n                   pluginspage="http://www.macromedia.com/go/getflashplayer"\n                   src="{COURSE_DIR}flash/SpinEchoSequence.swf" play="true" loop="true" menu="true"></embed>\n            </span><br/>\n        </td>\n    </tr>\n    </tbody>\n</table>\n<p><br>\n    <br>\n</p>\n</body>\n</html>\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_announcement`
--

CREATE TABLE `sys_announcement` (
  `id` int(11) NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `visible_teacher` tinyint(1) NOT NULL,
  `visible_student` tinyint(1) NOT NULL,
  `visible_guest` tinyint(1) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_url_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sys_calendar`
--

CREATE TABLE `sys_calendar` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `access_url_id` int(11) NOT NULL,
  `all_day` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field_id` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tag`
--

INSERT INTO `tag` (`id`, `tag`, `field_id`, `count`) VALUES
(1, '', 14, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `templates`
--

CREATE TABLE `templates` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `course_code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `ref_doc` int(11) NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_assigned_log`
--

CREATE TABLE `ticket_assigned_log` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sys_insert_user_id` int(11) NOT NULL,
  `assigned_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_category`
--

CREATE TABLE `ticket_category` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `total_tickets` int(11) NOT NULL,
  `course_required` tinyint(1) NOT NULL,
  `sys_insert_user_id` int(11) NOT NULL,
  `sys_insert_datetime` datetime NOT NULL,
  `sys_lastedit_user_id` int(11) DEFAULT NULL,
  `sys_lastedit_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ticket_category`
--

INSERT INTO `ticket_category` (`id`, `project_id`, `name`, `description`, `total_tickets`, `course_required`, `sys_insert_user_id`, `sys_insert_datetime`, `sys_lastedit_user_id`, `sys_lastedit_datetime`) VALUES
(1, 1, 'Inscripción', 'Tickets sobre inscripciones', 0, 0, 1, '2016-11-11 14:23:15', NULL, NULL),
(2, 1, 'Información general', 'Tickets sobre información general', 0, 0, 1, '2016-11-11 14:23:15', NULL, NULL),
(3, 1, 'Solicitudes y trámites', 'Tickets sobre solicitudes y trámites', 0, 0, 1, '2016-11-11 14:23:15', NULL, NULL),
(4, 1, 'Incidentes académicos', 'Tickets sobre incidentes académicos, como exámenes, prácticas, tareas, etc.', 0, 0, 1, '2016-11-11 14:23:16', NULL, NULL),
(5, 1, 'Campus virtual', 'Tickets sobre el campus virtual', 0, 0, 1, '2016-11-11 14:23:16', NULL, NULL),
(6, 1, 'Evaluación en línea', 'Tickets sobre evaluaciones en línea', 0, 1, 1, '2016-11-11 14:23:16', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_category_rel_user`
--

CREATE TABLE `ticket_category_rel_user` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_message`
--

CREATE TABLE `ticket_message` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sys_insert_user_id` int(11) NOT NULL,
  `sys_insert_datetime` datetime NOT NULL,
  `sys_lastedit_user_id` int(11) DEFAULT NULL,
  `sys_lastedit_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_message_attachments`
--

CREATE TABLE `ticket_message_attachments` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `message_id` int(11) DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` longtext COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `sys_insert_user_id` int(11) NOT NULL,
  `sys_insert_datetime` datetime NOT NULL,
  `sys_lastedit_user_id` int(11) DEFAULT NULL,
  `sys_lastedit_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_priority`
--

CREATE TABLE `ticket_priority` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `urgency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sys_insert_user_id` int(11) NOT NULL,
  `sys_insert_datetime` datetime NOT NULL,
  `sys_lastedit_user_id` int(11) DEFAULT NULL,
  `sys_lastedit_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ticket_priority`
--

INSERT INTO `ticket_priority` (`id`, `name`, `code`, `description`, `color`, `urgency`, `sys_insert_user_id`, `sys_insert_datetime`, `sys_lastedit_user_id`, `sys_lastedit_datetime`) VALUES
(1, 'Normal', 'NRM', NULL, '', '', 1, '2016-11-11 14:23:16', NULL, NULL),
(2, 'Alta', 'HGH', NULL, '', '', 1, '2016-11-11 14:23:16', NULL, NULL),
(3, 'Baja', 'LOW', NULL, '', '', 1, '2016-11-11 14:23:16', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_project`
--

CREATE TABLE `ticket_project` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other_area` int(11) DEFAULT NULL,
  `sys_insert_user_id` int(11) NOT NULL,
  `sys_insert_datetime` datetime NOT NULL,
  `sys_lastedit_user_id` int(11) DEFAULT NULL,
  `sys_lastedit_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ticket_project`
--

INSERT INTO `ticket_project` (`id`, `name`, `description`, `email`, `other_area`, `sys_insert_user_id`, `sys_insert_datetime`, `sys_lastedit_user_id`, `sys_lastedit_datetime`) VALUES
(1, 'Ticket System', NULL, NULL, NULL, 1, '2016-11-11 14:23:15', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_status`
--

CREATE TABLE `ticket_status` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ticket_status`
--

INSERT INTO `ticket_status` (`id`, `code`, `name`, `description`) VALUES
(1, 'NAT', 'Nuevo', NULL),
(2, 'PND', 'Pendiente', NULL),
(3, 'XCF', 'Sin confirmar', NULL),
(4, 'CLS', 'Cerrado', NULL),
(5, 'REE', 'Reenviado', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_ticket`
--

CREATE TABLE `ticket_ticket` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `priority_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci,
  `personal_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `assigned_last_user` int(11) DEFAULT NULL,
  `total_messages` int(11) NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `sys_insert_user_id` int(11) NOT NULL,
  `sys_insert_datetime` datetime NOT NULL,
  `sys_lastedit_user_id` int(11) DEFAULT NULL,
  `sys_lastedit_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `track_course_ranking`
--

CREATE TABLE `track_course_ranking` (
  `id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `url_id` int(11) NOT NULL,
  `accesses` int(11) NOT NULL,
  `total_score` int(11) NOT NULL,
  `users` int(11) NOT NULL,
  `creation_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `track_course_ranking`
--

INSERT INTO `track_course_ranking` (`id`, `c_id`, `session_id`, `url_id`, `accesses`, `total_score`, `users`, `creation_date`) VALUES
(1, 1, 0, 1, 127, 5, 1, '2016-11-11 15:43:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `track_e_access`
--

CREATE TABLE `track_e_access` (
  `access_id` int(11) NOT NULL,
  `access_user_id` int(11) DEFAULT NULL,
  `access_date` datetime NOT NULL,
  `c_id` int(11) NOT NULL,
  `access_tool` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_session_id` int(11) NOT NULL,
  `user_ip` varchar(39) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `track_e_access`
--

INSERT INTO `track_e_access` (`access_id`, `access_user_id`, `access_date`, `c_id`, `access_tool`, `access_session_id`, `user_ip`) VALUES
(1, 1, '2016-11-11 15:43:23', 1, NULL, 0, '::1'),
(2, 1, '2016-11-11 15:43:36', 1, NULL, 0, '::1'),
(3, 1, '2016-11-11 15:47:59', 1, NULL, 0, '::1'),
(4, 1, '2016-11-11 15:48:44', 1, NULL, 0, '::1'),
(5, 1, '2016-11-11 15:49:36', 1, NULL, 0, '::1'),
(6, 1, '2016-11-11 15:49:56', 1, NULL, 0, '::1'),
(7, 1, '2016-11-11 15:50:03', 1, NULL, 0, '::1'),
(8, 1, '2016-11-11 15:50:08', 1, NULL, 0, '::1'),
(9, 1, '2016-11-11 16:07:35', 1, NULL, 0, '::1'),
(10, 1, '2016-11-11 16:07:48', 1, NULL, 0, '::1'),
(11, 1, '2016-11-11 16:10:52', 1, NULL, 0, '::1'),
(12, 1, '2016-11-11 16:10:56', 1, NULL, 0, '::1'),
(13, 1, '2016-11-11 16:11:01', 1, NULL, 0, '::1'),
(14, 1, '2016-11-11 16:11:05', 1, NULL, 0, '::1'),
(15, 1, '2016-11-11 16:14:29', 1, NULL, 0, '::1'),
(16, 1, '2016-11-11 16:14:36', 1, NULL, 0, '::1'),
(17, 1, '2016-11-11 16:15:05', 1, NULL, 0, '::1'),
(18, 1, '2016-11-11 16:16:32', 1, NULL, 0, '::1'),
(19, 1, '2016-11-11 16:16:35', 1, NULL, 0, '::1'),
(20, 1, '2016-11-11 16:17:10', 1, NULL, 0, '::1'),
(21, 1, '2016-11-11 16:19:20', 1, NULL, 0, '::1'),
(22, 1, '2016-11-11 16:19:40', 1, NULL, 0, '::1'),
(23, 1, '2016-11-11 16:19:51', 1, NULL, 0, '::1'),
(24, 1, '2016-11-11 16:20:17', 1, NULL, 0, '::1'),
(25, 1, '2016-11-11 16:39:25', 1, NULL, 0, '::1'),
(26, 1, '2016-11-11 16:39:29', 1, NULL, 0, '::1'),
(27, 3, '2016-11-11 16:42:52', 1, NULL, 0, '::1'),
(28, 3, '2016-11-11 16:42:58', 1, 'learnpath', 0, '::1'),
(29, 3, '2016-11-11 16:44:18', 1, NULL, 0, '::1'),
(30, 3, '2016-11-11 16:44:46', 1, NULL, 0, '::1'),
(31, 3, '2016-11-11 16:48:04', 1, NULL, 0, '::1'),
(32, 3, '2016-11-11 16:48:10', 1, 'learnpath', 0, '::1'),
(33, 3, '2016-11-11 17:08:30', 1, 'learnpath', 0, '::1'),
(34, 3, '2016-11-11 17:08:41', 1, NULL, 0, '::1'),
(35, 3, '2016-11-11 17:08:47', 1, 'learnpath', 0, '::1'),
(36, 1, '2016-11-11 17:12:04', 1, NULL, 0, '::1'),
(37, 1, '2016-11-11 17:12:08', 1, 'learnpath', 0, '::1'),
(38, 3, '2016-11-11 17:12:28', 1, NULL, 0, '::1'),
(39, 3, '2016-11-11 17:12:37', 1, 'user', 0, '::1'),
(40, 3, '2016-11-11 17:12:41', 1, NULL, 0, '::1'),
(41, 3, '2016-11-11 17:12:46', 1, 'document', 0, '::1'),
(42, 3, '2016-11-11 17:13:23', 1, NULL, 0, '::1'),
(43, 3, '2016-11-11 17:13:28', 1, 'learnpath', 0, '::1'),
(44, 3, '2016-11-11 17:13:58', 1, 'learnpath', 0, '::1'),
(45, 3, '2016-11-11 17:14:13', 1, NULL, 0, '::1'),
(46, 1, '2016-11-11 17:16:41', 1, NULL, 0, '::1'),
(47, 1, '2016-11-11 17:16:46', 1, 'link', 0, '::1'),
(48, 1, '2016-11-11 17:17:05', 1, NULL, 0, '::1'),
(49, 1, '2016-11-11 17:17:18', 1, 'glossary', 0, '::1'),
(50, 1, '2016-11-11 17:24:33', 1, NULL, 0, '::1'),
(51, 1, '2016-11-11 17:24:38', 1, 'course_description', 0, '::1'),
(52, 1, '2016-11-11 17:25:08', 1, NULL, 0, '::1'),
(53, 1, '2016-11-11 17:27:14', 1, NULL, 0, '::1'),
(54, 1, '2016-11-11 17:27:15', 1, NULL, 0, '::1'),
(55, 1, '2016-11-11 17:27:21', 1, 'announcement', 0, '::1'),
(56, 1, '2016-11-11 17:28:03', 1, NULL, 0, '::1'),
(57, 1, '2016-11-11 17:28:26', 1, 'course_progress', 0, '::1'),
(58, 1, '2016-11-11 17:29:58', 1, NULL, 0, '::1'),
(59, 1, '2016-11-11 17:30:29', 1, NULL, 0, '::1'),
(60, 1, '2016-11-11 17:30:52', 1, 'attendance', 0, '::1'),
(61, 3, '2016-11-11 17:31:44', 1, NULL, 0, '::1'),
(62, 3, '2016-11-11 17:31:55', 1, NULL, 0, '::1'),
(63, 1, '2016-11-11 17:35:23', 1, NULL, 0, '::1'),
(64, 1, '2016-11-11 17:35:28', 1, 'forum', 0, '::1'),
(65, 1, '2016-11-11 17:35:40', 1, NULL, 0, '::1'),
(66, 1, '2016-11-11 17:35:47', 1, 'student_publication', 0, '::1'),
(67, 1, '2016-11-11 17:37:38', 1, NULL, 0, '::1'),
(68, 1, '2016-11-11 17:37:48', 1, NULL, 0, '::1'),
(69, 1, '2016-11-11 17:38:35', 1, NULL, 0, '::1'),
(70, 1, '2016-11-11 17:38:47', 1, NULL, 0, '::1'),
(71, 3, '2016-11-11 17:39:02', 1, 'glossary', 0, '::1'),
(72, 3, '2016-11-11 17:39:11', 1, NULL, 0, '::1'),
(73, 3, '2016-11-11 17:39:18', 1, 'chat', 0, '::1'),
(74, 1, '2016-11-11 17:40:45', 1, NULL, 0, '::1'),
(75, 1, '2016-11-11 17:40:57', 1, 'survey', 0, '::1'),
(76, 1, '2016-11-11 17:42:33', 1, NULL, 0, '::1'),
(77, 1, '2016-11-11 17:52:12', 1, NULL, 0, '::1'),
(78, 1, '2016-11-11 17:52:22', 1, NULL, 0, '::1'),
(79, 1, '2016-11-11 17:52:41', 1, NULL, 0, '::1'),
(80, 1, '2016-11-11 17:53:05', 1, NULL, 0, '::1'),
(81, 1, '2016-11-11 17:53:15', 1, NULL, 0, '::1'),
(82, 1, '2016-11-11 17:55:24', 1, NULL, 0, '::1'),
(83, 3, '2016-11-11 17:55:50', 1, NULL, 0, '::1'),
(84, 1, '2016-11-11 17:56:04', 1, NULL, 0, '::1'),
(85, 1, '2016-11-11 17:56:49', 1, NULL, 0, '::1'),
(86, 1, '2016-11-17 22:42:48', 1, NULL, 0, '::1'),
(87, 1, '2016-11-17 22:42:57', 1, 'learnpath', 0, '::1'),
(88, 1, '2016-11-17 22:44:23', 1, NULL, 0, '::1'),
(89, 1, '2016-11-17 22:44:46', 1, NULL, 0, '::1'),
(90, 1, '2016-11-17 22:46:43', 1, 'document', 0, '::1'),
(91, 1, '2016-11-17 22:46:58', 1, NULL, 0, '::1'),
(92, 1, '2016-11-17 22:47:11', 1, NULL, 0, '::1'),
(93, 1, '2016-11-17 22:50:34', 1, NULL, 0, '::1'),
(94, 1, '2016-11-17 22:50:47', 1, 'learnpath', 0, '::1'),
(95, 1, '2016-11-18 01:03:23', 1, NULL, 0, '::1'),
(96, 1, '2016-11-18 01:03:29', 1, 'learnpath', 0, '::1'),
(97, 1, '2016-11-18 01:15:14', 1, NULL, 0, '::1'),
(98, 1, '2016-11-18 01:15:17', 1, NULL, 0, '::1'),
(99, 1, '2016-11-18 01:15:45', 1, NULL, 0, '::1'),
(100, 1, '2016-11-18 01:15:53', 1, NULL, 0, '::1'),
(101, 1, '2016-11-18 01:18:33', 1, NULL, 0, '::1'),
(102, 1, '2016-11-18 01:18:36', 1, NULL, 0, '::1'),
(103, 1, '2016-11-18 01:21:13', 1, NULL, 0, '::1'),
(104, 1, '2016-11-18 01:21:25', 1, 'learnpath', 0, '::1'),
(105, 1, '2016-11-18 01:24:32', 1, NULL, 0, '::1'),
(106, 1, '2016-11-18 01:24:42', 1, NULL, 0, '::1'),
(107, 1, '2016-11-18 01:25:58', 1, NULL, 0, '::1'),
(108, 1, '2016-11-18 01:26:02', 1, 'document', 0, '::1'),
(109, 1, '2016-11-18 01:26:23', 1, NULL, 0, '::1'),
(110, 1, '2016-11-18 01:26:54', 1, 'user', 0, '::1'),
(111, 1, '2016-11-21 14:22:04', 1, NULL, 0, '::1'),
(112, 1, '2016-11-21 14:22:11', 1, 'learnpath', 0, '::1'),
(113, 1, '2016-11-21 14:25:30', 1, NULL, 0, '::1'),
(114, 1, '2016-11-21 14:25:33', 1, 'learnpath', 0, '::1'),
(115, 3, '2016-11-21 14:26:58', 1, NULL, 0, '::1'),
(116, 3, '2016-11-21 14:27:13', 1, 'learnpath', 0, '::1'),
(117, 3, '2016-11-21 14:28:02', 1, 'learnpath', 0, '::1'),
(118, 3, '2016-11-21 14:29:21', 1, 'learnpath', 0, '::1'),
(119, 3, '2016-11-21 14:37:19', 1, 'learnpath', 0, '::1'),
(120, 3, '2016-11-21 14:39:59', 1, NULL, 0, '::1'),
(121, 3, '2016-11-21 14:40:04', 1, 'learnpath', 0, '::1'),
(122, 3, '2016-11-21 14:41:37', 1, NULL, 0, '::1'),
(123, 1, '2016-11-21 14:42:06', 1, NULL, 0, '::1'),
(124, 1, '2016-11-21 14:45:40', 1, NULL, 0, '::1'),
(125, 1, '2016-11-21 14:49:30', 1, NULL, 0, '::1'),
(126, 1, '2016-11-21 14:49:36', 1, 'quiz', 0, '::1'),
(127, 3, '2016-11-21 15:12:35', 1, NULL, 0, '::1'),
(128, 3, '2016-11-21 15:12:41', 1, 'quiz', 0, '::1'),
(129, 3, '2016-11-21 15:13:01', 1, NULL, 0, '::1'),
(130, 1, '2016-11-21 15:13:15', 1, NULL, 0, '::1'),
(131, 1, '2016-11-21 15:13:18', 1, 'learnpath', 0, '::1'),
(132, 3, '2016-11-21 15:15:22', 1, 'learnpath', 0, '::1'),
(133, 3, '2016-11-21 15:22:32', 1, NULL, 0, '::1'),
(134, 3, '2016-11-21 15:22:36', 1, 'learnpath', 0, '::1'),
(135, 1, '2016-11-21 15:23:02', 1, NULL, 0, '::1'),
(136, 1, '2016-11-21 15:23:05', 1, 'learnpath', 0, '::1'),
(137, 3, '2016-11-21 15:24:21', 1, NULL, 0, '::1'),
(138, 3, '2016-11-21 15:24:27', 1, 'learnpath', 0, '::1'),
(139, 1, '2016-11-21 15:25:31', 1, 'learnpath', 0, '::1'),
(140, 1, '2016-11-21 15:28:09', 1, NULL, 0, '::1'),
(141, 1, '2016-11-21 15:28:52', 1, 'learnpath', 0, '::1'),
(142, 3, '2016-11-21 15:30:17', 1, NULL, 0, '::1'),
(143, 3, '2016-11-21 15:30:23', 1, 'quiz', 0, '::1'),
(144, 3, '2016-11-21 15:30:29', 1, NULL, 0, '::1'),
(145, 3, '2016-11-21 15:30:32', 1, 'learnpath', 0, '::1'),
(146, 1, '2016-11-21 15:41:34', 1, NULL, 0, '::1'),
(147, 1, '2016-11-21 15:41:59', 1, 'learnpath', 0, '::1'),
(148, 3, '2016-11-21 15:44:01', 1, NULL, 0, '::1'),
(149, 3, '2016-11-21 15:44:05', 1, 'learnpath', 0, '::1'),
(150, 3, '2016-11-21 15:47:37', 1, NULL, 0, '::1'),
(151, 3, '2016-11-21 15:47:44', 1, 'learnpath', 0, '::1'),
(152, 3, '2016-11-21 16:10:41', 1, NULL, 0, '127.0.0.1'),
(153, 3, '2016-11-21 16:11:15', 1, 'learnpath', 0, '127.0.0.1'),
(154, 3, '2016-11-21 16:35:45', 1, NULL, 0, '::1'),
(155, 3, '2016-11-21 16:41:10', 1, NULL, 0, '::1'),
(156, 3, '2016-11-21 16:41:16', 1, 'quiz', 0, '::1'),
(157, 3, '2016-11-21 16:41:37', 1, NULL, 0, '::1'),
(158, 3, '2016-11-21 16:41:46', 1, 'quiz', 0, '127.0.0.1'),
(159, 3, '2016-11-21 16:41:49', 1, NULL, 0, '127.0.0.1'),
(160, 3, '2016-11-21 16:41:53', 1, 'learnpath', 0, '127.0.0.1'),
(161, 3, '2016-11-21 16:42:25', 1, NULL, 0, '::1'),
(162, 3, '2016-11-21 16:48:15', 1, NULL, 0, '::1'),
(163, 3, '2016-11-21 16:48:19', 1, 'learnpath', 0, '::1'),
(164, 3, '2016-11-21 16:51:51', 1, NULL, 0, '127.0.0.1'),
(165, 3, '2016-11-21 16:51:55', 1, 'learnpath', 0, '127.0.0.1'),
(166, 3, '2016-11-21 16:53:05', 1, NULL, 0, '::1'),
(167, 1, '2016-11-21 16:54:21', 1, NULL, 0, '::1'),
(168, 1, '2016-11-21 16:54:25', 1, 'learnpath', 0, '::1'),
(169, 3, '2016-11-21 16:55:18', 1, NULL, 0, '127.0.0.1'),
(170, 3, '2016-11-21 16:55:21', 1, 'learnpath', 0, '127.0.0.1'),
(171, 3, '2016-11-21 16:55:59', 1, NULL, 0, '127.0.0.1'),
(172, 3, '2016-11-21 16:56:05', 1, 'learnpath', 0, '127.0.0.1'),
(173, 1, '2016-11-21 16:57:29', 1, NULL, 0, '::1'),
(174, 1, '2016-11-21 16:57:37', 1, 'learnpath', 0, '::1'),
(175, 3, '2016-11-21 16:59:38', 1, NULL, 0, '127.0.0.1'),
(176, 3, '2016-11-21 16:59:52', 1, 'learnpath', 0, '127.0.0.1'),
(177, 3, '2016-11-21 17:15:51', 1, NULL, 0, '::1'),
(178, 3, '2016-11-21 17:16:39', 1, NULL, 0, '::1'),
(179, 1, '2016-11-21 17:17:19', 1, NULL, 0, '::1'),
(180, 1, '2016-11-21 17:17:23', 1, 'learnpath', 0, '::1'),
(181, 1, '2016-11-21 17:18:23', 1, NULL, 0, '::1'),
(182, 1, '2016-11-21 17:18:37', 1, 'learnpath', 0, '::1'),
(183, 3, '2016-11-21 17:44:17', 1, NULL, 0, '::1'),
(184, 3, '2016-11-21 17:44:22', 1, 'learnpath', 0, '::1'),
(185, 3, '2016-11-21 17:45:15', 1, NULL, 0, '::1'),
(186, 3, '2016-11-21 17:45:18', 1, 'learnpath', 0, '::1'),
(187, 3, '2016-11-21 17:46:59', 1, NULL, 0, '::1'),
(188, 3, '2016-11-21 17:47:04', 1, 'learnpath', 0, '::1'),
(189, 3, '2016-11-21 17:48:02', 1, NULL, 0, '::1'),
(190, 3, '2016-11-21 17:48:07', 1, 'learnpath', 0, '::1'),
(191, 3, '2016-11-21 17:50:48', 1, NULL, 0, '::1'),
(192, 1, '2016-11-21 17:53:22', 1, NULL, 0, '::1'),
(193, 1, '2016-11-21 19:02:54', 1, NULL, 0, '::1'),
(194, 1, '2016-11-21 19:03:12', 1, 'learnpath', 0, '::1'),
(195, 1, '2016-11-21 19:09:07', 1, NULL, 0, '::1'),
(196, 1, '2016-11-21 19:09:12', 1, 'learnpath', 0, '::1'),
(197, 1, '2016-11-21 19:11:55', 1, NULL, 0, '::1'),
(198, 1, '2016-11-21 19:12:18', 1, 'chat', 0, '::1'),
(199, 1, '2016-11-21 19:15:37', 1, 'learnpath', 0, '::1'),
(200, 1, '2016-11-21 19:25:29', 1, NULL, 0, '::1'),
(201, 1, '2016-11-21 19:25:33', 1, 'learnpath', 0, '::1'),
(202, 1, '2016-11-21 19:32:37', 1, NULL, 0, '::1'),
(203, 1, '2016-11-21 19:32:41', 1, 'learnpath', 0, '::1'),
(204, 3, '2016-11-21 19:36:10', 1, NULL, 0, '::1'),
(205, 3, '2016-11-21 19:36:14', 1, 'learnpath', 0, '::1'),
(206, 3, '2016-11-21 19:39:30', 1, NULL, 0, '::1'),
(207, 3, '2016-11-21 19:39:34', 1, 'learnpath', 0, '::1'),
(208, 3, '2016-11-21 23:23:59', 1, 'learnpath', 0, '::1'),
(209, 3, '2016-11-21 23:26:48', 1, NULL, 0, '::1'),
(210, 3, '2016-11-21 23:27:24', 1, 'learnpath', 0, '::1'),
(211, 3, '2016-11-21 23:36:24', 1, NULL, 0, '::1'),
(212, 1, '2016-11-21 23:37:45', 1, NULL, 0, '::1'),
(213, 1, '2016-11-21 23:37:53', 1, 'quiz', 0, '::1'),
(214, 1, '2016-11-21 23:40:02', 1, NULL, 0, '::1'),
(215, 1, '2016-11-21 23:40:12', 1, 'student_publication', 0, '::1'),
(216, 1, '2016-11-21 23:41:52', 1, NULL, 0, '::1'),
(217, 1, '2016-11-21 23:41:55', 1, 'learnpath', 0, '::1'),
(218, 3, '2016-11-21 23:43:11', 1, NULL, 0, '::1'),
(219, 3, '2016-11-21 23:43:17', 1, 'student_publication', 0, '::1'),
(220, 3, '2016-11-21 23:43:24', 1, NULL, 0, '::1'),
(221, 3, '2016-11-21 23:43:28', 1, 'learnpath', 0, '::1'),
(222, 3, '2016-11-21 23:49:07', 1, NULL, 0, '::1'),
(223, 1, '2016-11-22 01:00:21', 1, NULL, 0, '::1'),
(224, 1, '2016-11-22 23:46:44', 1, NULL, 0, '::1'),
(225, 1, '2016-11-23 03:56:18', 1, NULL, 0, '127.0.0.1'),
(226, 1, '2016-11-23 03:56:51', 1, NULL, 0, '::1'),
(227, 1, '2016-11-23 04:19:24', 1, NULL, 0, '::1'),
(228, 3, '2016-11-23 04:20:08', 1, NULL, 0, '::1'),
(229, 1, '2016-11-23 04:25:44', 1, NULL, 0, '::1'),
(230, 4, '2016-11-23 04:35:30', 1, NULL, 0, '::1'),
(231, 1, '2016-11-23 04:40:40', 1, NULL, 0, '::1'),
(232, 1, '2016-11-23 04:46:37', 1, NULL, 0, '::1'),
(233, 1, '2016-11-23 04:46:50', 1, NULL, 0, '::1'),
(234, 1, '2016-11-23 04:52:49', 1, NULL, 0, '::1'),
(235, 1, '2016-11-23 04:53:40', 1, NULL, 0, '::1'),
(236, 1, '2016-11-23 04:53:59', 1, NULL, 0, '::1'),
(237, 1, '2016-11-23 04:55:07', 1, NULL, 0, '::1'),
(238, 1, '2016-11-23 04:56:07', 1, NULL, 0, '::1'),
(239, 1, '2016-11-23 04:56:14', 1, NULL, 0, '::1'),
(240, 1, '2016-11-23 04:56:42', 1, NULL, 0, '::1'),
(241, 1, '2016-11-24 03:56:12', 1, NULL, 0, '::1'),
(242, 1, '2016-11-24 03:57:38', 1, 'learnpath', 0, '::1'),
(243, 1, '2016-11-24 04:21:19', 1, NULL, 0, '::1'),
(244, 1, '2016-11-24 04:21:32', 1, 'student_publication', 0, '::1'),
(245, 1, '2016-11-24 04:21:50', 1, NULL, 0, '::1'),
(246, 1, '2016-11-24 04:22:06', 1, 'learnpath', 0, '::1'),
(247, 1, '2016-11-24 04:25:26', 1, NULL, 0, '::1'),
(248, 1, '2016-11-24 04:25:33', 1, 'learnpath', 0, '::1'),
(249, 1, '2016-11-24 04:28:34', 1, NULL, 0, '::1'),
(250, 1, '2016-11-24 04:28:40', 1, 'quiz', 0, '::1'),
(251, 1, '2016-11-24 04:40:49', 1, NULL, 0, '::1'),
(252, 1, '2016-11-24 04:40:54', 1, 'learnpath', 0, '::1'),
(253, 3, '2016-11-24 04:42:43', 1, NULL, 0, '::1'),
(254, 3, '2016-11-24 04:42:47', 1, 'learnpath', 0, '::1'),
(255, 3, '2016-11-24 04:46:27', 1, NULL, 0, '::1'),
(256, 3, '2016-11-24 04:46:39', 1, 'learnpath', 0, '::1'),
(257, 3, '2016-11-24 04:47:15', 1, NULL, 0, '::1'),
(258, 3, '2016-11-24 04:47:20', 1, 'learnpath', 0, '::1'),
(259, 3, '2016-11-24 04:50:05', 1, NULL, 0, '::1'),
(260, 1, '2016-11-24 04:50:18', 1, NULL, 0, '::1'),
(261, 1, '2016-11-24 04:50:57', 1, 'student_publication', 0, '::1'),
(262, 1, '2016-11-24 04:56:43', 1, NULL, 0, '::1'),
(263, 1, '2016-11-24 04:56:58', 1, 'learnpath', 0, '::1'),
(264, 1, '2016-11-24 05:04:38', 1, NULL, 0, '::1'),
(265, 1, '2016-11-24 05:04:44', 1, 'learnpath', 0, '::1'),
(266, 1, '2016-11-24 05:06:20', 1, NULL, 0, '::1'),
(267, 3, '2016-11-24 05:10:38', 1, 'learnpath', 0, '::1'),
(268, 3, '2016-11-24 05:11:10', 1, 'learnpath', 0, '::1'),
(269, 1, '2016-11-24 05:15:12', 1, NULL, 0, '::1'),
(270, 1, '2016-11-24 05:16:02', 1, NULL, 0, '::1'),
(271, 3, '2016-11-24 05:24:51', 1, NULL, 0, '::1'),
(272, 3, '2016-11-24 05:26:23', 1, NULL, 0, '::1'),
(273, 3, '2016-11-24 05:26:29', 1, 'learnpath', 0, '::1'),
(274, 3, '2016-11-24 05:27:27', 1, NULL, 0, '::1'),
(275, 3, '2016-11-24 05:27:44', 1, 'learnpath', 0, '::1'),
(276, 3, '2016-11-24 05:44:44', 1, NULL, 0, '::1'),
(277, 3, '2016-11-24 05:45:06', 1, 'learnpath', 0, '::1'),
(278, 3, '2016-11-24 05:48:10', 1, NULL, 0, '::1'),
(279, 3, '2016-11-24 05:48:18', 1, 'learnpath', 0, '::1'),
(280, 3, '2016-11-24 05:52:41', 1, NULL, 0, '::1'),
(281, 3, '2016-11-24 05:52:50', 1, 'learnpath', 0, '::1'),
(282, 3, '2016-11-24 05:53:04', 1, NULL, 0, '::1'),
(283, 3, '2016-11-24 05:53:09', 1, 'learnpath', 0, '::1'),
(284, 3, '2016-11-24 05:55:30', 1, NULL, 0, '::1'),
(285, 3, '2016-11-24 05:55:40', 1, 'learnpath', 0, '::1'),
(286, 3, '2016-11-24 05:56:37', 1, NULL, 0, '::1'),
(287, 3, '2016-11-24 05:56:42', 1, 'learnpath', 0, '::1'),
(288, 3, '2016-11-24 05:56:53', 1, 'learnpath', 0, '::1'),
(289, 3, '2016-11-24 05:57:01', 1, 'learnpath', 0, '::1'),
(290, 3, '2016-11-24 05:57:11', 1, 'learnpath', 0, '::1'),
(291, 3, '2016-11-24 05:57:20', 1, 'learnpath', 0, '::1'),
(292, 1, '2016-11-24 05:57:38', 1, NULL, 0, '::1'),
(293, 1, '2016-11-24 05:57:42', 1, 'learnpath', 0, '::1'),
(294, 3, '2016-11-24 05:59:57', 1, NULL, 0, '::1'),
(295, 3, '2016-11-24 06:00:01', 1, 'learnpath', 0, '::1'),
(296, 3, '2016-11-24 06:03:35', 1, NULL, 0, '::1'),
(297, 3, '2016-11-24 06:03:40', 1, 'learnpath', 0, '::1'),
(298, 1, '2016-11-24 06:07:08', 1, NULL, 0, '::1'),
(299, 1, '2016-11-24 06:08:45', 1, NULL, 0, '::1'),
(300, 1, '2016-11-24 06:08:49', 1, 'learnpath', 0, '::1'),
(301, 1, '2016-11-24 06:08:58', 1, NULL, 0, '::1'),
(302, 3, '2016-11-24 06:13:02', 1, NULL, 0, '::1'),
(303, 3, '2016-11-24 06:13:29', 1, NULL, 0, '::1'),
(304, 3, '2016-11-24 06:13:33', 1, 'learnpath', 0, '::1'),
(305, 3, '2016-11-24 06:16:16', 1, NULL, 0, '::1'),
(306, 3, '2016-11-24 06:16:21', 1, 'learnpath', 0, '::1'),
(307, 3, '2016-11-24 06:20:14', 1, NULL, 0, '::1'),
(308, 3, '2016-11-24 06:23:05', 1, NULL, 0, '::1'),
(309, 1, '2016-11-24 13:22:09', 1, NULL, 0, '::1'),
(310, 1, '2016-11-24 13:56:47', 1, NULL, 0, '::1'),
(311, 1, '2016-11-24 14:00:04', 1, NULL, 0, '::1'),
(312, 1, '2016-11-24 14:04:40', 1, NULL, 0, '::1'),
(313, 1, '2016-11-24 14:18:59', 1, NULL, 0, '::1'),
(314, 1, '2016-11-24 14:19:03', 1, 'learnpath', 0, '::1'),
(315, 1, '2016-11-24 15:48:23', 1, NULL, 0, '::1'),
(316, 1, '2016-11-24 16:39:06', 1, NULL, 0, '::1'),
(317, 1, '2016-11-24 16:58:35', 1, NULL, 0, '::1'),
(318, 1, '2016-11-24 18:30:46', 1, NULL, 0, '::1'),
(319, 3, '2016-11-24 20:58:00', 1, NULL, 0, '::1'),
(320, 1, '2016-11-24 21:01:34', 1, NULL, 0, '::1'),
(321, 3, '2016-11-24 21:05:16', 1, NULL, 0, '::1'),
(322, 1, '2016-11-24 22:14:01', 1, NULL, 0, '::1'),
(323, 1, '2016-11-24 22:14:23', 1, 'student_publication', 0, '::1'),
(324, 1, '2016-11-24 22:15:39', 1, NULL, 0, '::1'),
(325, 1, '2016-11-24 22:17:23', 1, NULL, 0, '::1'),
(326, 1, '2016-11-24 22:17:29', 1, 'learnpath', 0, '::1'),
(327, 1, '2016-11-24 22:18:48', 1, NULL, 0, '::1'),
(328, 1, '2016-11-24 22:18:52', 1, 'document', 0, '::1'),
(329, 1, '2016-11-24 22:24:41', 1, NULL, 0, '::1'),
(330, 1, '2016-11-24 22:24:47', 1, 'learnpath', 0, '::1'),
(331, 1, '2016-11-24 22:25:49', 1, NULL, 0, '::1'),
(332, 1, '2016-11-24 22:25:55', 1, 'document', 0, '::1'),
(333, 3, '2016-11-24 22:27:50', 1, NULL, 0, '::1'),
(334, 3, '2016-11-24 22:27:54', 1, 'learnpath', 0, '::1'),
(335, 3, '2016-11-24 22:29:07', 1, NULL, 0, '::1'),
(336, 3, '2016-11-24 22:29:12', 1, 'learnpath', 0, '::1'),
(337, 1, '2016-11-24 22:30:18', 1, NULL, 0, '::1'),
(338, 1, '2016-11-24 22:38:38', 1, 'learnpath', 0, '::1'),
(339, 1, '2016-11-24 22:38:54', 1, 'learnpath', 0, '::1'),
(340, 1, '2016-11-24 22:39:02', 1, 'learnpath', 0, '::1'),
(341, 1, '2016-11-24 22:39:10', 1, 'learnpath', 0, '::1'),
(342, 1, '2016-11-24 22:39:45', 1, NULL, 0, '::1'),
(343, 1, '2016-11-24 22:39:49', 1, 'learnpath', 0, '::1'),
(344, 1, '2016-11-24 22:41:37', 1, NULL, 0, '::1'),
(345, 3, '2016-11-24 22:43:41', 1, NULL, 0, '::1'),
(346, 3, '2016-11-24 22:44:14', 1, NULL, 0, '::1'),
(347, 3, '2016-11-24 22:44:44', 1, NULL, 0, '::1'),
(348, 3, '2016-11-24 22:44:49', 1, 'learnpath', 0, '::1'),
(349, 3, '2016-11-24 22:45:24', 1, NULL, 0, '::1'),
(350, 3, '2016-11-24 22:45:30', 1, 'learnpath', 0, '::1'),
(351, 1, '2016-11-24 22:45:51', 1, NULL, 0, '::1'),
(352, 1, '2016-11-24 22:45:55', 1, 'learnpath', 0, '::1'),
(353, 3, '2016-11-24 22:47:27', 1, 'learnpath', 0, '::1'),
(354, 3, '2016-11-24 22:47:38', 1, 'learnpath', 0, '::1'),
(355, 3, '2016-11-24 22:48:32', 1, NULL, 0, '::1'),
(356, 3, '2016-11-24 22:48:38', 1, 'learnpath', 0, '::1'),
(357, 3, '2016-11-24 22:49:39', 1, 'learnpath', 0, '::1'),
(358, 3, '2016-11-24 22:49:51', 1, 'learnpath', 0, '::1'),
(359, 3, '2016-11-24 22:50:00', 1, 'learnpath', 0, '::1'),
(360, 3, '2016-11-24 22:50:13', 1, 'learnpath', 0, '::1'),
(361, 3, '2016-11-24 22:50:24', 1, 'learnpath', 0, '::1'),
(362, 3, '2016-11-24 22:50:36', 1, 'learnpath', 0, '::1'),
(363, 3, '2016-11-24 22:54:21', 1, NULL, 0, '::1'),
(364, 3, '2016-11-24 22:54:26', 1, 'learnpath', 0, '::1'),
(365, 1, '2016-11-24 22:54:44', 1, NULL, 0, '::1'),
(366, 1, '2016-11-24 22:54:48', 1, 'learnpath', 0, '::1'),
(367, 3, '2016-11-24 22:55:15', 1, 'learnpath', 0, '::1'),
(368, 3, '2016-11-24 22:55:21', 1, 'learnpath', 0, '::1'),
(369, 3, '2016-11-24 22:55:57', 1, NULL, 0, '::1'),
(370, 3, '2016-11-24 22:56:04', 1, 'learnpath', 0, '::1'),
(371, 3, '2016-11-24 22:56:42', 1, NULL, 0, '::1'),
(372, 3, '2016-11-24 22:57:06', 1, NULL, 0, '::1'),
(373, 3, '2016-11-24 22:57:16', 1, 'learnpath', 0, '::1'),
(374, 3, '2016-11-24 22:59:12', 1, NULL, 0, '::1'),
(375, 3, '2016-11-24 22:59:17', 1, 'learnpath', 0, '::1'),
(376, 5, '2016-11-24 23:01:41', 1, NULL, 0, '::1'),
(377, 5, '2016-11-24 23:01:45', 1, 'learnpath', 0, '::1'),
(378, 5, '2016-11-24 23:09:26', 1, NULL, 0, '::1'),
(379, 5, '2016-11-24 23:10:15', 1, 'learnpath', 0, '::1'),
(380, 5, '2016-11-24 23:14:50', 1, NULL, 0, '::1'),
(381, 5, '2016-11-24 23:15:30', 1, 'learnpath', 0, '::1'),
(382, 5, '2016-11-24 23:18:19', 1, NULL, 0, '::1'),
(383, 5, '2016-11-24 23:18:31', 1, 'learnpath', 0, '::1'),
(384, 5, '2016-11-24 23:22:48', 1, NULL, 0, '::1'),
(385, 5, '2016-11-24 23:22:52', 1, 'learnpath', 0, '::1'),
(386, 5, '2016-11-24 23:25:28', 1, NULL, 0, '::1'),
(387, 5, '2016-11-24 23:25:35', 1, 'learnpath', 0, '::1'),
(388, 5, '2016-11-24 23:28:32', 1, NULL, 0, '::1'),
(389, 5, '2016-11-24 23:28:39', 1, 'learnpath', 0, '::1'),
(390, 5, '2016-11-24 23:32:54', 1, NULL, 0, '::1'),
(391, 5, '2016-11-24 23:32:59', 1, 'learnpath', 0, '::1'),
(392, 5, '2016-11-24 23:37:23', 1, NULL, 0, '::1'),
(393, 5, '2016-11-24 23:37:30', 1, 'learnpath', 0, '::1'),
(394, 5, '2016-11-24 23:41:43', 1, NULL, 0, '::1'),
(395, 5, '2016-11-24 23:41:48', 1, 'learnpath', 0, '::1'),
(396, 5, '2016-11-24 23:46:47', 1, NULL, 0, '::1'),
(397, 5, '2016-11-24 23:46:54', 1, 'learnpath', 0, '::1'),
(398, 5, '2016-11-24 23:51:49', 1, NULL, 0, '::1'),
(399, 5, '2016-11-24 23:51:56', 1, 'learnpath', 0, '::1'),
(400, 5, '2016-11-24 23:52:31', 1, NULL, 0, '::1'),
(401, 5, '2016-11-24 23:53:33', 1, NULL, 0, '::1'),
(402, 5, '2016-11-24 23:53:37', 1, 'learnpath', 0, '::1'),
(403, 5, '2016-11-24 23:53:44', 1, NULL, 0, '::1'),
(404, 5, '2016-11-24 23:54:07', 1, NULL, 0, '::1'),
(405, 5, '2016-11-24 23:54:12', 1, 'quiz', 0, '::1'),
(406, 5, '2016-11-24 23:54:15', 1, NULL, 0, '::1'),
(407, 5, '2016-11-24 23:55:31', 1, NULL, 0, '::1'),
(408, 5, '2016-11-24 23:55:36', 1, 'learnpath', 0, '::1'),
(409, 1, '2016-11-24 23:56:17', 1, NULL, 0, '::1'),
(410, 1, '2016-11-24 23:56:35', 1, NULL, 0, '::1'),
(411, 5, '2016-11-24 23:56:44', 1, 'learnpath', 0, '::1'),
(412, 5, '2016-11-24 23:56:55', 1, NULL, 0, '::1'),
(413, 5, '2016-11-24 23:57:00', 1, 'learnpath', 0, '::1'),
(414, 5, '2016-11-24 23:57:05', 1, NULL, 0, '::1'),
(415, 5, '2016-11-24 23:58:15', 1, NULL, 0, '::1'),
(416, 1, '2016-11-24 23:58:57', 1, NULL, 0, '::1'),
(417, 1, '2016-11-24 23:59:00', 1, 'learnpath', 0, '::1'),
(418, 5, '2016-11-25 00:00:19', 1, 'learnpath', 0, '::1'),
(419, 5, '2016-11-25 00:01:14', 1, 'learnpath', 0, '::1'),
(420, 5, '2016-11-25 00:01:17', 1, 'learnpath', 0, '::1'),
(421, 1, '2016-11-25 00:11:39', 1, NULL, 0, '::1'),
(422, 3, '2016-11-25 00:12:30', 1, NULL, 0, '::1'),
(423, 3, '2016-11-25 00:12:35', 1, 'learnpath', 0, '::1'),
(424, 1, '2016-11-25 00:12:47', 1, NULL, 0, '::1'),
(425, 1, '2016-11-25 00:12:56', 1, 'learnpath', 0, '::1'),
(426, 3, '2016-11-25 00:13:37', 1, 'learnpath', 0, '::1'),
(427, 3, '2016-11-25 00:13:43', 1, 'learnpath', 0, '::1'),
(428, 1, '2016-11-25 00:14:31', 1, NULL, 0, '::1'),
(429, 1, '2016-11-25 00:14:35', 1, 'learnpath', 0, '::1'),
(430, 3, '2016-11-25 00:15:26', 1, 'learnpath', 0, '::1'),
(431, 3, '2016-11-25 00:19:10', 1, NULL, 0, '::1'),
(432, 3, '2016-11-25 00:19:15', 1, 'learnpath', 0, '::1'),
(433, 3, '2016-11-25 00:20:08', 1, 'learnpath', 0, '::1'),
(434, 3, '2016-11-25 00:20:14', 1, 'learnpath', 0, '::1'),
(435, 3, '2016-11-25 00:21:30', 1, 'learnpath', 0, '::1'),
(436, 5, '2016-11-25 00:21:48', 1, NULL, 0, '::1'),
(437, 5, '2016-11-25 00:21:52', 1, 'student_publication', 0, '::1'),
(438, 5, '2016-11-25 00:21:57', 1, NULL, 0, '::1'),
(439, 5, '2016-11-25 00:22:00', 1, 'learnpath', 0, '::1'),
(440, 5, '2016-11-25 00:22:07', 1, NULL, 0, '::1'),
(441, 1, '2016-11-25 00:31:54', 1, NULL, 0, '::1'),
(442, 5, '2016-11-25 00:42:28', 1, NULL, 0, '::1'),
(443, 5, '2016-11-25 00:42:39', 1, NULL, 0, '::1'),
(444, 5, '2016-11-25 00:42:55', 1, 'course_description', 0, '::1'),
(445, 1, '2016-11-25 00:43:39', 1, NULL, 0, '::1'),
(446, 1, '2016-11-25 00:47:15', 1, NULL, 0, '::1'),
(447, 1, '2016-11-25 00:47:36', 1, 'course_description', 0, '::1'),
(448, 1, '2016-11-25 00:47:58', 1, NULL, 0, '::1'),
(449, 1, '2016-11-25 00:48:17', 1, 'announcement', 0, '::1'),
(450, 5, '2016-11-25 00:49:24', 1, NULL, 0, '::1'),
(451, 5, '2016-11-25 00:49:34', 1, 'announcement', 0, '::1'),
(452, 5, '2016-11-25 00:49:44', 1, NULL, 0, '::1'),
(453, 1, '2016-11-25 00:49:52', 1, NULL, 0, '::1'),
(454, 1, '2016-11-25 00:49:58', 1, 'glossary', 0, '::1'),
(455, 1, '2016-11-25 00:50:06', 1, NULL, 0, '::1'),
(456, 1, '2016-11-25 00:50:11', 1, 'course_progress', 0, '::1'),
(457, 5, '2016-11-25 00:51:14', 1, 'course_progress', 0, '::1'),
(458, 1, '2016-11-25 00:52:41', 1, NULL, 0, '::1'),
(459, 1, '2016-11-25 00:52:47', 1, 'attendance', 0, '::1'),
(460, 1, '2016-11-25 00:53:27', 1, NULL, 0, '::1'),
(461, 1, '2016-11-25 00:53:34', 1, 'dropbox', 0, '::1'),
(462, 5, '2016-11-25 00:54:01', 1, NULL, 0, '::1'),
(463, 5, '2016-11-25 00:54:13', 1, 'dropbox', 0, '::1'),
(464, 1, '2016-11-25 00:54:29', 1, NULL, 0, '::1'),
(465, 1, '2016-11-25 00:54:34', 1, 'user', 0, '::1'),
(466, 1, '2016-11-25 00:55:12', 1, NULL, 0, '::1'),
(467, 1, '2016-11-25 00:55:18', 1, 'chat', 0, '::1'),
(468, 5, '2016-11-25 00:55:55', 1, NULL, 0, '::1'),
(469, 5, '2016-11-25 00:56:08', 1, 'chat', 0, '::1'),
(470, 3, '2016-11-25 00:56:49', 1, NULL, 0, '::1'),
(471, 3, '2016-11-25 00:57:10', 1, 'wiki', 0, '::1'),
(472, 5, '2016-11-25 00:58:42', 1, 'wiki', 0, '::1'),
(473, 1, '2016-11-25 00:59:19', 1, 'survey', 0, '::1'),
(474, 5, '2016-11-25 01:04:18', 1, NULL, 0, '::1'),
(475, 5, '2016-11-25 01:04:26', 1, 'survey', 0, '::1'),
(476, 5, '2016-11-25 01:05:52', 1, 'survey', 0, '::1'),
(477, 3, '2016-11-25 01:06:08', 1, NULL, 0, '::1'),
(478, 3, '2016-11-25 01:06:12', 1, 'survey', 0, '::1'),
(479, 1, '2016-11-25 01:10:35', 1, NULL, 0, '::1'),
(480, 1, '2016-11-25 01:10:38', 1, NULL, 0, '::1'),
(481, 4, '2016-11-25 01:11:38', 1, NULL, 0, '::1'),
(482, 4, '2016-11-25 01:11:42', 1, 'learnpath', 0, '::1'),
(483, 5, '2016-11-25 01:11:56', 1, NULL, 0, '::1'),
(484, 5, '2016-11-25 01:11:59', 1, 'learnpath', 0, '::1'),
(485, 4, '2016-11-25 01:12:13', 1, NULL, 0, '::1'),
(486, 4, '2016-11-25 01:12:21', 1, 'survey', 0, '::1'),
(487, 1, '2016-11-25 01:14:15', 1, NULL, 0, '::1'),
(488, 5, '2016-11-25 01:15:49', 1, NULL, 0, '::1'),
(489, 5, '2016-11-25 01:15:59', 1, 'attendance', 0, '::1'),
(490, 5, '2016-11-25 01:16:08', 1, NULL, 0, '::1'),
(491, 1, '2016-11-25 01:17:51', 1, NULL, 0, '::1'),
(492, 1, '2016-11-25 01:18:44', 1, 'learnpath', 0, '::1'),
(493, 1, '2016-11-25 01:21:33', 1, NULL, 0, '::1'),
(494, 1, '2016-11-25 01:21:40', 1, NULL, 0, '::1'),
(495, 1, '2016-11-25 01:22:21', 1, NULL, 0, '::1'),
(496, 5, '2016-11-25 01:22:28', 1, NULL, 0, '::1'),
(497, 5, '2016-11-25 01:22:34', 1, NULL, 0, '::1'),
(498, 1, '2016-11-25 01:22:57', 1, NULL, 0, '::1'),
(499, 1, '2016-11-25 01:23:37', 1, NULL, 0, '::1'),
(500, 1, '2016-11-25 01:24:05', 1, NULL, 0, '::1'),
(501, 5, '2016-11-25 01:24:23', 1, NULL, 0, '::1'),
(502, 1, '2016-11-25 01:24:38', 1, NULL, 0, '::1'),
(503, 1, '2016-11-25 01:25:13', 1, NULL, 0, '::1'),
(504, 5, '2016-11-25 01:25:27', 1, 'learnpath', 0, '::1'),
(505, 5, '2016-11-25 01:27:24', 1, NULL, 0, '::1'),
(506, 1, '2016-11-25 01:27:24', 1, NULL, 0, '::1'),
(507, 1, '2016-11-25 01:32:37', 1, 'learnpath', 0, '::1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `track_e_attempt`
--

CREATE TABLE `track_e_attempt` (
  `id` int(11) NOT NULL,
  `exe_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` longtext COLLATE utf8_unicode_ci NOT NULL,
  `teacher_comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `marks` double NOT NULL,
  `c_id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `tms` datetime DEFAULT NULL,
  `session_id` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `track_e_attempt`
--

INSERT INTO `track_e_attempt` (`id`, `exe_id`, `user_id`, `question_id`, `answer`, `teacher_comment`, `marks`, `c_id`, `position`, `tms`, `session_id`, `filename`) VALUES
(1, 2, 3, 1, '4', '', 0, 1, 0, '2016-11-21 15:54:36', 0, NULL),
(2, 2, 3, 2, '5', '', 0, 1, 0, '2016-11-21 15:58:02', 0, NULL),
(3, 2, 3, 3, '9', '', 0, 1, 0, '2016-11-21 15:59:07', 0, NULL),
(4, 2, 3, 4, '13', '', 0, 1, 0, '2016-11-21 16:03:53', 0, NULL),
(5, 2, 3, 5, '17', '', 0, 1, 0, '2016-11-21 16:12:29', 0, NULL),
(6, 2, 3, 6, '22', '', 0, 1, 0, '2016-11-21 16:13:53', 0, NULL),
(7, 2, 3, 7, '26', '', 0, 1, 0, '2016-11-21 16:14:29', 0, NULL),
(8, 2, 3, 8, '30', '', 0, 1, 0, '2016-11-21 16:15:31', 0, NULL),
(9, 2, 3, 9, '34', '', 0, 1, 0, '2016-11-21 16:24:46', 0, NULL),
(10, 3, 3, 10, '38', '', 0, 1, 0, '2016-11-21 16:41:27', 0, NULL),
(11, 4, 3, 1, '1', '', 0, 1, 0, '2016-11-21 19:37:28', 0, NULL),
(12, 4, 3, 2, '5', '', 0, 1, 0, '2016-11-21 19:37:34', 0, NULL),
(13, 4, 3, 3, '9', '', 0, 1, 0, '2016-11-21 19:37:40', 0, NULL),
(14, 4, 3, 4, '13', '', 0, 1, 0, '2016-11-21 19:38:20', 0, NULL),
(15, 4, 3, 5, '17', '', 0, 1, 0, '2016-11-21 19:38:27', 0, NULL),
(16, 4, 3, 6, '22', '', 0, 1, 0, '2016-11-21 19:38:32', 0, NULL),
(17, 4, 3, 7, '26', '', 0, 1, 0, '2016-11-21 19:38:38', 0, NULL),
(18, 4, 3, 8, '0', '', 0, 1, 0, '2016-11-21 19:38:44', 0, NULL),
(19, 4, 3, 9, '34', '', 0, 1, 0, '2016-11-21 19:38:50', 0, NULL),
(20, 5, 3, 1, '1', '', 0, 1, 0, '2016-11-21 23:29:06', 0, NULL),
(21, 5, 3, 2, '5', '', 0, 1, 0, '2016-11-21 23:30:01', 0, NULL),
(22, 5, 3, 3, '9', '', 0, 1, 0, '2016-11-21 23:30:15', 0, NULL),
(23, 5, 3, 4, '13', '', 0, 1, 0, '2016-11-21 23:30:24', 0, NULL),
(24, 5, 3, 5, '17', '', 0, 1, 0, '2016-11-21 23:30:34', 0, NULL),
(25, 5, 3, 6, '22', '', 0, 1, 0, '2016-11-21 23:30:40', 0, NULL),
(26, 5, 3, 7, '26', '', 0, 1, 0, '2016-11-21 23:30:47', 0, NULL),
(27, 5, 3, 8, '30', '', 0, 1, 0, '2016-11-21 23:30:55', 0, NULL),
(28, 5, 3, 9, '34', '', 0, 1, 0, '2016-11-21 23:31:04', 0, NULL),
(29, 6, 3, 17, '66', '', 0, 1, 0, '2016-11-24 04:43:49', 0, NULL),
(30, 6, 3, 18, '70', '', 0, 1, 0, '2016-11-24 04:44:33', 0, NULL),
(31, 6, 3, 19, '74', '', 0, 1, 0, '2016-11-24 04:44:37', 0, NULL),
(32, 6, 3, 20, '78', '', 0, 1, 0, '2016-11-24 04:44:42', 0, NULL),
(33, 6, 3, 21, '82', '', 0, 1, 0, '2016-11-24 04:44:47', 0, NULL),
(34, 7, 3, 11, '42', '', 0, 1, 0, '2016-11-24 04:48:06', 0, NULL),
(35, 7, 3, 12, '46', '', 0, 1, 0, '2016-11-24 04:48:11', 0, NULL),
(36, 7, 3, 13, '50', '', 0, 1, 0, '2016-11-24 04:48:16', 0, NULL),
(37, 7, 3, 14, '54', '', 0, 1, 0, '2016-11-24 04:48:21', 0, NULL),
(38, 7, 3, 15, '58', '', 0, 1, 0, '2016-11-24 04:49:03', 0, NULL),
(39, 7, 3, 16, '62', '', 0, 1, 0, '2016-11-24 04:49:32', 0, NULL),
(40, 8, 3, 11, '42', '', 0, 1, 0, '2016-11-24 05:13:09', 0, NULL),
(41, 8, 3, 12, '46', '', 0, 1, 0, '2016-11-24 05:20:06', 0, NULL),
(42, 8, 3, 13, '50', '', 0, 1, 0, '2016-11-24 05:20:14', 0, NULL),
(43, 8, 3, 14, '54', '', 0, 1, 0, '2016-11-24 05:20:20', 0, NULL),
(44, 8, 3, 15, '58', '', 0, 1, 0, '2016-11-24 05:20:27', 0, NULL),
(45, 8, 3, 16, '62', '', 0, 1, 0, '2016-11-24 05:20:34', 0, NULL),
(46, 9, 3, 22, '86', '', 0, 1, 0, '2016-11-24 05:42:52', 0, NULL),
(47, 9, 3, 23, '90', '', 0, 1, 0, '2016-11-24 05:42:58', 0, NULL),
(48, 9, 3, 24, '94', '', 0, 1, 0, '2016-11-24 05:43:04', 0, NULL),
(49, 9, 3, 25, '98', '', 0, 1, 0, '2016-11-24 05:43:09', 0, NULL),
(50, 9, 3, 26, '102', '', 0, 1, 0, '2016-11-24 05:43:13', 0, NULL),
(51, 9, 3, 27, '106', '', 0, 1, 0, '2016-11-24 05:43:22', 0, NULL),
(52, 9, 3, 28, '110', '', 0, 1, 0, '2016-11-24 05:43:27', 0, NULL),
(53, 10, 3, 29, '114', '', 0, 1, 0, '2016-11-24 05:46:56', 0, NULL),
(54, 10, 3, 30, '118', '', 0, 1, 0, '2016-11-24 05:47:02', 0, NULL),
(55, 11, 3, 29, '114', '', 0, 1, 0, '2016-11-24 05:50:36', 0, NULL),
(56, 11, 3, 30, '118', '', 0, 1, 0, '2016-11-24 05:50:41', 0, NULL),
(57, 12, 3, 22, '86', '', 0, 1, 0, '2016-11-24 05:54:01', 0, NULL),
(58, 12, 3, 23, '90', '', 0, 1, 0, '2016-11-24 05:54:06', 0, NULL),
(59, 12, 3, 24, '94', '', 0, 1, 0, '2016-11-24 05:54:11', 0, NULL),
(60, 12, 3, 25, '98', '', 0, 1, 0, '2016-11-24 05:54:17', 0, NULL),
(61, 12, 3, 26, '102', '', 0, 1, 0, '2016-11-24 05:54:22', 0, NULL),
(62, 12, 3, 27, '106', '', 0, 1, 0, '2016-11-24 05:54:28', 0, NULL),
(63, 12, 3, 28, '110', '', 0, 1, 0, '2016-11-24 05:54:34', 0, NULL),
(64, 13, 3, 29, '114', '', 0, 1, 0, '2016-11-24 06:02:41', 0, NULL),
(65, 13, 3, 30, '118', '', 0, 1, 0, '2016-11-24 06:02:45', 0, NULL),
(66, 14, 3, 22, '86', '', 0, 1, 0, '2016-11-24 06:14:35', 0, NULL),
(67, 14, 3, 23, '90', '', 0, 1, 0, '2016-11-24 06:14:39', 0, NULL),
(68, 14, 3, 24, '94', '', 0, 1, 0, '2016-11-24 06:14:43', 0, NULL),
(69, 14, 3, 25, '98', '', 0, 1, 0, '2016-11-24 06:14:49', 0, NULL),
(70, 14, 3, 26, '102', '', 0, 1, 0, '2016-11-24 06:14:54', 0, NULL),
(71, 14, 3, 27, '106', '', 0, 1, 0, '2016-11-24 06:14:58', 0, NULL),
(72, 14, 3, 28, '110', '', 0, 1, 0, '2016-11-24 06:15:04', 0, NULL),
(73, 15, 3, 17, '66', '', 0, 1, 0, '2016-11-24 06:17:55', 0, NULL),
(74, 15, 3, 18, '70', '', 0, 1, 0, '2016-11-24 06:18:01', 0, NULL),
(75, 15, 3, 19, '74', '', 0, 1, 0, '2016-11-24 06:18:06', 0, NULL),
(76, 15, 3, 20, '78', '', 0, 1, 0, '2016-11-24 06:18:11', 0, NULL),
(77, 15, 3, 21, '82', '', 0, 1, 0, '2016-11-24 06:18:16', 0, NULL),
(78, 16, 5, 1, '1', '', 0, 1, 0, '2016-11-24 23:07:25', 0, NULL),
(79, 16, 5, 2, '5', '', 0, 1, 0, '2016-11-24 23:07:31', 0, NULL),
(80, 16, 5, 3, '9', '', 0, 1, 0, '2016-11-24 23:07:36', 0, NULL),
(81, 16, 5, 4, '13', '', 0, 1, 0, '2016-11-24 23:07:40', 0, NULL),
(82, 16, 5, 5, '17', '', 0, 1, 0, '2016-11-24 23:07:45', 0, NULL),
(83, 16, 5, 6, '22', '', 0, 1, 0, '2016-11-24 23:07:52', 0, NULL),
(84, 16, 5, 7, '26', '', 0, 1, 0, '2016-11-24 23:07:57', 0, NULL),
(85, 16, 5, 8, '30', '', 0, 1, 0, '2016-11-24 23:08:01', 0, NULL),
(86, 16, 5, 9, '34', '', 0, 1, 0, '2016-11-24 23:08:06', 0, NULL),
(87, 17, 5, 11, '42', '', 0, 1, 0, '2016-11-24 23:11:42', 0, NULL),
(88, 17, 5, 12, '46', '', 0, 1, 0, '2016-11-24 23:11:50', 0, NULL),
(89, 17, 5, 13, '50', '', 0, 1, 0, '2016-11-24 23:12:39', 0, NULL),
(90, 17, 5, 14, '54', '', 0, 1, 0, '2016-11-24 23:12:45', 0, NULL),
(91, 17, 5, 15, '58', '', 0, 1, 0, '2016-11-24 23:12:51', 0, NULL),
(92, 17, 5, 16, '62', '', 0, 1, 0, '2016-11-24 23:12:58', 0, NULL),
(93, 18, 5, 17, '66', '', 0, 1, 0, '2016-11-24 23:16:31', 0, NULL),
(94, 18, 5, 18, '70', '', 0, 1, 0, '2016-11-24 23:16:36', 0, NULL),
(96, 18, 5, 19, '74', '', 0, 1, 0, '2016-11-24 23:17:22', 0, NULL),
(97, 18, 5, 20, '78', '', 0, 1, 0, '2016-11-24 23:17:26', 0, NULL),
(98, 18, 5, 21, '82', '', 0, 1, 0, '2016-11-24 23:17:36', 0, NULL),
(99, 19, 5, 22, '86', '', 0, 1, 0, '2016-11-24 23:24:19', 0, NULL),
(100, 19, 5, 23, '90', '', 0, 1, 0, '2016-11-24 23:24:24', 0, NULL),
(101, 19, 5, 24, '94', '', 0, 1, 0, '2016-11-24 23:24:28', 0, NULL),
(102, 19, 5, 25, '98', '', 0, 1, 0, '2016-11-24 23:24:35', 0, NULL),
(103, 19, 5, 26, '102', '', 0, 1, 0, '2016-11-24 23:24:42', 0, NULL),
(104, 19, 5, 27, '106', '', 0, 1, 0, '2016-11-24 23:24:47', 0, NULL),
(105, 19, 5, 28, '110', '', 0, 1, 0, '2016-11-24 23:24:54', 0, NULL),
(106, 20, 5, 29, '114', '', 0, 1, 0, '2016-11-24 23:27:28', 0, NULL),
(107, 20, 5, 30, '118', '', 0, 1, 0, '2016-11-24 23:27:33', 0, NULL),
(108, 21, 5, 29, '114', '', 0, 1, 0, '2016-11-24 23:31:27', 0, NULL),
(109, 21, 5, 30, '118', '', 0, 1, 0, '2016-11-24 23:31:32', 0, NULL),
(110, 22, 5, 22, '86', '', 0, 1, 0, '2016-11-24 23:34:52', 0, NULL),
(111, 22, 5, 23, '90', '', 0, 1, 0, '2016-11-24 23:35:00', 0, NULL),
(112, 22, 5, 24, '94', '', 0, 1, 0, '2016-11-24 23:35:04', 0, NULL),
(113, 22, 5, 25, '98', '', 0, 1, 0, '2016-11-24 23:35:09', 0, NULL),
(114, 22, 5, 26, '102', '', 0, 1, 0, '2016-11-24 23:35:15', 0, NULL),
(115, 22, 5, 27, '106', '', 0, 1, 0, '2016-11-24 23:35:29', 0, NULL),
(116, 22, 5, 28, '110', '', 0, 1, 0, '2016-11-24 23:35:34', 0, NULL),
(117, 23, 5, 29, '114', '', 0, 1, 0, '2016-11-24 23:40:52', 0, NULL),
(118, 23, 5, 30, '118', '', 0, 1, 0, '2016-11-24 23:40:57', 0, NULL),
(119, 24, 5, 22, '86', '', 0, 1, 0, '2016-11-24 23:45:26', 0, NULL),
(120, 24, 5, 23, '90', '', 0, 1, 0, '2016-11-24 23:45:29', 0, NULL),
(121, 24, 5, 24, '94', '', 0, 1, 0, '2016-11-24 23:45:35', 0, NULL),
(122, 24, 5, 25, '98', '', 0, 1, 0, '2016-11-24 23:45:39', 0, NULL),
(123, 24, 5, 26, '102', '', 0, 1, 0, '2016-11-24 23:45:43', 0, NULL),
(124, 24, 5, 27, '106', '', 0, 1, 0, '2016-11-24 23:45:48', 0, NULL),
(125, 24, 5, 28, '110', '', 0, 1, 0, '2016-11-24 23:46:03', 0, NULL),
(126, 25, 5, 17, '66', '', 0, 1, 0, '2016-11-24 23:48:55', 0, NULL),
(127, 25, 5, 18, '70', '', 0, 1, 0, '2016-11-24 23:49:00', 0, NULL),
(128, 25, 5, 19, '74', '', 0, 1, 0, '2016-11-24 23:49:06', 0, NULL),
(129, 25, 5, 20, '78', '', 0, 1, 0, '2016-11-24 23:49:13', 0, NULL),
(130, 25, 5, 21, '82', '', 0, 1, 0, '2016-11-24 23:49:42', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `track_e_attempt_coeff`
--

CREATE TABLE `track_e_attempt_coeff` (
  `id` int(11) NOT NULL,
  `attempt_id` int(11) NOT NULL,
  `marks_coeff` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `track_e_attempt_recording`
--

CREATE TABLE `track_e_attempt_recording` (
  `id` int(11) NOT NULL,
  `exe_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `marks` int(11) NOT NULL,
  `insert_date` datetime NOT NULL,
  `author` int(11) NOT NULL,
  `teacher_comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `track_e_course_access`
--

CREATE TABLE `track_e_course_access` (
  `course_access_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `login_course_date` datetime NOT NULL,
  `logout_course_date` datetime DEFAULT NULL,
  `counter` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `user_ip` varchar(39) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `track_e_course_access`
--

INSERT INTO `track_e_course_access` (`course_access_id`, `c_id`, `user_id`, `login_course_date`, `logout_course_date`, `counter`, `session_id`, `user_ip`) VALUES
(1, 1, 1, '2016-11-11 15:43:22', '2016-11-11 16:29:56', 173, 0, '::1'),
(2, 1, 2, '2016-11-11 16:14:55', '2016-11-11 16:14:55', 1, 0, '::1'),
(3, 1, 1, '2016-11-11 16:30:01', '2016-11-11 16:40:47', 93, 0, '::1'),
(4, 1, 3, '2016-11-11 16:42:51', '2016-11-11 16:44:24', 58, 0, '::1'),
(5, 1, 3, '2016-11-11 16:44:45', '2016-11-11 16:45:21', 5, 0, '::1'),
(6, 1, 1, '2016-11-11 16:46:13', '2016-11-11 17:11:59', 48, 0, '::1'),
(7, 1, 3, '2016-11-11 16:48:03', '2016-11-11 17:14:08', 65, 0, '::1'),
(8, 1, 1, '2016-11-11 17:12:04', '2016-11-11 17:16:35', 18, 0, '::1'),
(9, 1, 3, '2016-11-11 17:14:12', '2016-11-11 17:31:21', 2, 0, '::1'),
(10, 1, 1, '2016-11-11 17:16:41', '2016-11-11 17:30:26', 56, 0, '::1'),
(11, 1, 1, '2016-11-11 17:30:29', '2016-11-11 17:40:42', 77, 0, '::1'),
(12, 1, 3, '2016-11-11 17:31:44', '2016-11-11 17:55:38', 43, 0, '::1'),
(13, 1, 1, '2016-11-11 17:40:44', '2016-11-11 17:51:56', 22, 0, '::1'),
(14, 1, 1, '2016-11-11 17:52:12', '2016-11-11 17:53:18', 10, 0, '::1'),
(15, 1, 1, '2016-11-11 17:53:38', '2016-11-11 17:55:20', 3, 0, '::1'),
(16, 1, 1, '2016-11-11 17:55:20', '2016-11-11 17:55:29', 4, 0, '::1'),
(17, 1, 3, '2016-11-11 17:55:50', '2016-11-11 17:56:02', 5, 0, '::1'),
(18, 1, 1, '2016-11-11 17:56:04', '2016-11-11 17:56:48', 8, 0, '::1'),
(19, 1, 1, '2016-11-17 22:42:47', '2016-11-17 22:49:38', 39, 0, '::1'),
(20, 1, 1, '2016-11-17 22:50:33', '2016-11-17 22:50:59', 10, 0, '::1'),
(21, 1, 1, '2016-11-18 01:03:23', '2016-11-18 01:15:35', 133, 0, '::1'),
(22, 1, 1, '2016-11-18 01:15:45', '2016-11-18 01:18:25', 22, 0, '::1'),
(23, 1, 1, '2016-11-18 01:18:32', '2016-11-18 01:20:53', 19, 0, '::1'),
(24, 1, 1, '2016-11-18 01:21:13', '2016-11-18 01:24:06', 12, 0, '::1'),
(25, 1, 1, '2016-11-18 01:24:31', '2016-11-18 01:26:53', 10, 0, '::1'),
(26, 1, 2, '2016-11-21 14:21:48', '2016-11-21 14:21:48', 1, 0, '::1'),
(27, 1, 1, '2016-11-21 14:22:03', '2016-11-21 14:23:39', 4, 0, '::1'),
(28, 1, 2, '2016-11-21 14:23:17', '2016-11-21 14:23:30', 3, 0, '::1'),
(29, 1, 2, '2016-11-21 14:24:52', '2016-11-21 14:24:58', 2, 0, '::1'),
(30, 1, 1, '2016-11-21 14:25:30', '2016-11-21 14:45:32', 116, 0, '::1'),
(31, 1, 3, '2016-11-21 14:26:57', '2016-11-21 14:39:49', 15, 0, '::1'),
(32, 1, 3, '2016-11-21 14:39:58', '2016-11-21 14:41:33', 11, 0, '::1'),
(33, 1, 3, '2016-11-21 14:41:36', '2016-11-21 15:18:26', 25, 0, '::1'),
(34, 1, 1, '2016-11-21 14:45:39', '2016-11-21 15:27:54', 176, 0, '::1'),
(35, 1, 3, '2016-11-21 15:22:31', '2016-11-21 15:22:46', 10, 0, '::1'),
(36, 1, 3, '2016-11-21 15:24:21', '2016-11-21 15:25:17', 27, 0, '::1'),
(37, 1, 1, '2016-11-21 15:28:09', '2016-11-21 15:30:06', 23, 0, '::1'),
(38, 1, 3, '2016-11-21 15:30:17', '2016-11-21 15:30:53', 12, 0, '::1'),
(39, 1, 1, '2016-11-21 15:41:33', '2016-11-21 15:43:30', 17, 0, '::1'),
(40, 1, 3, '2016-11-21 15:44:00', '2016-11-21 16:10:16', 101, 0, '::1'),
(41, 1, 3, '2016-11-21 16:10:36', '2016-11-21 16:48:09', 108, 0, '127.0.0.1'),
(42, 1, 2, '2016-11-21 16:48:03', '2016-11-21 16:48:03', 1, 0, '::1'),
(43, 1, 3, '2016-11-21 16:48:14', '2016-11-21 16:50:35', 44, 0, '::1'),
(44, 1, 3, '2016-11-21 16:51:51', '2016-11-21 16:53:06', 30, 0, '127.0.0.1'),
(45, 1, 1, '2016-11-21 16:54:21', '2016-11-21 16:55:06', 8, 0, '::1'),
(46, 1, 3, '2016-11-21 16:55:17', '2016-11-21 16:59:34', 36, 0, '127.0.0.1'),
(47, 1, 1, '2016-11-21 16:57:29', '2016-11-21 16:59:10', 20, 0, '::1'),
(48, 1, 2, '2016-11-21 16:59:27', '2016-11-21 16:59:27', 1, 0, '127.0.0.1'),
(49, 1, 3, '2016-11-21 16:59:37', '2016-11-21 17:16:39', 58, 0, '127.0.0.1'),
(50, 1, 1, '2016-11-21 17:17:18', '2016-11-21 17:17:36', 11, 0, '::1'),
(51, 1, 1, '2016-11-21 17:18:23', '2016-11-21 17:51:07', 158, 0, '::1'),
(52, 1, 3, '2016-11-21 17:44:16', '2016-11-21 17:44:22', 2, 0, '::1'),
(53, 1, 2, '2016-11-21 17:44:43', '2016-11-21 17:44:43', 1, 0, '::1'),
(54, 1, 3, '2016-11-21 17:45:14', '2016-11-21 17:50:50', 166, 0, '::1'),
(55, 1, 2, '2016-11-21 17:51:02', '2016-11-21 17:51:02', 1, 0, '::1'),
(56, 1, 1, '2016-11-21 17:53:21', '2016-11-21 18:00:07', 25, 0, '::1'),
(57, 1, 1, '2016-11-21 19:02:54', '2016-11-21 19:35:01', 264, 0, '::1'),
(58, 1, 3, '2016-11-21 19:36:09', '2016-11-21 19:39:34', 64, 0, '::1'),
(59, 1, 3, '2016-11-21 23:23:58', '2016-11-21 23:24:10', 2, 0, '::1'),
(60, 1, 3, '2016-11-21 23:26:45', '2016-11-21 23:36:26', 53, 0, '::1'),
(61, 1, 1, '2016-11-21 23:37:44', '2016-11-21 23:42:58', 34, 0, '::1'),
(62, 1, 3, '2016-11-21 23:43:10', '2016-11-21 23:49:08', 38, 0, '::1'),
(63, 1, 1, '2016-11-22 01:00:21', '2016-11-22 01:00:21', 1, 0, '::1'),
(64, 1, 1, '2016-11-22 23:46:44', '2016-11-22 23:47:01', 2, 0, '::1'),
(65, 1, 2, '2016-11-23 03:48:44', '2016-11-23 03:48:44', 1, 0, '::1'),
(66, 1, 1, '2016-11-23 03:48:56', '2016-11-23 03:49:07', 2, 0, '::1'),
(67, 1, 1, '2016-11-23 03:56:15', '2016-11-23 04:16:27', 6, 0, '127.0.0.1'),
(68, 1, 1, '2016-11-23 04:19:24', '2016-11-23 04:20:46', 7, 0, '::1'),
(69, 1, 3, '2016-11-23 04:20:08', '2016-11-23 04:27:57', 8, 0, '::1'),
(70, 1, 1, '2016-11-23 04:20:55', '2016-11-23 04:24:17', 4, 0, '::1'),
(71, 1, 1, '2016-11-23 04:25:44', '2016-11-23 04:27:29', 6, 0, '::1'),
(72, 1, 1, '2016-11-23 04:27:38', '2016-11-23 04:28:37', 2, 0, '::1'),
(73, 1, 1, '2016-11-23 04:28:48', '2016-11-23 04:32:59', 2, 0, '::1'),
(74, 1, 4, '2016-11-23 04:35:29', '2016-11-23 04:36:39', 9, 0, '::1'),
(75, 1, 1, '2016-11-23 04:40:39', '2016-11-23 04:48:09', 14, 0, '::1'),
(76, 1, 1, '2016-11-23 04:52:49', '2016-11-23 04:52:59', 4, 0, '::1'),
(77, 1, 1, '2016-11-23 04:53:39', '2016-11-23 04:55:11', 4, 0, '::1'),
(78, 1, 1, '2016-11-23 04:56:07', '2016-11-23 04:56:20', 3, 0, '::1'),
(79, 1, 1, '2016-11-23 04:56:42', '2016-11-23 04:56:42', 1, 0, '::1'),
(80, 1, 1, '2016-11-24 03:56:12', '2016-11-24 04:22:34', 177, 0, '::1'),
(81, 1, 1, '2016-11-24 04:25:26', '2016-11-24 05:04:32', 257, 0, '::1'),
(82, 1, 3, '2016-11-24 04:42:43', '2016-11-24 04:46:23', 80, 0, '::1'),
(83, 1, 3, '2016-11-24 04:46:27', '2016-11-24 04:47:10', 13, 0, '::1'),
(84, 1, 3, '2016-11-24 04:47:15', '2016-11-24 05:47:14', 330, 0, '::1'),
(85, 1, 1, '2016-11-24 05:04:37', '2016-11-24 05:14:07', 29, 0, '::1'),
(86, 1, 1, '2016-11-24 05:14:16', '2016-11-24 05:15:07', 3, 0, '::1'),
(87, 1, 1, '2016-11-24 05:15:07', '2016-11-24 05:15:55', 6, 0, '::1'),
(88, 1, 1, '2016-11-24 05:16:02', '2016-11-24 05:17:44', 6, 0, '::1'),
(89, 1, 3, '2016-11-24 05:47:16', '2016-11-24 06:03:40', 330, 0, '::1'),
(90, 1, 1, '2016-11-24 05:57:38', '2016-11-24 06:12:09', 83, 0, '::1'),
(91, 1, 3, '2016-11-24 06:13:02', '2016-11-24 06:13:27', 4, 0, '::1'),
(92, 1, 3, '2016-11-24 06:13:29', '2016-11-24 06:22:23', 201, 0, '::1'),
(93, 1, 3, '2016-11-24 06:23:05', '2016-11-24 06:23:14', 2, 0, '::1'),
(94, 1, 1, '2016-11-24 13:22:09', '2016-11-24 13:44:50', 8, 0, '::1'),
(95, 1, 1, '2016-11-24 13:56:47', '2016-11-24 14:05:00', 14, 0, '::1'),
(96, 1, 1, '2016-11-24 14:18:58', '2016-11-24 14:51:39', 28, 0, '::1'),
(97, 1, 1, '2016-11-24 15:48:23', '2016-11-24 16:38:56', 2, 0, '::1'),
(98, 1, 1, '2016-11-24 16:39:06', '2016-11-24 16:58:21', 47, 0, '::1'),
(99, 1, 1, '2016-11-24 16:58:35', '2016-11-24 17:56:21', 93, 0, '::1'),
(100, 1, 1, '2016-11-24 17:58:40', '2016-11-24 18:00:17', 9, 0, '::1'),
(101, 1, 1, '2016-11-24 18:30:46', '2016-11-24 18:36:15', 23, 0, '::1'),
(102, 1, 3, '2016-11-24 20:57:59', '2016-11-24 21:00:14', 4, 0, '::1'),
(103, 1, 1, '2016-11-24 21:01:33', '2016-11-24 22:01:14', 73, 0, '::1'),
(104, 1, 3, '2016-11-24 21:05:15', '2016-11-24 22:01:23', 37, 0, '::1'),
(105, 1, 1, '2016-11-24 22:02:04', '2016-11-24 22:25:03', 117, 0, '::1'),
(106, 1, 3, '2016-11-24 22:05:34', '2016-11-24 22:13:16', 8, 0, '::1'),
(107, 1, 1, '2016-11-24 22:25:49', '2016-11-24 22:53:56', 82, 0, '::1'),
(108, 1, 3, '2016-11-24 22:27:50', '2016-11-24 22:28:04', 11, 0, '::1'),
(109, 1, 3, '2016-11-24 22:29:06', '2016-11-24 22:44:41', 29, 0, '::1'),
(110, 1, 3, '2016-11-24 22:44:44', '2016-11-24 22:56:40', 139, 0, '::1'),
(111, 1, 1, '2016-11-24 22:54:43', '2016-11-24 23:54:32', 34, 0, '::1'),
(112, 1, 3, '2016-11-24 22:56:42', '2016-11-24 22:57:02', 4, 0, '::1'),
(113, 1, 3, '2016-11-24 22:57:06', '2016-11-24 22:59:17', 16, 0, '::1'),
(114, 1, 5, '2016-11-24 23:01:40', '2016-11-24 23:52:43', 1047, 0, '::1'),
(115, 1, 5, '2016-11-24 23:53:32', '2016-11-24 23:53:56', 6, 0, '::1'),
(116, 1, 5, '2016-11-24 23:54:07', '2016-11-24 23:54:42', 6, 0, '::1'),
(117, 1, 1, '2016-11-24 23:54:48', '2016-11-25 00:02:35', 42, 0, '::1'),
(118, 1, 5, '2016-11-24 23:55:31', '2016-11-25 00:01:16', 21, 0, '::1'),
(119, 1, 1, '2016-11-25 00:11:39', '2016-11-25 00:11:46', 2, 0, '::1'),
(120, 1, 1, '2016-11-25 00:11:50', '2016-11-25 00:12:14', 3, 0, '::1'),
(121, 1, 1, '2016-11-25 00:12:14', '2016-11-25 00:12:28', 4, 0, '::1'),
(122, 1, 1, '2016-11-25 00:12:28', '2016-11-25 00:43:48', 74, 0, '::1'),
(123, 1, 3, '2016-11-25 00:12:29', '2016-11-25 00:21:30', 40, 0, '::1'),
(124, 1, 5, '2016-11-25 00:21:47', '2016-11-25 00:42:24', 16, 0, '::1'),
(125, 1, 5, '2016-11-25 00:42:28', '2016-11-25 00:47:05', 4, 0, '::1'),
(126, 1, 1, '2016-11-25 00:47:15', '2016-11-25 01:08:08', 1072, 0, '::1'),
(127, 1, 5, '2016-11-25 00:49:23', '2016-11-25 01:33:05', 63, 0, '::1'),
(128, 1, 3, '2016-11-25 00:56:48', '2016-11-25 01:06:29', 16, 0, '::1'),
(129, 1, 3, '2016-11-25 01:06:29', '2016-11-25 01:06:33', 2, 0, '::1'),
(130, 1, 3, '2016-11-25 01:06:33', '2016-11-25 01:06:33', 1, 0, '::1'),
(131, 1, 1, '2016-11-25 01:08:10', '2016-11-25 01:08:34', 31, 0, '::1'),
(132, 1, 1, '2016-11-25 01:10:35', '2016-11-25 01:10:41', 3, 0, '::1'),
(133, 1, 4, '2016-11-25 01:11:38', '2016-11-25 01:13:02', 14, 0, '::1'),
(134, 1, 1, '2016-11-25 01:14:15', '2016-11-25 01:22:21', 24, 0, '::1'),
(135, 1, 1, '2016-11-25 01:22:56', '2016-11-25 01:32:37', 10, 0, '::1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `track_e_default`
--

CREATE TABLE `track_e_default` (
  `default_id` int(11) NOT NULL,
  `default_user_id` int(11) NOT NULL,
  `c_id` int(11) DEFAULT NULL,
  `default_date` datetime DEFAULT NULL,
  `default_event_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `default_value_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `default_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `session_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `track_e_default`
--

INSERT INTO `track_e_default` (`default_id`, `default_user_id`, `c_id`, `default_date`, `default_event_type`, `default_value_type`, `default_value`, `session_id`) VALUES
(1, 0, 0, '2016-11-11 14:23:26', 'user_created', 'user_id', '1', 0),
(2, 0, 0, '2016-11-11 14:23:27', 'user_created', 'user_id', '2', 0),
(3, 1, 0, '2016-11-11 15:17:34', 'settings_changed', 'settings_category', 'Platform', 0),
(4, 1, 0, '2016-11-11 15:17:35', 'settings_changed', 'settings_variable', 'allow_registration_as_teacher', 0),
(5, 1, 0, '2016-11-11 15:17:35', 'settings_changed', 'settings_variable', 'show_tabs', 0),
(6, 1, 0, '2016-11-11 15:19:02', 'settings_changed', 'settings_category', 'Plugins', 0),
(7, 1, 0, '2016-11-11 15:22:32', 'settings_changed', 'settings_category', 'User', 0),
(8, 1, 0, '2016-11-11 15:22:32', 'settings_changed', 'settings_variable', 'enable_profile_user_address_geolocalization', 0),
(9, 1, 0, '2016-11-11 15:24:49', 'settings_changed', 'settings_category', 'Tools', 0),
(10, 1, 0, '2016-11-11 15:24:49', 'settings_changed', 'settings_variable', 'course_create_active_tools', 0),
(11, 1, 0, '2016-11-11 15:24:49', 'settings_changed', 'settings_variable', 'dropbox_max_filesize', 0),
(12, 1, 0, '2016-11-11 15:26:01', 'settings_changed', 'settings_category', 'Editor', 0),
(13, 1, 0, '2016-11-11 15:26:01', 'settings_changed', 'settings_variable', 'allow_spellcheck', 0),
(14, 1, 0, '2016-11-11 15:27:15', 'settings_changed', 'settings_category', 'Gradebook', 0),
(15, 1, 0, '2016-11-11 15:27:15', 'settings_changed', 'settings_variable', 'gradebook_default_grade_model_id', 0),
(16, 1, 0, '2016-11-11 15:41:08', 'settings_changed', 'settings_category', 'Crons', 0),
(17, 1, 0, '2016-11-11 15:41:08', 'settings_changed', 'settings_variable', 'cron_remind_course_finished_activate', 0),
(18, 1, 1, '2016-11-11 15:43:19', 'course_created', 'course_code', 'TI', 0),
(19, 0, 0, '2016-11-11 16:42:32', 'user_created', 'user_id', '3', 0),
(20, 1, 0, '2016-11-23 04:17:44', 'settings_changed', 'settings_category', 'Regions', 0),
(21, 1, 0, '2016-11-23 04:34:50', 'user_created', 'user_id', '4', 0),
(22, 1, 0, '2016-11-23 04:40:32', 'settings_changed', 'settings_category', 'Regions', 0),
(23, 1, 0, '2016-11-23 04:56:36', 'settings_changed', 'settings_category', 'Regions', 0),
(24, 0, 0, '2016-11-24 23:01:18', 'user_created', 'user_id', '5', 0),
(25, 5, 1, '2016-11-24 23:17:22', 'qst_attempt_deleted', 'exercise_a_q_id', '18-19', 0),
(26, 3, 1, '2016-11-25 00:58:36', 'wiki_page_view', 'wiki_page_id', '1', 0),
(27, 5, 1, '2016-11-25 00:58:42', 'wiki_page_view', 'wiki_page_id', '1', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `track_e_downloads`
--

CREATE TABLE `track_e_downloads` (
  `down_id` int(11) NOT NULL,
  `down_user_id` int(11) DEFAULT NULL,
  `down_date` datetime NOT NULL,
  `c_id` int(11) NOT NULL,
  `down_doc_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `down_session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `track_e_downloads`
--

INSERT INTO `track_e_downloads` (`down_id`, `down_user_id`, `down_date`, `c_id`, `down_doc_path`, `down_session_id`) VALUES
(1, 1, '2016-11-11 16:25:43', 1, '/learning_path/Leccion-1/Video-1-Elaboracion-de-textos.html', 0),
(2, 1, '2016-11-11 16:29:40', 1, '/learning_path/Leccion-1/Actividad-1-Elaboracion-de-documentos.html', 0),
(3, 1, '2016-11-11 16:31:15', 1, '/learning_path/Leccion-1/Video-4-Elaboracion-de-documentos-Redaccion-de-citas-y-bibliografia.html', 0),
(4, 1, '2016-11-11 16:34:33', 1, '/bxxmi0mgv.pdf', 0),
(5, 1, '2016-11-11 16:35:38', 1, '/bxxmi0mgv.pdf', 0),
(6, 3, '2016-11-11 16:43:06', 1, '/learning_path/Leccion-1/Video-1-Elaboracion-de-textos.html', 0),
(7, 3, '2016-11-11 16:43:21', 1, '/learning_path/Leccion-1/Video-2-Correccion-ortografica-de-textos.html', 0),
(8, 3, '2016-11-11 16:43:30', 1, '/learning_path/Leccion-1/Video-3-Elaboracion-de-documentos-Curriculum.html', 0),
(9, 3, '2016-11-11 16:43:42', 1, '/learning_path/Leccion-1/Video-4-Elaboracion-de-documentos-Redaccion-de-citas-y-bibliografia.html', 0),
(10, 3, '2016-11-11 16:43:50', 1, '/bxxmi0mgv.pdf', 0),
(11, 3, '2016-11-11 16:44:14', 1, '/learning_path/Leccion-1/Video-4-Elaboracion-de-documentos-Redaccion-de-citas-y-bibliografia.html', 0),
(12, 3, '2016-11-11 17:08:55', 1, '/learning_path/Leccion-1-1/Video-1-Nivel-2.html', 0),
(13, 1, '2016-11-11 17:11:27', 1, '/mi3dPDPReBQ.mp4', 0),
(14, 3, '2016-11-11 17:13:05', 1, '/mi3dPDPReBQ.mp4', 0),
(15, 1, '2016-11-17 22:43:21', 1, '/learning_path/Leccion-1/Video-1-Elaboracion-de-textos.html', 0),
(16, 1, '2016-11-17 22:43:55', 1, '/bxxmi0mgv.pdf', 0),
(17, 1, '2016-11-17 22:46:49', 1, '/mi3dPDPReBQ.mp4', 0),
(18, 1, '2016-11-17 22:50:56', 1, '/learning_path/Leccion-2/Video-1-Elaboracion-de-presentaciones.html', 0),
(19, 1, '2016-11-18 01:22:40', 1, '/bxxmi0mgv.pdf', 0),
(20, 1, '2016-11-18 01:26:09', 1, '/mi3dPDPReBQ.mp4', 0),
(21, 3, '2016-11-21 14:37:30', 1, '/learning_path/Leccion-1/Video-4-Elaboracion-de-documentos-Redaccion-de-citas-y-bibliografia.html', 0),
(22, 1, '2016-11-21 14:39:18', 1, '/learning_path/Leccion-4/Video-1-Que-son-los-lenguajes-de-programacion.html', 0),
(23, 3, '2016-11-21 14:40:18', 1, '/learning_path/Leccion-3/Video-1-Publicacion-en-redes-sociales.html', 0),
(24, 1, '2016-11-21 15:13:49', 1, '/learning_path/Leccion-3/Video-1-Publicacion-en-redes-sociales.html', 0),
(25, 3, '2016-11-21 15:15:37', 1, '/learning_path/Leccion-2/Video-1-Elaboracion-de-presentaciones.html', 0),
(26, 1, '2016-11-21 15:17:39', 1, '/learning_path/Leccion-2-1/Video-1-Conceptos-de-audio-digital.html', 0),
(27, 3, '2016-11-21 15:22:43', 1, '/learning_path/Leccion-2/Video-1-Elaboracion-de-presentaciones.html', 0),
(28, 3, '2016-11-21 15:24:45', 1, '/learning_path/Leccion-1/Video-4-Elaboracion-de-documentos-Redaccion-de-citas-y-bibliografia.html', 0),
(29, 3, '2016-11-21 15:25:14', 1, '/bxxmi0mgv.pdf', 0),
(30, 3, '2016-11-21 15:25:15', 1, '/bxxmi0mgv.pdf', 0),
(31, 1, '2016-11-21 15:25:29', 1, '/bxxmi0mgv.pdf', 0),
(32, 1, '2016-11-21 15:26:09', 1, '/learning_path/Leccion-3/Video-1-Publicacion-en-redes-sociales.html', 0),
(33, 3, '2016-11-21 15:30:50', 1, '/learning_path/Leccion-2/Video-1-Elaboracion-de-presentaciones.html', 0),
(34, 3, '2016-11-21 15:44:18', 1, '/learning_path/Leccion-2/Video-1-Elaboracion-de-presentaciones.html', 0),
(35, 3, '2016-11-21 15:45:04', 1, '/learning_path/Leccion-2/Video-3-Mejorando-la-presentacion-con-elementos-de-diseno-grafico.html', 0),
(36, 3, '2016-11-21 15:46:20', 1, '/learning_path/Leccion-2/Actividad-1-Elaboracion-de-presentaciones.html', 0),
(37, 3, '2016-11-21 15:48:40', 1, '/learning_path/Leccion-3/Video-2-Busqueda-de-informacion-en-la-red-para-la-solucion-de-problemas-cotidianos.html', 0),
(38, 3, '2016-11-21 15:49:58', 1, '/learning_path/Leccion-3/Actividad-1-Manejo-de-internet.html', 0),
(39, 3, '2016-11-21 16:33:05', 1, '/learning_path/Leccion-3/Actividad-1-Manejo-de-internet.html', 0),
(40, 3, '2016-11-21 16:42:04', 1, '/learning_path/Leccion-2-1/Video-1-Conceptos-de-audio-digital.html', 0),
(41, 3, '2016-11-21 16:48:26', 1, '/learning_path/Leccion-2-1/Video-1-Conceptos-de-audio-digital.html', 0),
(42, 3, '2016-11-21 16:48:46', 1, '/learning_path/Leccion-2-1/Video-2-Eliminacion-de-ruido.html', 0),
(43, 3, '2016-11-21 16:50:11', 1, '/learning_path/Leccion-2-1/Video-3-Edicion-de-video.html', 0),
(44, 3, '2016-11-21 16:50:33', 1, '/learning_path/Leccion-2-1/Actividad-1-Edicion-de-audio-y-video.html', 0),
(45, 3, '2016-11-21 16:52:02', 1, '/learning_path/Leccion-3-1/Video-1-Conceptos-de-imagenes-digitales.html', 0),
(46, 3, '2016-11-21 16:52:10', 1, '/learning_path/Leccion-3-1/Video-2-Edicion-de-imagenes-digitales.html', 0),
(47, 3, '2016-11-21 16:52:49', 1, '/learning_path/Leccion-3-1/Video-2-Edicion-de-imagenes-digitales.html', 0),
(48, 3, '2016-11-21 16:55:29', 1, '/bxxmi0mgv.pdf', 0),
(49, 3, '2016-11-21 16:55:37', 1, '/learning_path/Leccion-1/Video-1-Elaboracion-de-textos.html', 0),
(50, 3, '2016-11-21 16:56:14', 1, '/learning_path/Leccion-2/Actividad-1-Elaboracion-de-presentaciones.html', 0),
(51, 1, '2016-11-21 16:58:13', 1, '/learning_path/Leccion-1/Video-1-Elaboracion-de-textos.html', 0),
(52, 3, '2016-11-21 17:00:00', 1, '/learning_path/Leccion-1/Video-1-Elaboracion-de-textos.html', 0),
(53, 3, '2016-11-21 17:00:42', 1, '/learning_path/Leccion-1/Video-2-Correccion-ortografica-de-textos.html', 0),
(54, 3, '2016-11-21 17:14:30', 1, '/learning_path/Leccion-1/Video-3-Elaboracion-de-documentos-Curriculum.html', 0),
(55, 3, '2016-11-21 17:15:24', 1, '/learning_path/Leccion-1/Video-4-Elaboracion-de-documentos-Redaccion-de-citas-y-bibliografia.html', 0),
(56, 3, '2016-11-21 17:15:42', 1, '/bxxmi0mgv.pdf', 0),
(57, 1, '2016-11-21 17:17:34', 1, '/bxxmi0mgv.pdf', 0),
(58, 3, '2016-11-21 17:45:27', 1, '/learning_path/Leccion-3-1/Video-2-Edicion-de-imagenes-digitales.html', 0),
(59, 3, '2016-11-21 17:45:57', 1, '/learning_path/Leccion-3-1/Video-1-Conceptos-de-imagenes-digitales.html', 0),
(60, 3, '2016-11-21 17:46:25', 1, '/learning_path/Leccion-3-1/Video-3-Diseno-de-graficos-3D.html', 0),
(61, 3, '2016-11-21 17:46:34', 1, '/learning_path/Leccion-3-1/Video-4-CAD-1-Usos-y-conceptos.html', 0),
(62, 3, '2016-11-21 17:46:41', 1, '/learning_path/Leccion-3-1/Video-5-Escalas.html', 0),
(63, 3, '2016-11-21 17:46:48', 1, '/learning_path/Leccion-3-1/Actividad-1-Edicion-de-imagenes-digitales-e-imagenes-3D.html', 0),
(64, 3, '2016-11-21 17:47:13', 1, '/learning_path/Leccion-4/Video-1-Que-son-los-lenguajes-de-programacion.html', 0),
(65, 3, '2016-11-21 17:47:34', 1, '/learning_path/Leccion-4/Video-2-Que-son-las-bases-de-datos.html', 0),
(66, 3, '2016-11-21 17:47:41', 1, '/learning_path/Leccion-4/Video-3-Utilizacion-de-apps.html', 0),
(67, 3, '2016-11-21 17:47:48', 1, '/learning_path/Leccion-4/Actividad-1-Que-son-los-lenguajes-de-programacion.html', 0),
(68, 3, '2016-11-21 17:47:56', 1, '/learning_path/Leccion-4/Actividad-2-Utilizacion-de-las-apps.html', 0),
(69, 3, '2016-11-21 17:48:16', 1, '/bxxmi0mgv.pdf', 0),
(70, 3, '2016-11-21 17:49:29', 1, '/learning_path/Leccion-1/Video-1-Elaboracion-de-textos.html', 0),
(71, 3, '2016-11-21 17:49:54', 1, '/learning_path/Leccion-1/Video-2-Correccion-ortografica-de-textos.html', 0),
(72, 3, '2016-11-21 17:50:03', 1, '/learning_path/Leccion-1/Video-3-Elaboracion-de-documentos-Curriculum.html', 0),
(73, 3, '2016-11-21 17:50:12', 1, '/learning_path/Leccion-1/Video-4-Elaboracion-de-documentos-Redaccion-de-citas-y-bibliografia.html', 0),
(74, 3, '2016-11-21 17:50:21', 1, '/bxxmi0mgv.pdf', 0),
(75, 1, '2016-11-21 19:04:12', 1, '/learning_path/Leccion-4/Video-1-Que-son-los-lenguajes-de-programacion.html', 0),
(76, 1, '2016-11-21 19:04:36', 1, '/learning_path/Leccion-4/Video-2-Que-son-las-bases-de-datos.html', 0),
(77, 1, '2016-11-21 19:04:42', 1, '/learning_path/Leccion-4/Video-3-Utilizacion-de-apps.html', 0),
(78, 1, '2016-11-21 19:09:00', 1, '/learning_path/Leccion-4/Actividad-1-Que-son-los-lenguajes-de-programacion.html', 0),
(79, 1, '2016-11-21 19:09:05', 1, '/learning_path/Leccion-4/Actividad-2-Utilizacion-de-las-apps.html', 0),
(80, 1, '2016-11-21 19:09:19', 1, '/bxxmi0mgv.pdf', 0),
(81, 1, '2016-11-21 19:09:25', 1, '/learning_path/Leccion-1/Video-1-Elaboracion-de-textos.html', 0),
(82, 1, '2016-11-21 19:10:03', 1, '/learning_path/Leccion-1/Video-2-Correccion-ortografica-de-textos.html', 0),
(83, 1, '2016-11-21 19:10:51', 1, '/learning_path/Leccion-1/Video-3-Elaboracion-de-documentos-Curriculum.html', 0),
(84, 1, '2016-11-21 19:11:02', 1, '/learning_path/Leccion-1/Video-4-Elaboracion-de-documentos-Redaccion-de-citas-y-bibliografia.html', 0),
(85, 1, '2016-11-21 19:11:13', 1, '/bxxmi0mgv.pdf', 0),
(86, 1, '2016-11-21 19:19:36', 1, '/learning_path/Leccion-2/Video-1-Elaboracion-de-presentaciones.html', 0),
(87, 3, '2016-11-21 19:36:36', 1, '/bxxmi0mgv.pdf', 0),
(88, 1, '2016-11-24 04:22:29', 1, '/bxxmi0mgv.pdf', 0),
(89, 3, '2016-11-24 04:43:10', 1, '/32x2ot4ky.pdf', 0),
(90, 3, '2016-11-24 04:47:28', 1, '/bq4fh2psz.pdf', 0),
(91, 1, '2016-11-24 05:02:03', 1, '/learning_path/Leccion-4/Actividad-1-Que-son-los-lenguajes-de-programacion.html', 0),
(92, 1, '2016-11-24 05:02:08', 1, '/learning_path/Leccion-4/Actividad-2-Utilizacion-de-las-apps.html', 0),
(93, 3, '2016-11-24 05:28:27', 1, '/learning_path/Leccion-1/Video-4-Elaboracion-y-uso-de-macros-y-plantillas-de-hojas-de-calculo.html', 0),
(94, 3, '2016-11-24 05:28:41', 1, '/learning_path/Leccion-1/Video-3-Consolidacion-de-informacion-en-hojas-de-calculo.html', 0),
(95, 3, '2016-11-24 05:28:52', 1, '/learning_path/Leccion-1/Video-2-Representacion-grafica-de-datos.html', 0),
(96, 3, '2016-11-24 05:28:59', 1, '/68j0i5xe5.pdf', 0),
(97, 3, '2016-11-24 05:45:20', 1, '/learning_path/Leccion-2-1/Actividad-1-Edicion-de-audio-y-video.html', 0),
(98, 3, '2016-11-24 05:49:08', 1, '/learning_path/Leccion-3-1/Actividad-1-Edicion-de-imagenes-digitales-e-imagenes-3D.html', 0),
(99, 3, '2016-11-24 05:53:16', 1, '/learning_path/Leccion-4/Actividad-2-Utilizacion-de-las-apps.html', 0),
(100, 3, '2016-11-24 06:00:10', 1, '/learning_path/Leccion-1-N3/Video-1-Descripcion-de-los-sistemas-operativos.html', 0),
(101, 3, '2016-11-24 06:00:37', 1, '/learning_path/Leccion-1-N3/Video-2-Explotacion-de-recursos-de-la-computadora-con-el-sistema-operativo.html', 0),
(102, 3, '2016-11-24 06:00:53', 1, '/learning_path/Leccion-1-N3/Video-3-Respaldo-de-informacion.html', 0),
(103, 3, '2016-11-24 06:01:00', 1, '/learning_path/Leccion-1-N3/Video-4-Recuperacion-de-informacion-por-dano-en-disco-duro.html', 0),
(104, 3, '2016-11-24 06:01:06', 1, '/learning_path/Leccion-1-N3/Video-5-Solucion-de-fallas-con-disco-de-arranque.html', 0),
(105, 3, '2016-11-24 06:01:12', 1, '/learning_path/Leccion-1-N3/Video-6-Solucion-de-fallas-por-virus.html', 0),
(106, 3, '2016-11-24 06:01:53', 1, '/learning_path/Leccion-1-N3/Video-7-Principios-de-funcionamiento-de-redes-locales.html', 0),
(107, 3, '2016-11-24 06:02:04', 1, '/learning_path/Leccion-1-N3/Video-7-Principios-de-funcionamiento-de-redes-locales.html', 0),
(108, 3, '2016-11-24 06:02:13', 1, '/tsb9sbpxb.pdf', 0),
(109, 3, '2016-11-24 06:02:21', 1, '/learning_path/Leccion-1-N3/Video-6-Solucion-de-fallas-por-virus.html', 0),
(110, 1, '2016-11-24 06:04:10', 1, '/learning_path/Leccion-1-N4/Video-1-Sustentabilidad.html', 0),
(111, 3, '2016-11-24 06:13:41', 1, '/learning_path/Leccion-2-N3/Video-1-Instalacion-de-dispositivos-de-redes-inalambricas-WLAN.html', 0),
(112, 3, '2016-11-24 06:14:08', 1, '/learning_path/Leccion-2-N3/Video-2-Configuracion-de-dispositivos-Wi-fi..html', 0),
(113, 3, '2016-11-24 06:14:14', 1, '/learning_path/Leccion-2-N3/Video-3-Aplicacion-de-mecanismos-de-seguridad-en-redes-inalambricas.html', 0),
(114, 3, '2016-11-24 06:14:19', 1, '/0vic3rolr.pdf', 0),
(115, 3, '2016-11-24 06:17:03', 1, '/learning_path/Leccion-1-N4/Video-1-Sustentabilidad.html', 0),
(116, 3, '2016-11-24 06:17:30', 1, '/learning_path/Leccion-1-N4/Video-2-Beneficios-de-la-puesta-tierra-para-los-sistemas-computacionales.html', 0),
(117, 3, '2016-11-24 06:17:35', 1, '/learning_path/Leccion-1-N4/Video-3-Implementacion-de-aplicaciones-de-nube.html', 0),
(118, 3, '2016-11-24 06:17:40', 1, '/asnni9l9c.pdf', 0),
(119, 3, '2016-11-24 22:29:43', 1, '/learning_path/Leccion-1/Video-1-Elaboracion-de-textos.html', 0),
(120, 3, '2016-11-24 22:50:46', 1, '/learning_path/Leccion-1/Video-1-Elaboracion-de-textos.html', 0),
(121, 5, '2016-11-24 23:05:14', 1, '/learning_path/Leccion-1/Video-1-Elaboracion-de-textos.html', 0),
(122, 5, '2016-11-24 23:06:18', 1, '/learning_path/Leccion-1/Video-2-Correccion-ortografica-de-textos.html', 0),
(123, 5, '2016-11-24 23:06:23', 1, '/learning_path/Leccion-1/Video-3-Elaboracion-de-documentos-Curriculum.html', 0),
(124, 5, '2016-11-24 23:06:36', 1, '/learning_path/Leccion-1/Video-4-Elaboracion-de-documentos-Redaccion-de-citas-y-bibliografia.html', 0),
(125, 5, '2016-11-24 23:07:08', 1, '/bxxmi0mgv.pdf', 0),
(126, 5, '2016-11-24 23:10:32', 1, '/learning_path/Leccion-2/Video-1-Elaboracion-de-presentaciones.html', 0),
(127, 5, '2016-11-24 23:10:37', 1, '/learning_path/Leccion-2/Video-2-Mejorando-la-presentacion-con-elementos-de-mercadotecnia.html', 0),
(128, 5, '2016-11-24 23:10:45', 1, '/learning_path/Leccion-2/Video-3-Mejorando-la-presentacion-con-elementos-de-diseno-grafico.html', 0),
(129, 5, '2016-11-24 23:10:51', 1, '/bq4fh2psz.pdf', 0),
(130, 5, '2016-11-24 23:15:37', 1, '/learning_path/Leccion-3/Video-1-Publicacion-en-redes-sociales.html', 0),
(131, 5, '2016-11-24 23:15:45', 1, '/learning_path/Leccion-3/Video-2-Busqueda-de-informacion-en-la-red-para-la-solucion-de-problemas-cotidianos.html', 0),
(132, 5, '2016-11-24 23:15:50', 1, '/32x2ot4ky.pdf', 0),
(133, 5, '2016-11-24 23:19:10', 1, '/learning_path/Leccion-1/Video-4-Elaboracion-y-uso-de-macros-y-plantillas-de-hojas-de-calculo.html', 0),
(134, 5, '2016-11-24 23:19:29', 1, '/learning_path/Leccion-1/Video-3-Consolidacion-de-informacion-en-hojas-de-calculo.html', 0),
(135, 5, '2016-11-24 23:19:47', 1, '/learning_path/Leccion-1/Video-2-Representacion-grafica-de-datos.html', 0),
(136, 5, '2016-11-24 23:20:23', 1, '/68j0i5xe5.pdf', 0),
(137, 5, '2016-11-24 23:25:43', 1, '/learning_path/Leccion-2-1/Video-1-Conceptos-de-audio-digital.html', 0),
(138, 5, '2016-11-24 23:25:50', 1, '/learning_path/Leccion-2-1/Video-2-Eliminacion-de-ruido.html', 0),
(139, 5, '2016-11-24 23:27:03', 1, '/learning_path/Leccion-2-1/Video-3-Edicion-de-video.html', 0),
(140, 5, '2016-11-24 23:27:52', 1, '/learning_path/Leccion-2-1/Actividad-1-Edicion-de-audio-y-video.html', 0),
(141, 5, '2016-11-24 23:28:49', 1, '/learning_path/Leccion-3-1/Video-1-Conceptos-de-imagenes-digitales.html', 0),
(142, 5, '2016-11-24 23:29:26', 1, '/learning_path/Leccion-3-1/Video-2-Edicion-de-imagenes-digitales.html', 0),
(143, 5, '2016-11-24 23:29:30', 1, '/learning_path/Leccion-3-1/Video-3-Diseno-de-graficos-3D.html', 0),
(144, 5, '2016-11-24 23:30:28', 1, '/learning_path/Leccion-3-1/Video-4-CAD-1-Usos-y-conceptos.html', 0),
(145, 5, '2016-11-24 23:30:39', 1, '/learning_path/Leccion-3-1/Video-5-Escalas.html', 0),
(146, 5, '2016-11-24 23:30:47', 1, '/learning_path/Leccion-3-1/Video-3-Diseno-de-graficos-3D.html', 0),
(147, 5, '2016-11-24 23:30:52', 1, '/learning_path/Leccion-3-1/Actividad-1-Edicion-de-imagenes-digitales-e-imagenes-3D.html', 0),
(148, 5, '2016-11-24 23:32:28', 1, '/learning_path/Leccion-3-1/Actividad-1-Edicion-de-imagenes-digitales-e-imagenes-3D.html', 0),
(149, 5, '2016-11-24 23:33:06', 1, '/learning_path/Leccion-4/Video-1-Que-son-los-lenguajes-de-programacion.html', 0),
(150, 5, '2016-11-24 23:33:39', 1, '/learning_path/Leccion-4/Video-2-Que-son-las-bases-de-datos.html', 0),
(151, 5, '2016-11-24 23:33:46', 1, '/learning_path/Leccion-4/Video-3-Utilizacion-de-apps.html', 0),
(152, 5, '2016-11-24 23:33:51', 1, '/learning_path/Leccion-4/Actividad-1-Que-son-los-lenguajes-de-programacion.html', 0),
(153, 5, '2016-11-24 23:34:06', 1, '/learning_path/Leccion-4/Actividad-2-Utilizacion-de-las-apps.html', 0),
(154, 5, '2016-11-24 23:34:22', 1, '/learning_path/Leccion-4/Actividad-1-Que-son-los-lenguajes-de-programacion.html', 0),
(155, 5, '2016-11-24 23:37:41', 1, '/learning_path/Leccion-1-N3/Video-1-Descripcion-de-los-sistemas-operativos.html', 0),
(156, 5, '2016-11-24 23:38:35', 1, '/learning_path/Leccion-1-N3/Video-2-Explotacion-de-recursos-de-la-computadora-con-el-sistema-operativo.html', 0),
(157, 5, '2016-11-24 23:39:01', 1, '/learning_path/Leccion-1-N3/Video-3-Respaldo-de-informacion.html', 0),
(158, 5, '2016-11-24 23:39:32', 1, '/learning_path/Leccion-1-N3/Video-4-Recuperacion-de-informacion-por-dano-en-disco-duro.html', 0),
(159, 5, '2016-11-24 23:39:41', 1, '/learning_path/Leccion-1-N3/Video-5-Solucion-de-fallas-con-disco-de-arranque.html', 0),
(160, 5, '2016-11-24 23:39:46', 1, '/learning_path/Leccion-1-N3/Video-6-Solucion-de-fallas-por-virus.html', 0),
(161, 5, '2016-11-24 23:39:57', 1, '/learning_path/Leccion-1-N3/Video-7-Principios-de-funcionamiento-de-redes-locales.html', 0),
(162, 5, '2016-11-24 23:40:10', 1, '/learning_path/Leccion-1-N3/Video-7-Principios-de-funcionamiento-de-redes-locales.html', 0),
(163, 5, '2016-11-24 23:40:15', 1, '/learning_path/Leccion-1-N3/Video-6-Solucion-de-fallas-por-virus.html', 0),
(164, 5, '2016-11-24 23:40:21', 1, '/tsb9sbpxb.pdf', 0),
(165, 5, '2016-11-24 23:41:17', 1, '/learning_path/Leccion-1-N3/Video-6-Solucion-de-fallas-por-virus.html', 0),
(166, 5, '2016-11-24 23:42:01', 1, '/learning_path/Leccion-2-N3/Video-1-Instalacion-de-dispositivos-de-redes-inalambricas-WLAN.html', 0),
(167, 5, '2016-11-24 23:42:44', 1, '/learning_path/Leccion-2-N3/Video-2-Configuracion-de-dispositivos-Wi-fi..html', 0),
(168, 5, '2016-11-24 23:42:49', 1, '/learning_path/Leccion-2-N3/Video-3-Aplicacion-de-mecanismos-de-seguridad-en-redes-inalambricas.html', 0),
(169, 5, '2016-11-24 23:42:56', 1, '/0vic3rolr.pdf', 0),
(170, 5, '2016-11-24 23:44:35', 1, '/learning_path/Leccion-2-N3/Video-3-Aplicacion-de-mecanismos-de-seguridad-en-redes-inalambricas.html', 0),
(171, 5, '2016-11-24 23:47:45', 1, '/learning_path/Leccion-1-N4/Video-1-Sustentabilidad.html', 0),
(172, 5, '2016-11-24 23:47:54', 1, '/learning_path/Leccion-1-N4/Video-2-Beneficios-de-la-puesta-tierra-para-los-sistemas-computacionales.html', 0),
(173, 5, '2016-11-24 23:48:32', 1, '/learning_path/Leccion-1-N4/Video-3-Implementacion-de-aplicaciones-de-nube.html', 0),
(174, 5, '2016-11-24 23:48:37', 1, '/asnni9l9c.pdf', 0),
(175, 5, '2016-11-24 23:51:01', 1, '/asnni9l9c.pdf', 0),
(176, 1, '2016-11-25 00:14:13', 1, '/learning_path/EXAMEN-FINAL/adfgadfgsdfgs.html', 0),
(177, 5, '2016-11-25 01:26:02', 1, '/learning_path/Leccion-3/Video-1-Publicacion-en-redes-sociales.html', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `track_e_exercises`
--

CREATE TABLE `track_e_exercises` (
  `exe_id` int(11) NOT NULL,
  `exe_user_id` int(11) DEFAULT NULL,
  `exe_date` datetime NOT NULL,
  `c_id` int(11) NOT NULL,
  `exe_exo_id` int(11) NOT NULL,
  `exe_result` double NOT NULL,
  `exe_weighting` double NOT NULL,
  `user_ip` varchar(39) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `data_tracking` longtext COLLATE utf8_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `steps_counter` smallint(6) NOT NULL,
  `session_id` smallint(6) NOT NULL,
  `orig_lp_id` int(11) NOT NULL,
  `orig_lp_item_id` int(11) NOT NULL,
  `exe_duration` int(11) NOT NULL,
  `expired_time_control` datetime DEFAULT NULL,
  `orig_lp_item_view_id` int(11) NOT NULL,
  `questions_to_check` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `track_e_exercises`
--

INSERT INTO `track_e_exercises` (`exe_id`, `exe_user_id`, `exe_date`, `c_id`, `exe_exo_id`, `exe_result`, `exe_weighting`, `user_ip`, `status`, `data_tracking`, `start_date`, `steps_counter`, `session_id`, `orig_lp_id`, `orig_lp_item_id`, `exe_duration`, `expired_time_control`, `orig_lp_item_view_id`, `questions_to_check`) VALUES
(1, 3, '2016-11-21 15:12:51', 1, 1, 0, 0, '::1', 'incomplete', '1,2,3,4,5,6,7,8,9', '2016-11-21 15:12:51', 0, 0, 0, 0, 0, NULL, 0, ''),
(2, 3, '2016-11-21 16:24:49', 1, 1, 0, 0, '::1', '', '1,2,3,4,5,6,7,8,9', '2016-11-21 15:53:28', 0, 0, 3, 37, 728, NULL, 53, ''),
(3, 3, '2016-11-21 16:41:30', 1, 2, 0, 0, '::1', '', '10', '2016-11-21 16:41:23', 0, 0, 0, 0, 4, NULL, 0, ''),
(4, 3, '2016-11-21 19:38:52', 1, 1, 0, 0, '::1', '', '1,2,3,4,5,6,7,8,9', '2016-11-21 19:37:22', 0, 0, 1, 41, 81, NULL, 73, ''),
(5, 3, '2016-11-21 23:31:07', 1, 1, 0, 0, '::1', '', '1,2,3,4,5,6,7,8,9', '2016-11-21 23:28:42', 0, 0, 1, 41, 127, NULL, 73, ''),
(6, 3, '2016-11-24 04:44:49', 1, 4, 0, 0, '::1', '', '17,18,19,20,21', '2016-11-24 04:43:43', 0, 0, 3, 61, 60, NULL, 97, ''),
(7, 3, '2016-11-24 04:49:34', 1, 3, 0, 0, '::1', '', '11,12,13,14,15,16', '2016-11-24 04:48:01', 0, 0, 2, 60, 86, NULL, 102, ''),
(8, 3, '2016-11-24 05:20:37', 1, 3, 0, 0, '::1', '', '11,12,13,14,15,16', '2016-11-24 05:12:07', 0, 0, 2, 63, 500, NULL, 119, ''),
(9, 3, '2016-11-24 05:43:30', 1, 5, 0, 0, '::1', '', '22,23,24,25,26,27,28', '2016-11-24 05:42:47', 0, 0, 4, 66, 34, NULL, 126, ''),
(10, 3, '2016-11-24 05:47:04', 1, 6, 0, 0, '::1', '', '29,30', '2016-11-24 05:46:51', 0, 0, 5, 68, 10, NULL, 128, ''),
(11, 3, '2016-11-24 05:51:32', 1, 6, 0, 0, '::1', '', '29,30', '2016-11-24 05:50:28', 0, 0, 6, 70, 12, NULL, 130, ''),
(12, 3, '2016-11-24 05:54:38', 1, 5, 0, 0, '::1', '', '22,23,24,25,26,27,28', '2016-11-24 05:53:53', 0, 0, 7, 72, 32, NULL, 132, ''),
(13, 3, '2016-11-24 06:02:47', 1, 6, 0, 0, '::1', '', '29,30', '2016-11-24 06:02:33', 0, 0, 8, 74, 11, NULL, 143, ''),
(14, 3, '2016-11-24 06:15:06', 1, 5, 0, 0, '::1', '', '22,23,24,25,26,27,28', '2016-11-24 06:14:30', 0, 0, 9, 76, 26, NULL, 157, ''),
(15, 3, '2016-11-24 06:18:19', 1, 4, 0, 0, '::1', '', '17,18,19,20,21', '2016-11-24 06:17:51', 0, 0, 10, 78, 20, NULL, 150, ''),
(16, 5, '2016-11-24 23:08:08', 1, 1, 0, 0, '::1', '', '1,2,3,4,5,6,7,8,9', '2016-11-24 23:07:21', 0, 0, 1, 41, 37, NULL, 167, ''),
(17, 5, '2016-11-24 23:13:00', 1, 3, 0, 0, '::1', '', '11,12,13,14,15,16', '2016-11-24 23:11:38', 0, 0, 2, 63, 38, NULL, 173, ''),
(18, 5, '2016-11-24 23:17:40', 1, 4, 0, 0, '::1', '', '17,18,19,20,21', '2016-11-24 23:16:27', 0, 0, 3, 61, 26, NULL, 178, ''),
(19, 5, '2016-11-24 23:24:56', 1, 5, 0, 0, '::1', '', '22,23,24,25,26,27,28', '2016-11-24 23:20:45', 0, 0, 4, 66, 87, NULL, 185, ''),
(20, 5, '2016-11-24 23:27:36', 1, 6, 0, 0, '::1', '', '29,30', '2016-11-24 23:27:23', 0, 0, 5, 68, 9, NULL, 191, ''),
(21, 5, '2016-11-24 23:31:34', 1, 6, 0, 0, '::1', '', '29,30', '2016-11-24 23:31:15', 0, 0, 6, 70, 16, NULL, 199, ''),
(22, 5, '2016-11-24 23:35:36', 1, 5, 0, 0, '::1', '', '22,23,24,25,26,27,28', '2016-11-24 23:34:47', 0, 0, 7, 72, 41, NULL, 206, ''),
(23, 5, '2016-11-24 23:40:59', 1, 6, 0, 0, '::1', '', '29,30', '2016-11-24 23:40:48', 0, 0, 8, 74, 8, NULL, 216, ''),
(24, 5, '2016-11-24 23:46:05', 1, 5, 0, 0, '::1', '', '22,23,24,25,26,27,28', '2016-11-24 23:45:00', 0, 0, 9, 76, 57, NULL, 222, ''),
(25, 5, '2016-11-24 23:49:44', 1, 4, 0, 0, '::1', '', '17,18,19,20,21', '2016-11-24 23:48:51', 0, 0, 10, 78, 47, NULL, 228, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `track_e_hotpotatoes`
--

CREATE TABLE `track_e_hotpotatoes` (
  `id` int(11) NOT NULL,
  `exe_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exe_user_id` int(11) DEFAULT NULL,
  `exe_date` datetime NOT NULL,
  `c_id` int(11) NOT NULL,
  `exe_result` smallint(6) NOT NULL,
  `exe_weighting` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `track_e_hotspot`
--

CREATE TABLE `track_e_hotspot` (
  `hotspot_id` int(11) NOT NULL,
  `hotspot_user_id` int(11) NOT NULL,
  `hotspot_course_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `c_id` int(11) DEFAULT NULL,
  `hotspot_exe_id` int(11) NOT NULL,
  `hotspot_question_id` int(11) NOT NULL,
  `hotspot_answer_id` int(11) NOT NULL,
  `hotspot_correct` tinyint(1) NOT NULL,
  `hotspot_coordinate` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `track_e_item_property`
--

CREATE TABLE `track_e_item_property` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `item_property_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `progress` int(11) NOT NULL,
  `lastedit_date` datetime NOT NULL,
  `lastedit_user_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `track_e_lastaccess`
--

CREATE TABLE `track_e_lastaccess` (
  `access_id` bigint(20) NOT NULL,
  `access_user_id` int(11) DEFAULT NULL,
  `access_date` datetime NOT NULL,
  `c_id` int(11) NOT NULL,
  `access_tool` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_session_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `track_e_lastaccess`
--

INSERT INTO `track_e_lastaccess` (`access_id`, `access_user_id`, `access_date`, `c_id`, `access_tool`, `access_session_id`) VALUES
(1, 1, '2016-11-25 01:27:24', 1, NULL, 0),
(2, 1, '2016-11-25 00:55:18', 1, 'chat', 0),
(3, 1, '2016-11-25 01:32:37', 1, 'learnpath', 0),
(4, 3, '2016-11-25 01:06:08', 1, NULL, 0),
(5, 3, '2016-11-25 00:21:30', 1, 'learnpath', 0),
(6, 3, '2016-11-11 17:12:37', 1, 'user', 0),
(7, 3, '2016-11-11 17:12:46', 1, 'document', 0),
(8, 1, '2016-11-11 17:16:52', 1, 'link', 0),
(9, 1, '2016-11-25 00:49:58', 1, 'glossary', 0),
(10, 1, '2016-11-25 00:49:58', 1, 'glossary', 0),
(11, 1, '2016-11-25 00:47:36', 1, 'course_description', 0),
(12, 1, '2016-11-25 00:49:09', 1, 'announcement', 0),
(13, 1, '2016-11-25 00:52:38', 1, 'course_progress', 0),
(14, 1, '2016-11-25 00:53:21', 1, 'attendance', 0),
(15, 1, '2016-11-25 00:54:38', 1, 'user', 0),
(16, 1, '2016-11-11 17:35:36', 1, 'forum', 0),
(17, 1, '2016-11-24 22:14:23', 1, 'student_publication', 0),
(18, 3, '2016-11-11 17:39:02', 1, 'glossary', 0),
(19, 3, '2016-11-11 17:39:18', 1, 'chat', 0),
(20, 1, '2016-11-25 01:08:00', 1, 'survey', 0),
(21, 1, '2016-11-25 00:43:23', 1, 'document', 0),
(22, 1, '2016-11-24 04:38:17', 1, 'quiz', 0),
(23, 3, '2016-11-21 16:41:46', 1, 'quiz', 0),
(24, 3, '2016-11-21 23:43:17', 1, 'student_publication', 0),
(25, 4, '2016-11-25 01:12:13', 1, NULL, 0),
(26, 1, '2016-11-25 00:43:23', 1, 'document', 0),
(27, 5, '2016-11-25 01:27:24', 1, NULL, 0),
(28, 5, '2016-11-25 01:25:27', 1, 'learnpath', 0),
(29, 5, '2016-11-24 23:54:12', 1, 'quiz', 0),
(30, 5, '2016-11-25 00:21:52', 1, 'student_publication', 0),
(31, 5, '2016-11-25 00:42:55', 1, 'course_description', 0),
(32, 5, '2016-11-25 00:49:40', 1, 'announcement', 0),
(33, 5, '2016-11-25 00:51:14', 1, 'course_progress', 0),
(34, 1, '2016-11-25 00:53:45', 1, 'dropbox', 0),
(35, 5, '2016-11-25 00:54:17', 1, 'dropbox', 0),
(36, 5, '2016-11-25 00:56:08', 1, 'chat', 0),
(37, 3, '2016-11-25 00:58:36', 1, 'wiki', 0),
(38, 5, '2016-11-25 00:58:42', 1, 'wiki', 0),
(39, 5, '2016-11-25 01:05:52', 1, 'survey', 0),
(40, 3, '2016-11-25 01:06:12', 1, 'survey', 0),
(41, 4, '2016-11-25 01:11:52', 1, 'learnpath', 0),
(42, 4, '2016-11-25 01:12:21', 1, 'survey', 0),
(43, 1, '2016-11-25 01:15:34', 1, 'calendar_event', 0),
(44, 5, '2016-11-25 01:16:02', 1, 'attendance', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `track_e_links`
--

CREATE TABLE `track_e_links` (
  `links_id` int(11) NOT NULL,
  `links_user_id` int(11) DEFAULT NULL,
  `links_date` datetime NOT NULL,
  `c_id` int(11) NOT NULL,
  `links_link_id` int(11) NOT NULL,
  `links_session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `track_e_login`
--

CREATE TABLE `track_e_login` (
  `login_id` int(11) NOT NULL,
  `login_user_id` int(11) NOT NULL,
  `login_date` datetime NOT NULL,
  `user_ip` varchar(39) COLLATE utf8_unicode_ci NOT NULL,
  `logout_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `track_e_login`
--

INSERT INTO `track_e_login` (`login_id`, `login_user_id`, `login_date`, `user_ip`, `logout_date`) VALUES
(1, 1, '2016-11-11 14:23:57', '::1', '2016-11-11 15:13:25'),
(2, 1, '2016-11-11 15:13:59', '::1', '2016-11-11 16:15:02'),
(3, 1, '2016-11-11 16:15:03', '::1', '2016-11-11 17:56:55'),
(4, 3, '2016-11-11 16:42:32', '::1', '2016-11-11 17:56:58'),
(5, 1, '2016-11-17 22:42:30', '::1', '2016-11-17 22:50:59'),
(6, 1, '2016-11-18 01:02:21', '::1', '2016-11-18 01:27:12'),
(7, 1, '2016-11-21 14:22:03', '::1', '2016-11-21 15:30:08'),
(8, 3, '2016-11-21 14:25:04', '::1', '2016-11-21 15:22:46'),
(9, 3, '2016-11-21 15:24:15', '::1', '2016-11-21 15:25:17'),
(10, 3, '2016-11-21 15:30:12', '::1', '2016-11-21 15:30:53'),
(11, 1, '2016-11-21 15:41:16', '::1', '2016-11-21 15:43:37'),
(12, 3, '2016-11-21 15:43:55', '::1', '2016-11-21 16:42:33'),
(13, 1, '2016-11-21 16:42:38', '::1', '2016-11-21 16:47:48'),
(14, 3, '2016-11-21 16:48:08', '::1', '2016-11-21 16:50:35'),
(15, 3, '2016-11-21 16:51:46', '127.0.0.1', '2016-11-21 16:53:15'),
(16, 1, '2016-11-21 16:54:06', '::1', '2016-11-21 16:55:10'),
(17, 3, '2016-11-21 16:55:14', '127.0.0.1', '2016-11-21 16:56:46'),
(18, 1, '2016-11-21 16:56:51', '127.0.0.1', '2016-11-21 16:59:24'),
(19, 3, '2016-11-21 16:59:33', '127.0.0.1', '2016-11-21 17:16:49'),
(20, 1, '2016-11-21 17:16:53', '::1', '2016-11-21 17:17:04'),
(21, 1, '2016-11-21 17:17:05', '::1', '2016-11-21 17:44:02'),
(22, 3, '2016-11-21 17:44:12', '::1', '2016-11-21 17:44:24'),
(23, 3, '2016-11-21 17:45:10', '::1', '2016-11-21 17:50:59'),
(24, 1, '2016-11-21 17:51:06', '::1', '2016-11-21 18:00:09'),
(25, 1, '2016-11-21 19:01:38', '::1', '2016-11-21 19:35:05'),
(26, 3, '2016-11-21 19:35:11', '::1', '2016-11-21 23:36:33'),
(27, 1, '2016-11-21 23:37:27', '::1', '2016-11-21 23:43:02'),
(28, 3, '2016-11-21 23:43:06', '::1', '2016-11-21 23:49:12'),
(29, 1, '2016-11-21 23:49:17', '::1', '2016-11-22 01:01:08'),
(30, 1, '2016-11-22 23:40:00', '::1', '2016-11-23 00:00:56'),
(31, 1, '2016-11-23 03:48:56', '::1', '2016-11-23 04:56:43'),
(32, 3, '2016-11-23 04:19:57', '::1', '2016-11-23 04:35:04'),
(33, 4, '2016-11-23 04:35:13', '::1', '2016-11-23 04:36:49'),
(34, 1, '2016-11-24 03:55:58', '::1', '2016-11-24 04:22:34'),
(35, 1, '2016-11-24 04:25:15', '::1', '2016-11-24 05:18:02'),
(36, 3, '2016-11-24 04:42:39', '::1', '2016-11-24 06:06:05'),
(37, 1, '2016-11-24 05:25:12', '::1', '2016-11-24 06:12:51'),
(38, 3, '2016-11-24 06:12:55', '::1', '2016-11-24 06:24:14'),
(39, 1, '2016-11-24 13:20:54', '::1', '2016-11-24 13:44:57'),
(40, 1, '2016-11-24 13:56:39', '::1', '2016-11-24 13:57:48'),
(41, 1, '2016-11-24 14:00:03', '::1', '2016-11-24 14:01:35'),
(42, 1, '2016-11-24 14:04:39', '::1', '2016-11-24 14:05:05'),
(43, 1, '2016-11-24 14:17:46', '::1', '2016-11-24 14:17:54'),
(44, 1, '2016-11-24 14:18:45', '::1', '2016-11-24 15:43:39'),
(45, 1, '2016-11-24 15:43:54', '::1', '2016-11-24 15:53:58'),
(46, 1, '2016-11-24 15:53:59', '::1', '2016-11-24 18:00:32'),
(47, 1, '2016-11-24 18:30:04', '::1', '2016-11-24 18:36:36'),
(48, 3, '2016-11-24 20:57:46', '::1', '2016-11-24 21:00:28'),
(49, 1, '2016-11-24 21:00:39', '::1', '2016-11-24 22:25:35'),
(50, 3, '2016-11-24 21:05:03', '::1', '2016-11-24 22:25:33'),
(51, 1, '2016-11-24 22:25:38', '::1', '2016-11-25 00:02:51'),
(52, 3, '2016-11-24 22:27:46', '::1', '2016-11-24 22:28:04'),
(53, 3, '2016-11-24 22:28:54', '::1', '2016-11-24 23:00:24'),
(54, 5, '2016-11-24 23:01:18', '::1', '2016-11-25 00:01:19'),
(55, 1, '2016-11-25 00:11:10', '::1', '2016-11-25 01:08:35'),
(56, 3, '2016-11-25 00:11:31', '::1', '2016-11-25 00:21:37'),
(57, 5, '2016-11-25 00:21:44', '::1', '2016-11-25 01:33:27'),
(58, 3, '2016-11-25 00:56:40', '::1', '2016-11-25 01:16:44'),
(59, 1, '2016-11-25 01:10:32', '::1', '2016-11-25 01:11:23'),
(60, 4, '2016-11-25 01:11:31', '::1', '2016-11-25 01:13:23'),
(61, 1, '2016-11-25 01:13:28', '::1', '2016-11-25 01:22:44'),
(62, 1, '2016-11-25 01:22:44', '::1', '2016-11-25 01:33:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `track_e_online`
--

CREATE TABLE `track_e_online` (
  `login_id` int(11) NOT NULL,
  `login_user_id` int(11) NOT NULL,
  `login_date` datetime NOT NULL,
  `user_ip` varchar(39) COLLATE utf8_unicode_ci NOT NULL,
  `c_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `access_url_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `track_e_online`
--

INSERT INTO `track_e_online` (`login_id`, `login_user_id`, `login_date`, `user_ip`, `c_id`, `session_id`, `access_url_id`) VALUES
(1, 1, '2016-11-25 01:33:28', '::1', 1, 0, 1),
(2, 2, '2016-11-24 14:01:39', '::1', 1, 0, 1),
(3, 3, '2016-11-25 01:16:44', '::1', 1, 0, 1),
(5, 5, '2016-11-25 01:33:27', '::1', 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `track_e_open`
--

CREATE TABLE `track_e_open` (
  `open_id` int(11) NOT NULL,
  `open_remote_host` longtext COLLATE utf8_unicode_ci NOT NULL,
  `open_agent` longtext COLLATE utf8_unicode_ci NOT NULL,
  `open_referer` longtext COLLATE utf8_unicode_ci NOT NULL,
  `open_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `track_e_uploads`
--

CREATE TABLE `track_e_uploads` (
  `upload_id` int(11) NOT NULL,
  `upload_user_id` int(11) DEFAULT NULL,
  `upload_date` datetime NOT NULL,
  `upload_cours_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `c_id` int(11) DEFAULT NULL,
  `upload_work_id` int(11) NOT NULL,
  `upload_session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `track_e_uploads`
--

INSERT INTO `track_e_uploads` (`upload_id`, `upload_user_id`, `upload_date`, `upload_cours_id`, `c_id`, `upload_work_id`, `upload_session_id`) VALUES
(1, 3, '2016-11-21 23:48:17', '', 1, 2, 0),
(2, 3, '2016-11-25 00:18:59', '', 1, 12, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `track_stored_values`
--

CREATE TABLE `track_stored_values` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sco_id` int(11) NOT NULL,
  `course_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `sv_key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sv_value` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `track_stored_values_stack`
--

CREATE TABLE `track_stored_values_stack` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sco_id` int(11) NOT NULL,
  `stack_order` int(11) NOT NULL,
  `course_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `sv_key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sv_value` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `locked` tinyint(1) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `lastname` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_source` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `official_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture_uri` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `competences` longtext COLLATE utf8_unicode_ci,
  `diplomas` longtext COLLATE utf8_unicode_ci,
  `openarea` longtext COLLATE utf8_unicode_ci,
  `teach` longtext COLLATE utf8_unicode_ci,
  `productions` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registration_date` datetime NOT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `openid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hr_dept_id` smallint(6) DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `profile_completed` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `user_id`, `username`, `username_canonical`, `email_canonical`, `email`, `locked`, `enabled`, `expired`, `credentials_expired`, `credentials_expire_at`, `expires_at`, `lastname`, `firstname`, `password`, `auth_source`, `status`, `official_code`, `phone`, `address`, `picture_uri`, `creator_id`, `competences`, `diplomas`, `openarea`, `teach`, `productions`, `language`, `registration_date`, `expiration_date`, `active`, `openid`, `theme`, `hr_dept_id`, `salt`, `last_login`, `created_at`, `updated_at`, `confirmation_token`, `password_requested_at`, `roles`, `profile_completed`) VALUES
(1, 1, 'n3153r', 'n3153r', 'neiss.rodriguez@gmail.com', 'neiss.rodriguez@gmail.com', 0, 1, 0, 0, NULL, NULL, 'RODRIGUEZ VILLAR', 'NEISER', '$2y$04$jGwTsdaoVnk4oRGl6PZY3O8pKEk6f8GbbkaZPmoOMGCXHnpdSG12O', 'platform', 1, 'ADMIN', '986058157', '', '1_5825d820a8790_14196059_1402489539765708_4252866530191078140_o.png', 0, NULL, NULL, NULL, NULL, NULL, 'spanish', '2016-11-11 14:23:25', NULL, 1, 'http://', NULL, NULL, '730f6360ada8dc59b46fc229744ebd0b27a84a3b', '2016-11-25 01:33:28', NULL, NULL, NULL, NULL, 'a:1:{i:0;s:16:"ROLE_SUPER_ADMIN";}', NULL),
(2, 2, 'anon', 'anon', 'anonymous@localhost', 'anonymous@localhost', 0, 1, 0, 0, NULL, NULL, 'Anonymous', 'Joe', '$2y$04$cHLsl6IkYeAswrfH8NOGsu95b373wElV//K7fGcmkcvklZZLT0b2K', 'platform', 6, 'anonymous', '', '', '', 0, NULL, NULL, NULL, NULL, NULL, 'spanish', '2016-11-11 14:23:26', NULL, 1, NULL, NULL, 0, '1813b36d40696113c7f8aef789503d8ba1122951', NULL, NULL, NULL, NULL, NULL, 'a:0:{}', NULL),
(3, 3, 'CARMEN', 'carmen', '70191753@upagu.edu.pe', '70191753@upagu.edu.pe', 0, 1, 0, 0, NULL, NULL, 'Alvares Soria', 'Carmen', '$2y$04$AsiSGk7puQshFXZFVq6L4.1FQokcH41dlaOHangKgc8fjA4xReGHK', 'platform', 5, 'CARMEN', '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'spanish', '2016-11-11 16:42:30', '2026-11-19 15:42:00', 1, NULL, NULL, NULL, 'a5764703d6535188a908720e5fcfcaba99da9f6e', '2016-11-25 01:16:44', NULL, NULL, NULL, NULL, 'a:1:{i:0;s:16:"ROLE_SUPER_ADMIN";}', NULL),
(4, 4, 'liz', 'liz', 'liz.valdivia@upagu.edu.pe', 'liz.valdivia@upagu.edu.pe', 0, 1, 0, 0, NULL, NULL, 'VALDIVIA', 'LIZ', '$2y$04$F69M6lwWsP7YFnKoH9eYMuhWrrL7MTFjUVqAKzpGxJ71QtZS0YC/O', 'platform', 1, 'liz', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'spanish', '2016-11-23 04:34:48', NULL, 1, NULL, NULL, NULL, '79c9f04c2bcaab344cd8cece3b361c5e3978fa2e', '2016-11-25 01:13:04', NULL, NULL, NULL, NULL, 'a:1:{i:0;s:16:"ROLE_SUPER_ADMIN";}', NULL),
(5, 5, 'hans', 'hans', 'hancito20@gmail.com', 'hancito20@gmail.com', 0, 1, 0, 0, NULL, NULL, 'CORDOVA', 'HANS', '$2y$04$mWiTTC..iS6hNxTXYfJvaO.OMFsMhSKvxboV2qXCZwmZdMYGvA7DG', 'platform', 5, 'HANS', '', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, 'spanish', '2016-11-24 23:01:16', '2026-12-02 22:01:16', 1, NULL, NULL, 0, '1f091a2f6edfbf4cc462921bb8a8a90464361eb2', '2016-11-25 01:33:27', NULL, NULL, NULL, NULL, 'a:0:{}', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usergroup`
--

CREATE TABLE `usergroup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `group_type` int(11) NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visibility` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allow_members_leave_group` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usergroup_rel_course`
--

CREATE TABLE `usergroup_rel_course` (
  `id` int(11) NOT NULL,
  `usergroup_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usergroup_rel_question`
--

CREATE TABLE `usergroup_rel_question` (
  `id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `usergroup_id` int(11) NOT NULL,
  `coefficient` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usergroup_rel_session`
--

CREATE TABLE `usergroup_rel_session` (
  `id` int(11) NOT NULL,
  `usergroup_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usergroup_rel_user`
--

CREATE TABLE `usergroup_rel_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `usergroup_id` int(11) DEFAULT NULL,
  `relation_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usergroup_rel_usergroup`
--

CREATE TABLE `usergroup_rel_usergroup` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `subgroup_id` int(11) NOT NULL,
  `relation_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_api_key`
--

CREATE TABLE `user_api_key` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `api_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `api_service` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `api_end_point` longtext COLLATE utf8_unicode_ci,
  `created_date` datetime DEFAULT NULL,
  `validity_start_date` datetime DEFAULT NULL,
  `validity_end_date` datetime DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_course_category`
--

CREATE TABLE `user_course_category` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_friend_relation_type`
--

CREATE TABLE `user_friend_relation_type` (
  `id` int(11) NOT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `user_friend_relation_type`
--

INSERT INTO `user_friend_relation_type` (`id`, `title`) VALUES
(1, 'SocialUnknow'),
(2, 'SocialParent'),
(3, 'SocialFriend'),
(4, 'SocialGoodFriend'),
(5, 'SocialEnemy'),
(6, 'SocialDeleted');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_rel_course_vote`
--

CREATE TABLE `user_rel_course_vote` (
  `id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `url_id` int(11) NOT NULL,
  `vote` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `user_rel_course_vote`
--

INSERT INTO `user_rel_course_vote` (`id`, `c_id`, `user_id`, `session_id`, `url_id`, `vote`) VALUES
(1, 1, 3, 0, 1, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_rel_event_type`
--

CREATE TABLE `user_rel_event_type` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event_type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_rel_tag`
--

CREATE TABLE `user_rel_tag` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_rel_user`
--

CREATE TABLE `user_rel_user` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `friend_user_id` int(11) NOT NULL,
  `relation_type` int(11) NOT NULL,
  `last_edit` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `version`
--

CREATE TABLE `version` (
  `id` int(10) UNSIGNED NOT NULL,
  `version` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `version`
--

INSERT INTO `version` (`id`, `version`) VALUES
(1, '111'),
(2, '20160302133200'),
(3, '20160304151300'),
(4, '20160315155700'),
(5, '20160330103045'),
(6, '20160331103600'),
(7, '20160405112100'),
(8, '20160418093800'),
(9, '20160418113000'),
(10, '20160421112900'),
(11, '20160519201900'),
(12, '20160603113100'),
(13, '20160610142700'),
(14, '20160623143200'),
(15, '20160628220000'),
(16, '20160701110000'),
(17, '20160705190000'),
(18, '20160705192000'),
(19, '20160706145000'),
(20, '20160706182000'),
(21, '20160712150000'),
(22, '20160713180000'),
(23, '20160715122300'),
(24, '20160727122700'),
(25, '20160727155600'),
(26, '20160804174600'),
(27, '20160808154200'),
(28, '20160808160000'),
(29, '20160825155200'),
(30, '20160907140300'),
(31, '20160907150300'),
(32, '20160929120000'),
(33, '20160930144400'),
(34, '20161028123400');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `access_url`
--
ALTER TABLE `access_url`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `access_url_rel_course`
--
ALTER TABLE `access_url_rel_course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8E97FC0891D79BD3` (`c_id`),
  ADD KEY `IDX_8E97FC0873444FD5` (`access_url_id`);

--
-- Indices de la tabla `access_url_rel_course_category`
--
ALTER TABLE `access_url_rel_course_category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `access_url_rel_session`
--
ALTER TABLE `access_url_rel_session`
  ADD PRIMARY KEY (`access_url_id`,`session_id`);

--
-- Indices de la tabla `access_url_rel_user`
--
ALTER TABLE `access_url_rel_user`
  ADD PRIMARY KEY (`access_url_id`,`user_id`),
  ADD KEY `idx_access_url_rel_user_user` (`user_id`),
  ADD KEY `idx_access_url_rel_user_access_url` (`access_url_id`),
  ADD KEY `idx_access_url_rel_user_access_url_user` (`user_id`,`access_url_id`);

--
-- Indices de la tabla `access_url_rel_usergroup`
--
ALTER TABLE `access_url_rel_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indices de la tabla `announcement_rel_group`
--
ALTER TABLE `announcement_rel_group`
  ADD PRIMARY KEY (`group_id`,`announcement_id`);

--
-- Indices de la tabla `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`);

--
-- Indices de la tabla `branch_sync`
--
ALTER TABLE `branch_sync`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_F62F45EDE3C68343` (`unique_id`),
  ADD KEY `IDX_F62F45ED727ACA70` (`parent_id`);

--
-- Indices de la tabla `branch_transaction`
--
ALTER TABLE `branch_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FEFBA12B6BF700BD` (`status_id`),
  ADD KEY `IDX_FEFBA12BDCD6CC49` (`branch_id`);

--
-- Indices de la tabla `branch_transaction_status`
--
ALTER TABLE `branch_transaction_status`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `career`
--
ALTER TABLE `career`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_chat_to_user` (`to_user`),
  ADD KEY `idx_chat_from_user` (`from_user`);

--
-- Indices de la tabla `chat_video`
--
ALTER TABLE `chat_video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_chat_video_to_user` (`to_user`),
  ADD KEY `idx_chat_video_from_user` (`from_user`),
  ADD KEY `idx_chat_video_users` (`from_user`,`to_user`),
  ADD KEY `idx_chat_video_room_name` (`room_name`);

--
-- Indices de la tabla `class_item`
--
ALTER TABLE `class_item`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `class_user`
--
ALTER TABLE `class_user`
  ADD PRIMARY KEY (`class_id`,`user_id`);

--
-- Indices de la tabla `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_169E6FB977153098` (`code`),
  ADD KEY `IDX_169E6FB954177093` (`room_id`),
  ADD KEY `category_code` (`category_code`),
  ADD KEY `directory` (`directory`);

--
-- Indices de la tabla `course_category`
--
ALTER TABLE `course_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `tree_pos` (`tree_pos`);

--
-- Indices de la tabla `course_module`
--
ALTER TABLE `course_module`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `course_rel_class`
--
ALTER TABLE `course_rel_class`
  ADD PRIMARY KEY (`course_code`,`class_id`);

--
-- Indices de la tabla `course_rel_user`
--
ALTER TABLE `course_rel_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_92CFD9FEA76ED395` (`user_id`),
  ADD KEY `IDX_92CFD9FE91D79BD3` (`c_id`);

--
-- Indices de la tabla `course_rel_user_catalogue`
--
ALTER TABLE `course_rel_user_catalogue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_79CA412EA76ED395` (`user_id`),
  ADD KEY `IDX_79CA412E91D79BD3` (`c_id`);

--
-- Indices de la tabla `course_request`
--
ALTER TABLE `course_request`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indices de la tabla `course_type`
--
ALTER TABLE `course_type`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `c_announcement`
--
ALTER TABLE `c_announcement`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indices de la tabla `c_announcement_attachment`
--
ALTER TABLE `c_announcement_attachment`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_attendance`
--
ALTER TABLE `c_attendance`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `active` (`active`);

--
-- Indices de la tabla `c_attendance_calendar`
--
ALTER TABLE `c_attendance_calendar`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `attendance_id` (`attendance_id`),
  ADD KEY `done_attendance` (`done_attendance`);

--
-- Indices de la tabla `c_attendance_calendar_rel_group`
--
ALTER TABLE `c_attendance_calendar_rel_group`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `group` (`group_id`);

--
-- Indices de la tabla `c_attendance_result`
--
ALTER TABLE `c_attendance_result`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `attendance_id` (`attendance_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `c_attendance_sheet`
--
ALTER TABLE `c_attendance_sheet`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `user` (`user_id`),
  ADD KEY `presence` (`presence`);

--
-- Indices de la tabla `c_attendance_sheet_log`
--
ALTER TABLE `c_attendance_sheet_log`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_blog`
--
ALTER TABLE `c_blog`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indices de la tabla `c_blog_attachment`
--
ALTER TABLE `c_blog_attachment`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_blog_comment`
--
ALTER TABLE `c_blog_comment`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_blog_post`
--
ALTER TABLE `c_blog_post`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_blog_rating`
--
ALTER TABLE `c_blog_rating`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_blog_rel_user`
--
ALTER TABLE `c_blog_rel_user`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_blog_task`
--
ALTER TABLE `c_blog_task`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_blog_task_rel_user`
--
ALTER TABLE `c_blog_task_rel_user`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `user` (`user_id`),
  ADD KEY `task` (`task_id`);

--
-- Indices de la tabla `c_calendar_event`
--
ALTER TABLE `c_calendar_event`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `IDX_A062258154177093` (`room_id`),
  ADD KEY `course` (`c_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indices de la tabla `c_calendar_event_attachment`
--
ALTER TABLE `c_calendar_event_attachment`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_calendar_event_repeat`
--
ALTER TABLE `c_calendar_event_repeat`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_calendar_event_repeat_not`
--
ALTER TABLE `c_calendar_event_repeat_not`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_chat_connected`
--
ALTER TABLE `c_chat_connected`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `user` (`user_id`),
  ADD KEY `char_connected_index` (`user_id`,`session_id`,`to_group_id`);

--
-- Indices de la tabla `c_course_description`
--
ALTER TABLE `c_course_description`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `session_id` (`session_id`);

--
-- Indices de la tabla `c_course_setting`
--
ALTER TABLE `c_course_setting`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_document`
--
ALTER TABLE `c_document`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_dropbox_category`
--
ALTER TABLE `c_dropbox_category`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indices de la tabla `c_dropbox_feedback`
--
ALTER TABLE `c_dropbox_feedback`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `file_id` (`file_id`),
  ADD KEY `author_user_id` (`author_user_id`);

--
-- Indices de la tabla `c_dropbox_file`
--
ALTER TABLE `c_dropbox_file`
  ADD PRIMARY KEY (`iid`),
  ADD UNIQUE KEY `UN_filename` (`filename`),
  ADD KEY `course` (`c_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indices de la tabla `c_dropbox_person`
--
ALTER TABLE `c_dropbox_person`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `user` (`user_id`);

--
-- Indices de la tabla `c_dropbox_post`
--
ALTER TABLE `c_dropbox_post`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `dest_user` (`dest_user_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indices de la tabla `c_forum_attachment`
--
ALTER TABLE `c_forum_attachment`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_forum_category`
--
ALTER TABLE `c_forum_category`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indices de la tabla `c_forum_forum`
--
ALTER TABLE `c_forum_forum`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_forum_mailcue`
--
ALTER TABLE `c_forum_mailcue`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `thread` (`thread_id`),
  ADD KEY `user` (`user_id`),
  ADD KEY `post` (`post_id`);

--
-- Indices de la tabla `c_forum_notification`
--
ALTER TABLE `c_forum_notification`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `thread` (`thread_id`),
  ADD KEY `post` (`post_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `forum_id` (`forum_id`);

--
-- Indices de la tabla `c_forum_post`
--
ALTER TABLE `c_forum_post`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `poster_id` (`poster_id`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `idx_forum_post_thread_id` (`thread_id`),
  ADD KEY `idx_forum_post_visible` (`visible`);

--
-- Indices de la tabla `c_forum_thread`
--
ALTER TABLE `c_forum_thread`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `idx_forum_thread_forum_id` (`forum_id`);

--
-- Indices de la tabla `c_forum_thread_qualify`
--
ALTER TABLE `c_forum_thread_qualify`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `user_id` (`user_id`,`thread_id`);

--
-- Indices de la tabla `c_forum_thread_qualify_log`
--
ALTER TABLE `c_forum_thread_qualify_log`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `user_id` (`user_id`,`thread_id`);

--
-- Indices de la tabla `c_glossary`
--
ALTER TABLE `c_glossary`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indices de la tabla `c_group_category`
--
ALTER TABLE `c_group_category`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_group_info`
--
ALTER TABLE `c_group_info`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indices de la tabla `c_group_rel_tutor`
--
ALTER TABLE `c_group_rel_tutor`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_group_rel_user`
--
ALTER TABLE `c_group_rel_user`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_item_property`
--
ALTER TABLE `c_item_property`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `IDX_1D84C18191D79BD3` (`c_id`),
  ADD KEY `IDX_1D84C181330D47E9` (`to_group_id`),
  ADD KEY `IDX_1D84C18129F6EE60` (`to_user_id`),
  ADD KEY `IDX_1D84C1819C859CC3` (`insert_user_id`),
  ADD KEY `IDX_1D84C181613FECDF` (`session_id`),
  ADD KEY `idx_item_property_toolref` (`tool`,`ref`);

--
-- Indices de la tabla `c_link`
--
ALTER TABLE `c_link`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indices de la tabla `c_link_category`
--
ALTER TABLE `c_link_category`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indices de la tabla `c_lp`
--
ALTER TABLE `c_lp`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `session` (`session_id`);

--
-- Indices de la tabla `c_lp_category`
--
ALTER TABLE `c_lp_category`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_lp_category_user`
--
ALTER TABLE `c_lp_category_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_61F042712469DE2` (`category_id`),
  ADD KEY `IDX_61F0427A76ED395` (`user_id`);

--
-- Indices de la tabla `c_lp_item`
--
ALTER TABLE `c_lp_item`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `lp_id` (`lp_id`),
  ADD KEY `idx_c_lp_item_cid_lp_id` (`c_id`,`lp_id`);

--
-- Indices de la tabla `c_lp_item_view`
--
ALTER TABLE `c_lp_item_view`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `lp_item_id` (`lp_item_id`),
  ADD KEY `lp_view_id` (`lp_view_id`),
  ADD KEY `idx_c_lp_item_view_cid_lp_view_id_lp_item_id` (`c_id`,`lp_view_id`,`lp_item_id`);

--
-- Indices de la tabla `c_lp_iv_interaction`
--
ALTER TABLE `c_lp_iv_interaction`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `lp_iv_id` (`lp_iv_id`);

--
-- Indices de la tabla `c_lp_iv_objective`
--
ALTER TABLE `c_lp_iv_objective`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `lp_iv_id` (`lp_iv_id`);

--
-- Indices de la tabla `c_lp_view`
--
ALTER TABLE `c_lp_view`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `lp_id` (`lp_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indices de la tabla `c_notebook`
--
ALTER TABLE `c_notebook`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_online_connected`
--
ALTER TABLE `c_online_connected`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_online_link`
--
ALTER TABLE `c_online_link`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_permission_group`
--
ALTER TABLE `c_permission_group`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_permission_task`
--
ALTER TABLE `c_permission_task`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_permission_user`
--
ALTER TABLE `c_permission_user`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_quiz`
--
ALTER TABLE `c_quiz`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indices de la tabla `c_quiz_answer`
--
ALTER TABLE `c_quiz_answer`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `idx_cqa_q` (`question_id`);

--
-- Indices de la tabla `c_quiz_question`
--
ALTER TABLE `c_quiz_question`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `position` (`position`);

--
-- Indices de la tabla `c_quiz_question_category`
--
ALTER TABLE `c_quiz_question_category`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_quiz_question_option`
--
ALTER TABLE `c_quiz_question_option`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_quiz_question_rel_category`
--
ALTER TABLE `c_quiz_question_rel_category`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `idx_qqrc_qid` (`question_id`);

--
-- Indices de la tabla `c_quiz_rel_category`
--
ALTER TABLE `c_quiz_rel_category`
  ADD PRIMARY KEY (`iid`);

--
-- Indices de la tabla `c_quiz_rel_question`
--
ALTER TABLE `c_quiz_rel_question`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `question` (`question_id`),
  ADD KEY `exercise` (`exercice_id`);

--
-- Indices de la tabla `c_resource`
--
ALTER TABLE `c_resource`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_role`
--
ALTER TABLE `c_role`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_role_group`
--
ALTER TABLE `c_role_group`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `group` (`group_id`);

--
-- Indices de la tabla `c_role_permissions`
--
ALTER TABLE `c_role_permissions`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `role` (`role_id`);

--
-- Indices de la tabla `c_role_user`
--
ALTER TABLE `c_role_user`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `user` (`user_id`);

--
-- Indices de la tabla `c_student_publication`
--
ALTER TABLE `c_student_publication`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `idx_csp_u` (`user_id`);

--
-- Indices de la tabla `c_student_publication_assignment`
--
ALTER TABLE `c_student_publication_assignment`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_student_publication_comment`
--
ALTER TABLE `c_student_publication_comment`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `user` (`user_id`),
  ADD KEY `work` (`work_id`);

--
-- Indices de la tabla `c_student_publication_rel_document`
--
ALTER TABLE `c_student_publication_rel_document`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `work` (`work_id`),
  ADD KEY `document` (`document_id`);

--
-- Indices de la tabla `c_student_publication_rel_user`
--
ALTER TABLE `c_student_publication_rel_user`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `work` (`work_id`),
  ADD KEY `user` (`user_id`);

--
-- Indices de la tabla `c_survey`
--
ALTER TABLE `c_survey`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indices de la tabla `c_survey_answer`
--
ALTER TABLE `c_survey_answer`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_survey_group`
--
ALTER TABLE `c_survey_group`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_survey_invitation`
--
ALTER TABLE `c_survey_invitation`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_survey_question`
--
ALTER TABLE `c_survey_question`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_survey_question_option`
--
ALTER TABLE `c_survey_question_option`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_thematic`
--
ALTER TABLE `c_thematic`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `active` (`active`,`session_id`);

--
-- Indices de la tabla `c_thematic_advance`
--
ALTER TABLE `c_thematic_advance`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `IDX_62798E9754177093` (`room_id`),
  ADD KEY `course` (`c_id`),
  ADD KEY `thematic_id` (`thematic_id`);

--
-- Indices de la tabla `c_thematic_plan`
--
ALTER TABLE `c_thematic_plan`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `thematic_id` (`thematic_id`,`description_type`);

--
-- Indices de la tabla `c_tool`
--
ALTER TABLE `c_tool`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indices de la tabla `c_tool_intro`
--
ALTER TABLE `c_tool_intro`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_userinfo_content`
--
ALTER TABLE `c_userinfo_content`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `c_userinfo_def`
--
ALTER TABLE `c_userinfo_def`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_wiki`
--
ALTER TABLE `c_wiki`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `reflink` (`reflink`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indices de la tabla `c_wiki_conf`
--
ALTER TABLE `c_wiki_conf`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `page_id` (`page_id`);

--
-- Indices de la tabla `c_wiki_discuss`
--
ALTER TABLE `c_wiki_discuss`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`);

--
-- Indices de la tabla `c_wiki_mailcue`
--
ALTER TABLE `c_wiki_mailcue`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `course` (`c_id`),
  ADD KEY `user` (`user_id`),
  ADD KEY `c_id` (`c_id`,`id`);

--
-- Indices de la tabla `event_email_template`
--
ALTER TABLE `event_email_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_name_index` (`event_type_name`);

--
-- Indices de la tabla `event_sent`
--
ALTER TABLE `event_sent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_name_index` (`event_type_name`);

--
-- Indices de la tabla `extra_field`
--
ALTER TABLE `extra_field`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `extra_field_options`
--
ALTER TABLE `extra_field_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A572E3AE443707B0` (`field_id`);

--
-- Indices de la tabla `extra_field_option_rel_field_option`
--
ALTER TABLE `extra_field_option_rel_field_option`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx` (`field_id`,`role_id`,`field_option_id`,`related_field_option_id`);

--
-- Indices de la tabla `extra_field_rel_tag`
--
ALTER TABLE `extra_field_rel_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field` (`field_id`),
  ADD KEY `item` (`item_id`),
  ADD KEY `tag` (`tag_id`),
  ADD KEY `field_item_tag` (`field_id`,`item_id`,`tag_id`);

--
-- Indices de la tabla `extra_field_saved_search`
--
ALTER TABLE `extra_field_saved_search`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_16ABE32A443707B0` (`field_id`),
  ADD KEY `IDX_16ABE32AA76ED395` (`user_id`);

--
-- Indices de la tabla `extra_field_values`
--
ALTER TABLE `extra_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_171DF924443707B0` (`field_id`),
  ADD KEY `idx_efv_fiii` (`field_id`,`item_id`);

--
-- Indices de la tabla `fos_group`
--
ALTER TABLE `fos_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4B019DDB77153098` (`code`);

--
-- Indices de la tabla `fos_user_user_group`
--
ALTER TABLE `fos_user_user_group`
  ADD PRIMARY KEY (`user_id`,`group_id`),
  ADD KEY `IDX_B3C77447A76ED395` (`user_id`),
  ADD KEY `IDX_B3C77447FE54D947` (`group_id`);

--
-- Indices de la tabla `gradebook_category`
--
ALTER TABLE `gradebook_category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gradebook_certificate`
--
ALTER TABLE `gradebook_certificate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_gradebook_certificate_category_id` (`cat_id`),
  ADD KEY `idx_gradebook_certificate_user_id` (`user_id`),
  ADD KEY `idx_gradebook_certificate_category_id_user_id` (`cat_id`,`user_id`);

--
-- Indices de la tabla `gradebook_evaluation`
--
ALTER TABLE `gradebook_evaluation`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gradebook_link`
--
ALTER TABLE `gradebook_link`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gradebook_linkeval_log`
--
ALTER TABLE `gradebook_linkeval_log`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gradebook_result`
--
ALTER TABLE `gradebook_result`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gradebook_result_log`
--
ALTER TABLE `gradebook_result_log`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gradebook_score_display`
--
ALTER TABLE `gradebook_score_display`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indices de la tabla `gradebook_score_log`
--
ALTER TABLE `gradebook_score_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_gradebook_score_log_user` (`user_id`),
  ADD KEY `idx_gradebook_score_log_user_category` (`user_id`,`category_id`);

--
-- Indices de la tabla `grade_components`
--
ALTER TABLE `grade_components`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grade_model`
--
ALTER TABLE `grade_model`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hook_call`
--
ALTER TABLE `hook_call`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hook_event`
--
ALTER TABLE `hook_event`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_name` (`class_name`);

--
-- Indices de la tabla `hook_observer`
--
ALTER TABLE `hook_observer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_name` (`class_name`);

--
-- Indices de la tabla `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D4DB71B5727ACA70` (`parent_id`),
  ADD KEY `idx_language_dokeos_folder` (`dokeos_folder`);

--
-- Indices de la tabla `legal`
--
ALTER TABLE `legal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_message_user_sender` (`user_sender_id`),
  ADD KEY `idx_message_user_receiver` (`user_receiver_id`),
  ADD KEY `idx_message_user_sender_user_receiver` (`user_sender_id`,`user_receiver_id`),
  ADD KEY `idx_message_group` (`group_id`),
  ADD KEY `idx_message_parent` (`parent_id`);

--
-- Indices de la tabla `message_attachment`
--
ALTER TABLE `message_attachment`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mail_notify_sent_index` (`sent_at`),
  ADD KEY `mail_notify_freq_index` (`sent_at`,`send_freq`,`created_at`);

--
-- Indices de la tabla `openid_association`
--
ALTER TABLE `openid_association`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_agenda`
--
ALTER TABLE `personal_agenda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_personal_agenda_user` (`user`),
  ADD KEY `idx_personal_agenda_parent` (`parent_event_id`);

--
-- Indices de la tabla `personal_agenda_repeat`
--
ALTER TABLE `personal_agenda_repeat`
  ADD PRIMARY KEY (`cal_id`);

--
-- Indices de la tabla `personal_agenda_repeat_not`
--
ALTER TABLE `personal_agenda_repeat_not`
  ADD PRIMARY KEY (`cal_id`,`cal_date`);

--
-- Indices de la tabla `plugin_bbb_meeting`
--
ALTER TABLE `plugin_bbb_meeting`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `plugin_bbb_room`
--
ALTER TABLE `plugin_bbb_room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meeting_id` (`meeting_id`),
  ADD KEY `participant_id` (`participant_id`);

--
-- Indices de la tabla `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_729F519BDCD6CC49` (`branch_id`);

--
-- Indices de la tabla `search_engine_ref`
--
ALTER TABLE `search_engine_ref`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sequence`
--
ALTER TABLE `sequence`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sequence_condition`
--
ALTER TABLE `sequence_condition`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sequence_formula`
--
ALTER TABLE `sequence_formula`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_533B9159B2D1386E` (`sequence_method_id`),
  ADD KEY `IDX_533B915955C65E08` (`sequence_variable_id`);

--
-- Indices de la tabla `sequence_method`
--
ALTER TABLE `sequence_method`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sequence_resource`
--
ALTER TABLE `sequence_resource`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_34ADA43998FB19AE` (`sequence_id`);

--
-- Indices de la tabla `sequence_row_entity`
--
ALTER TABLE `sequence_row_entity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2779761FAED14944` (`sequence_type_entity_id`);

--
-- Indices de la tabla `sequence_rule`
--
ALTER TABLE `sequence_rule`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sequence_rule_condition`
--
ALTER TABLE `sequence_rule_condition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F948EE6A4044CA89` (`sequence_rule_id`),
  ADD KEY `IDX_F948EE6A8C0A7083` (`sequence_condition_id`);

--
-- Indices de la tabla `sequence_rule_method`
--
ALTER TABLE `sequence_rule_method`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6336EA764044CA89` (`sequence_rule_id`),
  ADD KEY `IDX_6336EA76B2D1386E` (`sequence_method_id`);

--
-- Indices de la tabla `sequence_type_entity`
--
ALTER TABLE `sequence_type_entity`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sequence_valid`
--
ALTER TABLE `sequence_valid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F78B9CE655C65E08` (`sequence_variable_id`),
  ADD KEY `IDX_F78B9CE68C0A7083` (`sequence_condition_id`);

--
-- Indices de la tabla `sequence_value`
--
ALTER TABLE `sequence_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_66FBF12D218736B2` (`sequence_row_entity_id`);

--
-- Indices de la tabla `sequence_variable`
--
ALTER TABLE `sequence_variable`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `IDX_D044D5D4EE1F8395` (`session_category_id`),
  ADD KEY `idx_id_coach` (`id_coach`),
  ADD KEY `idx_id_session_admin_id` (`session_admin_id`);

--
-- Indices de la tabla `session_category`
--
ALTER TABLE `session_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8DE079A973444FD5` (`access_url_id`);

--
-- Indices de la tabla `session_rel_course`
--
ALTER TABLE `session_rel_course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_12D110D3613FECDF` (`session_id`),
  ADD KEY `idx_session_rel_course_course_id` (`c_id`);

--
-- Indices de la tabla `session_rel_course_rel_user`
--
ALTER TABLE `session_rel_course_rel_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_720167E613FECDF` (`session_id`),
  ADD KEY `idx_session_rel_course_rel_user_id_user` (`user_id`),
  ADD KEY `idx_session_rel_course_rel_user_course_id` (`c_id`);

--
-- Indices de la tabla `session_rel_user`
--
ALTER TABLE `session_rel_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B0D7D4C0613FECDF` (`session_id`),
  ADD KEY `IDX_B0D7D4C0A76ED395` (`user_id`),
  ADD KEY `idx_session_rel_user_id_user_moved` (`user_id`,`moved_to`);

--
-- Indices de la tabla `settings_current`
--
ALTER TABLE `settings_current`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_setting` (`variable`,`subkey`,`access_url`),
  ADD KEY `access_url` (`access_url`);

--
-- Indices de la tabla `settings_options`
--
ALTER TABLE `settings_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_setting_option` (`variable`,`value`);

--
-- Indices de la tabla `shared_survey`
--
ALTER TABLE `shared_survey`
  ADD PRIMARY KEY (`survey_id`),
  ADD UNIQUE KEY `id` (`survey_id`);

--
-- Indices de la tabla `shared_survey_question`
--
ALTER TABLE `shared_survey_question`
  ADD PRIMARY KEY (`question_id`);

--
-- Indices de la tabla `shared_survey_question_option`
--
ALTER TABLE `shared_survey_question_option`
  ADD PRIMARY KEY (`question_option_id`);

--
-- Indices de la tabla `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5E3DE477CCFA12B8` (`profile_id`);

--
-- Indices de la tabla `skill_level`
--
ALTER TABLE `skill_level`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BFC25F2FCCFA12B8` (`profile_id`);

--
-- Indices de la tabla `skill_level_profile`
--
ALTER TABLE `skill_level_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `skill_profile`
--
ALTER TABLE `skill_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `skill_rel_gradebook`
--
ALTER TABLE `skill_rel_gradebook`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `skill_rel_profile`
--
ALTER TABLE `skill_rel_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `skill_rel_skill`
--
ALTER TABLE `skill_rel_skill`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `skill_rel_user`
--
ALTER TABLE `skill_rel_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_79D3D95AA76ED395` (`user_id`),
  ADD KEY `IDX_79D3D95A5585C142` (`skill_id`),
  ADD KEY `IDX_79D3D95A591CC992` (`course_id`),
  ADD KEY `IDX_79D3D95A613FECDF` (`session_id`),
  ADD KEY `IDX_79D3D95AF68F11CE` (`acquired_level`),
  ADD KEY `idx_select_cs` (`course_id`,`session_id`),
  ADD KEY `idx_select_s_c_u` (`session_id`,`course_id`,`user_id`),
  ADD KEY `idx_select_sk_u` (`skill_id`,`user_id`);

--
-- Indices de la tabla `skill_rel_user_comment`
--
ALTER TABLE `skill_rel_user_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7AE9F6B6484A9317` (`skill_rel_user_id`),
  ADD KEY `IDX_7AE9F6B63AF3B65B` (`feedback_giver_id`),
  ADD KEY `idx_select_su_giver` (`skill_rel_user_id`,`feedback_giver_id`);

--
-- Indices de la tabla `specific_field`
--
ALTER TABLE `specific_field`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_specific_field__code` (`code`);

--
-- Indices de la tabla `specific_field_values`
--
ALTER TABLE `specific_field_values`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `system_template`
--
ALTER TABLE `system_template`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_announcement`
--
ALTER TABLE `sys_announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sys_calendar`
--
ALTER TABLE `sys_calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ticket_assigned_log`
--
ALTER TABLE `ticket_assigned_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_54B65868700047D2` (`ticket_id`),
  ADD KEY `IDX_54B65868A76ED395` (`user_id`);

--
-- Indices de la tabla `ticket_category`
--
ALTER TABLE `ticket_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8325E540166D1F9C` (`project_id`);

--
-- Indices de la tabla `ticket_category_rel_user`
--
ALTER TABLE `ticket_category_rel_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5B8A98712469DE2` (`category_id`),
  ADD KEY `IDX_5B8A987A76ED395` (`user_id`);

--
-- Indices de la tabla `ticket_message`
--
ALTER TABLE `ticket_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BA71692D700047D2` (`ticket_id`);

--
-- Indices de la tabla `ticket_message_attachments`
--
ALTER TABLE `ticket_message_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_70BF9E26700047D2` (`ticket_id`),
  ADD KEY `IDX_70BF9E26537A1329` (`message_id`);

--
-- Indices de la tabla `ticket_priority`
--
ALTER TABLE `ticket_priority`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ticket_project`
--
ALTER TABLE `ticket_project`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ticket_status`
--
ALTER TABLE `ticket_status`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ticket_ticket`
--
ALTER TABLE `ticket_ticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EDE2C768166D1F9C` (`project_id`),
  ADD KEY `IDX_EDE2C76812469DE2` (`category_id`),
  ADD KEY `IDX_EDE2C768497B19F9` (`priority_id`),
  ADD KEY `IDX_EDE2C768591CC992` (`course_id`),
  ADD KEY `IDX_EDE2C768613FECDF` (`session_id`),
  ADD KEY `IDX_EDE2C7686BF700BD` (`status_id`);

--
-- Indices de la tabla `track_course_ranking`
--
ALTER TABLE `track_course_ranking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tcc_cid` (`c_id`),
  ADD KEY `idx_tcc_sid` (`session_id`),
  ADD KEY `idx_tcc_urlid` (`url_id`),
  ADD KEY `idx_tcc_creation_date` (`creation_date`);

--
-- Indices de la tabla `track_e_access`
--
ALTER TABLE `track_e_access`
  ADD PRIMARY KEY (`access_id`),
  ADD KEY `access_user_id` (`access_user_id`),
  ADD KEY `access_c_id` (`c_id`),
  ADD KEY `access_session_id` (`access_session_id`);

--
-- Indices de la tabla `track_e_attempt`
--
ALTER TABLE `track_e_attempt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course` (`c_id`),
  ADD KEY `exe_id` (`exe_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indices de la tabla `track_e_attempt_coeff`
--
ALTER TABLE `track_e_attempt_coeff`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `track_e_attempt_recording`
--
ALTER TABLE `track_e_attempt_recording`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exe_id` (`exe_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indices de la tabla `track_e_course_access`
--
ALTER TABLE `track_e_course_access`
  ADD PRIMARY KEY (`course_access_id`),
  ADD KEY `course` (`c_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `login_course_date` (`login_course_date`),
  ADD KEY `session_id` (`session_id`);

--
-- Indices de la tabla `track_e_default`
--
ALTER TABLE `track_e_default`
  ADD PRIMARY KEY (`default_id`),
  ADD KEY `course` (`c_id`),
  ADD KEY `session` (`session_id`);

--
-- Indices de la tabla `track_e_downloads`
--
ALTER TABLE `track_e_downloads`
  ADD PRIMARY KEY (`down_id`),
  ADD KEY `idx_ted_user_id` (`down_user_id`),
  ADD KEY `idx_ted_c_id` (`c_id`),
  ADD KEY `down_session_id` (`down_session_id`);

--
-- Indices de la tabla `track_e_exercises`
--
ALTER TABLE `track_e_exercises`
  ADD PRIMARY KEY (`exe_id`),
  ADD KEY `idx_tee_user_id` (`exe_user_id`),
  ADD KEY `idx_tee_c_id` (`c_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indices de la tabla `track_e_hotpotatoes`
--
ALTER TABLE `track_e_hotpotatoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tehp_user_id` (`exe_user_id`),
  ADD KEY `idx_tehp_c_id` (`c_id`);

--
-- Indices de la tabla `track_e_hotspot`
--
ALTER TABLE `track_e_hotspot`
  ADD PRIMARY KEY (`hotspot_id`),
  ADD KEY `hotspot_course_code` (`hotspot_course_code`),
  ADD KEY `hotspot_user_id` (`hotspot_user_id`),
  ADD KEY `hotspot_exe_id` (`hotspot_exe_id`),
  ADD KEY `hotspot_question_id` (`hotspot_question_id`);

--
-- Indices de la tabla `track_e_item_property`
--
ALTER TABLE `track_e_item_property`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`,`item_property_id`,`session_id`);

--
-- Indices de la tabla `track_e_lastaccess`
--
ALTER TABLE `track_e_lastaccess`
  ADD PRIMARY KEY (`access_id`),
  ADD KEY `access_user_id` (`access_user_id`),
  ADD KEY `access_c_id` (`c_id`),
  ADD KEY `access_session_id` (`access_session_id`);

--
-- Indices de la tabla `track_e_links`
--
ALTER TABLE `track_e_links`
  ADD PRIMARY KEY (`links_id`),
  ADD KEY `idx_tel_c_id` (`c_id`),
  ADD KEY `idx_tel_user_id` (`links_user_id`),
  ADD KEY `links_session_id` (`links_session_id`);

--
-- Indices de la tabla `track_e_login`
--
ALTER TABLE `track_e_login`
  ADD PRIMARY KEY (`login_id`),
  ADD KEY `login_user_id` (`login_user_id`);

--
-- Indices de la tabla `track_e_online`
--
ALTER TABLE `track_e_online`
  ADD PRIMARY KEY (`login_id`),
  ADD KEY `course` (`c_id`),
  ADD KEY `login_user_id` (`login_user_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indices de la tabla `track_e_open`
--
ALTER TABLE `track_e_open`
  ADD PRIMARY KEY (`open_id`);

--
-- Indices de la tabla `track_e_uploads`
--
ALTER TABLE `track_e_uploads`
  ADD PRIMARY KEY (`upload_id`),
  ADD KEY `course` (`c_id`),
  ADD KEY `upload_user_id` (`upload_user_id`),
  ADD KEY `upload_cours_id` (`upload_cours_id`),
  ADD KEY `upload_session_id` (`upload_session_id`);

--
-- Indices de la tabla `track_stored_values`
--
ALTER TABLE `track_stored_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_2` (`user_id`,`sco_id`,`course_id`,`sv_key`);

--
-- Indices de la tabla `track_stored_values_stack`
--
ALTER TABLE `track_stored_values_stack`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_2` (`user_id`,`sco_id`,`course_id`,`sv_key`,`stack_order`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`),
  ADD KEY `idx_user_uid` (`user_id`),
  ADD KEY `status` (`status`);

--
-- Indices de la tabla `usergroup`
--
ALTER TABLE `usergroup`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usergroup_rel_course`
--
ALTER TABLE `usergroup_rel_course`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usergroup_rel_question`
--
ALTER TABLE `usergroup_rel_question`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usergroup_rel_session`
--
ALTER TABLE `usergroup_rel_session`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usergroup_rel_user`
--
ALTER TABLE `usergroup_rel_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_739515A9A76ED395` (`user_id`),
  ADD KEY `IDX_739515A9D2112630` (`usergroup_id`);

--
-- Indices de la tabla `usergroup_rel_usergroup`
--
ALTER TABLE `usergroup_rel_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_api_key`
--
ALTER TABLE `user_api_key`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_api_keys_user` (`user_id`);

--
-- Indices de la tabla `user_course_category`
--
ALTER TABLE `user_course_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_c_cat_uid` (`user_id`);

--
-- Indices de la tabla `user_friend_relation_type`
--
ALTER TABLE `user_friend_relation_type`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user_rel_course_vote`
--
ALTER TABLE `user_rel_course_vote`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ucv_cid` (`c_id`),
  ADD KEY `idx_ucv_uid` (`user_id`),
  ADD KEY `idx_ucv_cuid` (`user_id`,`c_id`);

--
-- Indices de la tabla `user_rel_event_type`
--
ALTER TABLE `user_rel_event_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_name_index` (`event_type_name`);

--
-- Indices de la tabla `user_rel_tag`
--
ALTER TABLE `user_rel_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_urt_uid` (`user_id`),
  ADD KEY `idx_urt_tid` (`tag_id`);

--
-- Indices de la tabla `user_rel_user`
--
ALTER TABLE `user_rel_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_rel_user__user` (`user_id`),
  ADD KEY `idx_user_rel_user__friend_user` (`friend_user_id`),
  ADD KEY `idx_user_rel_user__user_friend_user` (`user_id`,`friend_user_id`);

--
-- Indices de la tabla `version`
--
ALTER TABLE `version`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `version` (`version`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `access_url`
--
ALTER TABLE `access_url`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `access_url_rel_course`
--
ALTER TABLE `access_url_rel_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `access_url_rel_course_category`
--
ALTER TABLE `access_url_rel_course_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `access_url_rel_usergroup`
--
ALTER TABLE `access_url_rel_usergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `block`
--
ALTER TABLE `block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `branch_sync`
--
ALTER TABLE `branch_sync`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `branch_transaction`
--
ALTER TABLE `branch_transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `branch_transaction_status`
--
ALTER TABLE `branch_transaction_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `career`
--
ALTER TABLE `career`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `chat_video`
--
ALTER TABLE `chat_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `class_item`
--
ALTER TABLE `class_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `course_category`
--
ALTER TABLE `course_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `course_module`
--
ALTER TABLE `course_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `course_rel_user`
--
ALTER TABLE `course_rel_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `course_rel_user_catalogue`
--
ALTER TABLE `course_rel_user_catalogue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `course_request`
--
ALTER TABLE `course_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `course_type`
--
ALTER TABLE `course_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `c_announcement`
--
ALTER TABLE `c_announcement`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `c_announcement_attachment`
--
ALTER TABLE `c_announcement_attachment`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_attendance`
--
ALTER TABLE `c_attendance`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `c_attendance_calendar`
--
ALTER TABLE `c_attendance_calendar`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `c_attendance_calendar_rel_group`
--
ALTER TABLE `c_attendance_calendar_rel_group`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_attendance_result`
--
ALTER TABLE `c_attendance_result`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_attendance_sheet`
--
ALTER TABLE `c_attendance_sheet`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_attendance_sheet_log`
--
ALTER TABLE `c_attendance_sheet_log`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_blog`
--
ALTER TABLE `c_blog`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_blog_attachment`
--
ALTER TABLE `c_blog_attachment`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_blog_comment`
--
ALTER TABLE `c_blog_comment`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_blog_post`
--
ALTER TABLE `c_blog_post`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_blog_rating`
--
ALTER TABLE `c_blog_rating`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_blog_rel_user`
--
ALTER TABLE `c_blog_rel_user`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_blog_task`
--
ALTER TABLE `c_blog_task`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_blog_task_rel_user`
--
ALTER TABLE `c_blog_task_rel_user`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_calendar_event`
--
ALTER TABLE `c_calendar_event`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `c_calendar_event_attachment`
--
ALTER TABLE `c_calendar_event_attachment`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_calendar_event_repeat`
--
ALTER TABLE `c_calendar_event_repeat`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_calendar_event_repeat_not`
--
ALTER TABLE `c_calendar_event_repeat_not`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_chat_connected`
--
ALTER TABLE `c_chat_connected`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_course_description`
--
ALTER TABLE `c_course_description`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `c_course_setting`
--
ALTER TABLE `c_course_setting`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `c_document`
--
ALTER TABLE `c_document`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT de la tabla `c_dropbox_category`
--
ALTER TABLE `c_dropbox_category`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_dropbox_feedback`
--
ALTER TABLE `c_dropbox_feedback`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_dropbox_file`
--
ALTER TABLE `c_dropbox_file`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `c_dropbox_person`
--
ALTER TABLE `c_dropbox_person`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `c_dropbox_post`
--
ALTER TABLE `c_dropbox_post`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `c_forum_attachment`
--
ALTER TABLE `c_forum_attachment`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_forum_category`
--
ALTER TABLE `c_forum_category`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_forum_forum`
--
ALTER TABLE `c_forum_forum`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_forum_mailcue`
--
ALTER TABLE `c_forum_mailcue`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_forum_notification`
--
ALTER TABLE `c_forum_notification`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_forum_post`
--
ALTER TABLE `c_forum_post`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_forum_thread`
--
ALTER TABLE `c_forum_thread`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_forum_thread_qualify`
--
ALTER TABLE `c_forum_thread_qualify`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_forum_thread_qualify_log`
--
ALTER TABLE `c_forum_thread_qualify_log`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_glossary`
--
ALTER TABLE `c_glossary`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT de la tabla `c_group_category`
--
ALTER TABLE `c_group_category`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `c_group_info`
--
ALTER TABLE `c_group_info`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_group_rel_tutor`
--
ALTER TABLE `c_group_rel_tutor`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_group_rel_user`
--
ALTER TABLE `c_group_rel_user`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_item_property`
--
ALTER TABLE `c_item_property`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;
--
-- AUTO_INCREMENT de la tabla `c_link`
--
ALTER TABLE `c_link`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_link_category`
--
ALTER TABLE `c_link_category`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_lp`
--
ALTER TABLE `c_lp`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `c_lp_category`
--
ALTER TABLE `c_lp_category`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `c_lp_category_user`
--
ALTER TABLE `c_lp_category_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_lp_item`
--
ALTER TABLE `c_lp_item`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT de la tabla `c_lp_item_view`
--
ALTER TABLE `c_lp_item_view`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;
--
-- AUTO_INCREMENT de la tabla `c_lp_iv_interaction`
--
ALTER TABLE `c_lp_iv_interaction`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_lp_iv_objective`
--
ALTER TABLE `c_lp_iv_objective`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_lp_view`
--
ALTER TABLE `c_lp_view`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `c_notebook`
--
ALTER TABLE `c_notebook`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_online_connected`
--
ALTER TABLE `c_online_connected`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_online_link`
--
ALTER TABLE `c_online_link`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_permission_group`
--
ALTER TABLE `c_permission_group`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_permission_task`
--
ALTER TABLE `c_permission_task`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_permission_user`
--
ALTER TABLE `c_permission_user`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_quiz`
--
ALTER TABLE `c_quiz`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `c_quiz_answer`
--
ALTER TABLE `c_quiz_answer`
  MODIFY `iid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT de la tabla `c_quiz_question`
--
ALTER TABLE `c_quiz_question`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `c_quiz_question_category`
--
ALTER TABLE `c_quiz_question_category`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_quiz_question_option`
--
ALTER TABLE `c_quiz_question_option`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_quiz_question_rel_category`
--
ALTER TABLE `c_quiz_question_rel_category`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_quiz_rel_category`
--
ALTER TABLE `c_quiz_rel_category`
  MODIFY `iid` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_quiz_rel_question`
--
ALTER TABLE `c_quiz_rel_question`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `c_resource`
--
ALTER TABLE `c_resource`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_role`
--
ALTER TABLE `c_role`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_role_group`
--
ALTER TABLE `c_role_group`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_role_permissions`
--
ALTER TABLE `c_role_permissions`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_role_user`
--
ALTER TABLE `c_role_user`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_student_publication`
--
ALTER TABLE `c_student_publication`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `c_student_publication_assignment`
--
ALTER TABLE `c_student_publication_assignment`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `c_student_publication_comment`
--
ALTER TABLE `c_student_publication_comment`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_student_publication_rel_document`
--
ALTER TABLE `c_student_publication_rel_document`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_student_publication_rel_user`
--
ALTER TABLE `c_student_publication_rel_user`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_survey`
--
ALTER TABLE `c_survey`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `c_survey_answer`
--
ALTER TABLE `c_survey_answer`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `c_survey_group`
--
ALTER TABLE `c_survey_group`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_survey_invitation`
--
ALTER TABLE `c_survey_invitation`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `c_survey_question`
--
ALTER TABLE `c_survey_question`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `c_survey_question_option`
--
ALTER TABLE `c_survey_question_option`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `c_thematic`
--
ALTER TABLE `c_thematic`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `c_thematic_advance`
--
ALTER TABLE `c_thematic_advance`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `c_thematic_plan`
--
ALTER TABLE `c_thematic_plan`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_tool`
--
ALTER TABLE `c_tool`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT de la tabla `c_tool_intro`
--
ALTER TABLE `c_tool_intro`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `c_userinfo_content`
--
ALTER TABLE `c_userinfo_content`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_userinfo_def`
--
ALTER TABLE `c_userinfo_def`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_wiki`
--
ALTER TABLE `c_wiki`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `c_wiki_conf`
--
ALTER TABLE `c_wiki_conf`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `c_wiki_discuss`
--
ALTER TABLE `c_wiki_discuss`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `c_wiki_mailcue`
--
ALTER TABLE `c_wiki_mailcue`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `event_email_template`
--
ALTER TABLE `event_email_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `event_sent`
--
ALTER TABLE `event_sent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `extra_field`
--
ALTER TABLE `extra_field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `extra_field_options`
--
ALTER TABLE `extra_field_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `extra_field_option_rel_field_option`
--
ALTER TABLE `extra_field_option_rel_field_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `extra_field_rel_tag`
--
ALTER TABLE `extra_field_rel_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `extra_field_saved_search`
--
ALTER TABLE `extra_field_saved_search`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `extra_field_values`
--
ALTER TABLE `extra_field_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `fos_group`
--
ALTER TABLE `fos_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `gradebook_category`
--
ALTER TABLE `gradebook_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `gradebook_certificate`
--
ALTER TABLE `gradebook_certificate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `gradebook_evaluation`
--
ALTER TABLE `gradebook_evaluation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `gradebook_link`
--
ALTER TABLE `gradebook_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `gradebook_linkeval_log`
--
ALTER TABLE `gradebook_linkeval_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `gradebook_result`
--
ALTER TABLE `gradebook_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `gradebook_result_log`
--
ALTER TABLE `gradebook_result_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `gradebook_score_display`
--
ALTER TABLE `gradebook_score_display`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `gradebook_score_log`
--
ALTER TABLE `gradebook_score_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT de la tabla `grade_components`
--
ALTER TABLE `grade_components`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `grade_model`
--
ALTER TABLE `grade_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `hook_call`
--
ALTER TABLE `hook_call`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `hook_event`
--
ALTER TABLE `hook_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `hook_observer`
--
ALTER TABLE `hook_observer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT de la tabla `legal`
--
ALTER TABLE `legal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `message`
--
ALTER TABLE `message`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT de la tabla `message_attachment`
--
ALTER TABLE `message_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `notification`
--
ALTER TABLE `notification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT de la tabla `openid_association`
--
ALTER TABLE `openid_association`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `personal_agenda`
--
ALTER TABLE `personal_agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `personal_agenda_repeat`
--
ALTER TABLE `personal_agenda_repeat`
  MODIFY `cal_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `plugin_bbb_meeting`
--
ALTER TABLE `plugin_bbb_meeting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `plugin_bbb_room`
--
ALTER TABLE `plugin_bbb_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `search_engine_ref`
--
ALTER TABLE `search_engine_ref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `sequence`
--
ALTER TABLE `sequence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `sequence_condition`
--
ALTER TABLE `sequence_condition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `sequence_formula`
--
ALTER TABLE `sequence_formula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `sequence_method`
--
ALTER TABLE `sequence_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `sequence_resource`
--
ALTER TABLE `sequence_resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `sequence_row_entity`
--
ALTER TABLE `sequence_row_entity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `sequence_rule`
--
ALTER TABLE `sequence_rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `sequence_rule_condition`
--
ALTER TABLE `sequence_rule_condition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `sequence_rule_method`
--
ALTER TABLE `sequence_rule_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `sequence_type_entity`
--
ALTER TABLE `sequence_type_entity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `sequence_valid`
--
ALTER TABLE `sequence_valid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `sequence_value`
--
ALTER TABLE `sequence_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `sequence_variable`
--
ALTER TABLE `sequence_variable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `session_category`
--
ALTER TABLE `session_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `session_rel_course`
--
ALTER TABLE `session_rel_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `session_rel_course_rel_user`
--
ALTER TABLE `session_rel_course_rel_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `session_rel_user`
--
ALTER TABLE `session_rel_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `settings_current`
--
ALTER TABLE `settings_current`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;
--
-- AUTO_INCREMENT de la tabla `settings_options`
--
ALTER TABLE `settings_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=445;
--
-- AUTO_INCREMENT de la tabla `shared_survey`
--
ALTER TABLE `shared_survey`
  MODIFY `survey_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `shared_survey_question`
--
ALTER TABLE `shared_survey_question`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `shared_survey_question_option`
--
ALTER TABLE `shared_survey_question_option`
  MODIFY `question_option_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `skill`
--
ALTER TABLE `skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `skill_level`
--
ALTER TABLE `skill_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `skill_level_profile`
--
ALTER TABLE `skill_level_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `skill_profile`
--
ALTER TABLE `skill_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `skill_rel_gradebook`
--
ALTER TABLE `skill_rel_gradebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `skill_rel_profile`
--
ALTER TABLE `skill_rel_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `skill_rel_skill`
--
ALTER TABLE `skill_rel_skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `skill_rel_user`
--
ALTER TABLE `skill_rel_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `skill_rel_user_comment`
--
ALTER TABLE `skill_rel_user_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `specific_field`
--
ALTER TABLE `specific_field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `specific_field_values`
--
ALTER TABLE `specific_field_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `system_template`
--
ALTER TABLE `system_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `sys_announcement`
--
ALTER TABLE `sys_announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `sys_calendar`
--
ALTER TABLE `sys_calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ticket_assigned_log`
--
ALTER TABLE `ticket_assigned_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ticket_category`
--
ALTER TABLE `ticket_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `ticket_category_rel_user`
--
ALTER TABLE `ticket_category_rel_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ticket_message`
--
ALTER TABLE `ticket_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ticket_message_attachments`
--
ALTER TABLE `ticket_message_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ticket_priority`
--
ALTER TABLE `ticket_priority`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `ticket_project`
--
ALTER TABLE `ticket_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `ticket_status`
--
ALTER TABLE `ticket_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `ticket_ticket`
--
ALTER TABLE `ticket_ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `track_course_ranking`
--
ALTER TABLE `track_course_ranking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `track_e_access`
--
ALTER TABLE `track_e_access`
  MODIFY `access_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=508;
--
-- AUTO_INCREMENT de la tabla `track_e_attempt`
--
ALTER TABLE `track_e_attempt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT de la tabla `track_e_attempt_coeff`
--
ALTER TABLE `track_e_attempt_coeff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `track_e_attempt_recording`
--
ALTER TABLE `track_e_attempt_recording`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `track_e_course_access`
--
ALTER TABLE `track_e_course_access`
  MODIFY `course_access_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT de la tabla `track_e_default`
--
ALTER TABLE `track_e_default`
  MODIFY `default_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de la tabla `track_e_downloads`
--
ALTER TABLE `track_e_downloads`
  MODIFY `down_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;
--
-- AUTO_INCREMENT de la tabla `track_e_exercises`
--
ALTER TABLE `track_e_exercises`
  MODIFY `exe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `track_e_hotpotatoes`
--
ALTER TABLE `track_e_hotpotatoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `track_e_hotspot`
--
ALTER TABLE `track_e_hotspot`
  MODIFY `hotspot_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `track_e_item_property`
--
ALTER TABLE `track_e_item_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `track_e_lastaccess`
--
ALTER TABLE `track_e_lastaccess`
  MODIFY `access_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT de la tabla `track_e_links`
--
ALTER TABLE `track_e_links`
  MODIFY `links_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `track_e_login`
--
ALTER TABLE `track_e_login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT de la tabla `track_e_online`
--
ALTER TABLE `track_e_online`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `track_e_open`
--
ALTER TABLE `track_e_open`
  MODIFY `open_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `track_e_uploads`
--
ALTER TABLE `track_e_uploads`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `track_stored_values`
--
ALTER TABLE `track_stored_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `track_stored_values_stack`
--
ALTER TABLE `track_stored_values_stack`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `usergroup`
--
ALTER TABLE `usergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usergroup_rel_course`
--
ALTER TABLE `usergroup_rel_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usergroup_rel_question`
--
ALTER TABLE `usergroup_rel_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usergroup_rel_session`
--
ALTER TABLE `usergroup_rel_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usergroup_rel_user`
--
ALTER TABLE `usergroup_rel_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usergroup_rel_usergroup`
--
ALTER TABLE `usergroup_rel_usergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `user_api_key`
--
ALTER TABLE `user_api_key`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `user_course_category`
--
ALTER TABLE `user_course_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `user_friend_relation_type`
--
ALTER TABLE `user_friend_relation_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `user_rel_course_vote`
--
ALTER TABLE `user_rel_course_vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `user_rel_event_type`
--
ALTER TABLE `user_rel_event_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `user_rel_tag`
--
ALTER TABLE `user_rel_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `user_rel_user`
--
ALTER TABLE `user_rel_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `version`
--
ALTER TABLE `version`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `access_url_rel_course`
--
ALTER TABLE `access_url_rel_course`
  ADD CONSTRAINT `FK_8E97FC0873444FD5` FOREIGN KEY (`access_url_id`) REFERENCES `access_url` (`id`),
  ADD CONSTRAINT `FK_8E97FC0891D79BD3` FOREIGN KEY (`c_id`) REFERENCES `course` (`id`);

--
-- Filtros para la tabla `access_url_rel_user`
--
ALTER TABLE `access_url_rel_user`
  ADD CONSTRAINT `FK_8557426373444FD5` FOREIGN KEY (`access_url_id`) REFERENCES `access_url` (`id`),
  ADD CONSTRAINT `FK_85574263A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `branch_sync`
--
ALTER TABLE `branch_sync`
  ADD CONSTRAINT `FK_F62F45ED727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `branch_sync` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `branch_transaction`
--
ALTER TABLE `branch_transaction`
  ADD CONSTRAINT `FK_FEFBA12B6BF700BD` FOREIGN KEY (`status_id`) REFERENCES `branch_transaction_status` (`id`),
  ADD CONSTRAINT `FK_FEFBA12BDCD6CC49` FOREIGN KEY (`branch_id`) REFERENCES `branch_sync` (`id`);

--
-- Filtros para la tabla `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `FK_169E6FB954177093` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`);

--
-- Filtros para la tabla `course_rel_user`
--
ALTER TABLE `course_rel_user`
  ADD CONSTRAINT `FK_92CFD9FE91D79BD3` FOREIGN KEY (`c_id`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `FK_92CFD9FEA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `course_rel_user_catalogue`
--
ALTER TABLE `course_rel_user_catalogue`
  ADD CONSTRAINT `FK_79CA412E91D79BD3` FOREIGN KEY (`c_id`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `FK_79CA412EA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `c_calendar_event`
--
ALTER TABLE `c_calendar_event`
  ADD CONSTRAINT `FK_A062258154177093` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`);

--
-- Filtros para la tabla `c_item_property`
--
ALTER TABLE `c_item_property`
  ADD CONSTRAINT `FK_1D84C18129F6EE60` FOREIGN KEY (`to_user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_1D84C181330D47E9` FOREIGN KEY (`to_group_id`) REFERENCES `c_group_info` (`iid`),
  ADD CONSTRAINT `FK_1D84C181613FECDF` FOREIGN KEY (`session_id`) REFERENCES `session` (`id`),
  ADD CONSTRAINT `FK_1D84C18191D79BD3` FOREIGN KEY (`c_id`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `FK_1D84C1819C859CC3` FOREIGN KEY (`insert_user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `c_lp_category_user`
--
ALTER TABLE `c_lp_category_user`
  ADD CONSTRAINT `FK_61F042712469DE2` FOREIGN KEY (`category_id`) REFERENCES `c_lp_category` (`iid`),
  ADD CONSTRAINT `FK_61F0427A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `c_student_publication`
--
ALTER TABLE `c_student_publication`
  ADD CONSTRAINT `FK_5246F746613FECDF` FOREIGN KEY (`session_id`) REFERENCES `session` (`id`);

--
-- Filtros para la tabla `c_thematic_advance`
--
ALTER TABLE `c_thematic_advance`
  ADD CONSTRAINT `FK_62798E9754177093` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`);

--
-- Filtros para la tabla `extra_field_options`
--
ALTER TABLE `extra_field_options`
  ADD CONSTRAINT `FK_A572E3AE443707B0` FOREIGN KEY (`field_id`) REFERENCES `extra_field` (`id`);

--
-- Filtros para la tabla `extra_field_saved_search`
--
ALTER TABLE `extra_field_saved_search`
  ADD CONSTRAINT `FK_16ABE32A443707B0` FOREIGN KEY (`field_id`) REFERENCES `extra_field` (`id`),
  ADD CONSTRAINT `FK_16ABE32AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `extra_field_values`
--
ALTER TABLE `extra_field_values`
  ADD CONSTRAINT `FK_171DF924443707B0` FOREIGN KEY (`field_id`) REFERENCES `extra_field` (`id`);

--
-- Filtros para la tabla `fos_user_user_group`
--
ALTER TABLE `fos_user_user_group`
  ADD CONSTRAINT `FK_B3C77447A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_B3C77447FE54D947` FOREIGN KEY (`group_id`) REFERENCES `fos_group` (`id`);

--
-- Filtros para la tabla `language`
--
ALTER TABLE `language`
  ADD CONSTRAINT `FK_D4DB71B5727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `language` (`id`);

--
-- Filtros para la tabla `plugin_bbb_room`
--
ALTER TABLE `plugin_bbb_room`
  ADD CONSTRAINT `plugin_bbb_room_ibfk_1` FOREIGN KEY (`meeting_id`) REFERENCES `plugin_bbb_meeting` (`id`),
  ADD CONSTRAINT `plugin_bbb_room_ibfk_2` FOREIGN KEY (`participant_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `FK_729F519BDCD6CC49` FOREIGN KEY (`branch_id`) REFERENCES `branch_sync` (`id`);

--
-- Filtros para la tabla `sequence_formula`
--
ALTER TABLE `sequence_formula`
  ADD CONSTRAINT `FK_533B915955C65E08` FOREIGN KEY (`sequence_variable_id`) REFERENCES `sequence_variable` (`id`),
  ADD CONSTRAINT `FK_533B9159B2D1386E` FOREIGN KEY (`sequence_method_id`) REFERENCES `sequence_method` (`id`);

--
-- Filtros para la tabla `sequence_resource`
--
ALTER TABLE `sequence_resource`
  ADD CONSTRAINT `FK_34ADA43998FB19AE` FOREIGN KEY (`sequence_id`) REFERENCES `sequence` (`id`);

--
-- Filtros para la tabla `sequence_row_entity`
--
ALTER TABLE `sequence_row_entity`
  ADD CONSTRAINT `FK_2779761FAED14944` FOREIGN KEY (`sequence_type_entity_id`) REFERENCES `sequence_type_entity` (`id`);

--
-- Filtros para la tabla `sequence_rule_condition`
--
ALTER TABLE `sequence_rule_condition`
  ADD CONSTRAINT `FK_F948EE6A4044CA89` FOREIGN KEY (`sequence_rule_id`) REFERENCES `sequence_rule` (`id`),
  ADD CONSTRAINT `FK_F948EE6A8C0A7083` FOREIGN KEY (`sequence_condition_id`) REFERENCES `sequence_condition` (`id`);

--
-- Filtros para la tabla `sequence_rule_method`
--
ALTER TABLE `sequence_rule_method`
  ADD CONSTRAINT `FK_6336EA764044CA89` FOREIGN KEY (`sequence_rule_id`) REFERENCES `sequence_rule` (`id`),
  ADD CONSTRAINT `FK_6336EA76B2D1386E` FOREIGN KEY (`sequence_method_id`) REFERENCES `sequence_method` (`id`);

--
-- Filtros para la tabla `sequence_valid`
--
ALTER TABLE `sequence_valid`
  ADD CONSTRAINT `FK_F78B9CE655C65E08` FOREIGN KEY (`sequence_variable_id`) REFERENCES `sequence_variable` (`id`),
  ADD CONSTRAINT `FK_F78B9CE68C0A7083` FOREIGN KEY (`sequence_condition_id`) REFERENCES `sequence_condition` (`id`);

--
-- Filtros para la tabla `sequence_value`
--
ALTER TABLE `sequence_value`
  ADD CONSTRAINT `FK_66FBF12D218736B2` FOREIGN KEY (`sequence_row_entity_id`) REFERENCES `sequence_row_entity` (`id`);

--
-- Filtros para la tabla `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `FK_D044D5D4D1DC2CFC` FOREIGN KEY (`id_coach`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_D044D5D4EE1F8395` FOREIGN KEY (`session_category_id`) REFERENCES `session_category` (`id`);

--
-- Filtros para la tabla `session_category`
--
ALTER TABLE `session_category`
  ADD CONSTRAINT `FK_8DE079A973444FD5` FOREIGN KEY (`access_url_id`) REFERENCES `access_url` (`id`);

--
-- Filtros para la tabla `session_rel_course`
--
ALTER TABLE `session_rel_course`
  ADD CONSTRAINT `FK_12D110D3613FECDF` FOREIGN KEY (`session_id`) REFERENCES `session` (`id`),
  ADD CONSTRAINT `FK_12D110D391D79BD3` FOREIGN KEY (`c_id`) REFERENCES `course` (`id`);

--
-- Filtros para la tabla `session_rel_course_rel_user`
--
ALTER TABLE `session_rel_course_rel_user`
  ADD CONSTRAINT `FK_720167E613FECDF` FOREIGN KEY (`session_id`) REFERENCES `session` (`id`),
  ADD CONSTRAINT `FK_720167E91D79BD3` FOREIGN KEY (`c_id`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `FK_720167EA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `session_rel_user`
--
ALTER TABLE `session_rel_user`
  ADD CONSTRAINT `FK_B0D7D4C0613FECDF` FOREIGN KEY (`session_id`) REFERENCES `session` (`id`),
  ADD CONSTRAINT `FK_B0D7D4C0A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `skill`
--
ALTER TABLE `skill`
  ADD CONSTRAINT `FK_5E3DE477CCFA12B8` FOREIGN KEY (`profile_id`) REFERENCES `skill_level_profile` (`id`);

--
-- Filtros para la tabla `skill_level`
--
ALTER TABLE `skill_level`
  ADD CONSTRAINT `FK_BFC25F2FCCFA12B8` FOREIGN KEY (`profile_id`) REFERENCES `skill_level_profile` (`id`);

--
-- Filtros para la tabla `skill_rel_user`
--
ALTER TABLE `skill_rel_user`
  ADD CONSTRAINT `FK_79D3D95A5585C142` FOREIGN KEY (`skill_id`) REFERENCES `skill` (`id`),
  ADD CONSTRAINT `FK_79D3D95A591CC992` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `FK_79D3D95A613FECDF` FOREIGN KEY (`session_id`) REFERENCES `session` (`id`),
  ADD CONSTRAINT `FK_79D3D95AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_79D3D95AF68F11CE` FOREIGN KEY (`acquired_level`) REFERENCES `skill_level` (`id`);

--
-- Filtros para la tabla `skill_rel_user_comment`
--
ALTER TABLE `skill_rel_user_comment`
  ADD CONSTRAINT `FK_7AE9F6B63AF3B65B` FOREIGN KEY (`feedback_giver_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_7AE9F6B6484A9317` FOREIGN KEY (`skill_rel_user_id`) REFERENCES `skill_rel_user` (`id`);

--
-- Filtros para la tabla `ticket_assigned_log`
--
ALTER TABLE `ticket_assigned_log`
  ADD CONSTRAINT `FK_54B65868700047D2` FOREIGN KEY (`ticket_id`) REFERENCES `ticket_ticket` (`id`),
  ADD CONSTRAINT `FK_54B65868A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `ticket_category`
--
ALTER TABLE `ticket_category`
  ADD CONSTRAINT `FK_8325E540166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `ticket_project` (`id`);

--
-- Filtros para la tabla `ticket_category_rel_user`
--
ALTER TABLE `ticket_category_rel_user`
  ADD CONSTRAINT `FK_5B8A98712469DE2` FOREIGN KEY (`category_id`) REFERENCES `ticket_category` (`id`),
  ADD CONSTRAINT `FK_5B8A987A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `ticket_message`
--
ALTER TABLE `ticket_message`
  ADD CONSTRAINT `FK_BA71692D700047D2` FOREIGN KEY (`ticket_id`) REFERENCES `ticket_ticket` (`id`);

--
-- Filtros para la tabla `ticket_message_attachments`
--
ALTER TABLE `ticket_message_attachments`
  ADD CONSTRAINT `FK_70BF9E26537A1329` FOREIGN KEY (`message_id`) REFERENCES `ticket_message` (`id`),
  ADD CONSTRAINT `FK_70BF9E26700047D2` FOREIGN KEY (`ticket_id`) REFERENCES `ticket_ticket` (`id`);

--
-- Filtros para la tabla `ticket_ticket`
--
ALTER TABLE `ticket_ticket`
  ADD CONSTRAINT `FK_EDE2C76812469DE2` FOREIGN KEY (`category_id`) REFERENCES `ticket_category` (`id`),
  ADD CONSTRAINT `FK_EDE2C768166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `ticket_project` (`id`),
  ADD CONSTRAINT `FK_EDE2C768497B19F9` FOREIGN KEY (`priority_id`) REFERENCES `ticket_priority` (`id`),
  ADD CONSTRAINT `FK_EDE2C768591CC992` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `FK_EDE2C768613FECDF` FOREIGN KEY (`session_id`) REFERENCES `session` (`id`),
  ADD CONSTRAINT `FK_EDE2C7686BF700BD` FOREIGN KEY (`status_id`) REFERENCES `ticket_status` (`id`);

--
-- Filtros para la tabla `usergroup_rel_user`
--
ALTER TABLE `usergroup_rel_user`
  ADD CONSTRAINT `FK_739515A9A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_739515A9D2112630` FOREIGN KEY (`usergroup_id`) REFERENCES `usergroup` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
