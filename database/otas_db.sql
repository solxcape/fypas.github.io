-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 04:24 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `otas_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `archive_list`
--

CREATE TABLE `archive_list` (
  `id` int(30) NOT NULL,
  `archive_code` varchar(100) NOT NULL,
  `curriculum_id` int(30) NOT NULL,
  `year` year(4) NOT NULL,
  `title` text NOT NULL,
  `abstract` text NOT NULL,
  `members` text NOT NULL,
  `banner_path` text NOT NULL,
  `document_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `student_id` int(30) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `archive_list`
--

INSERT INTO `archive_list` (`id`, `archive_code`, `curriculum_id`, `year`, `title`, `abstract`, `members`, `banner_path`, `document_path`, `status`, `student_id`, `date_created`, `date_updated`) VALUES
(6, '2023110001', 16, 2023, 'REPORT: SMART ATTENDANCE SYSTEM USING VOICE SENSOR FOR DISABLED STUDENTS', '&lt;p&gt;&amp;nbsp;The attendance management system is an essential component of any \r\neducational institution, ensuring that student attendance is accurately tracked \r\nand recorded. However, traditional methods of attendance management, such as \r\npaper-based systems and manual record-keeping, are time-consuming and error prone. To overcome these challenges, an intelligent attendance system can be \r\ndeveloped using voice sensors.\r\nThe intelligent attendance system is designed to automate the attendance \r\nrecording process, making it more efficient and accurate. By using voice \r\nsensors, the system can detect and record student attendance in real time, \r\neliminating the need for manual recording. The system can also be integrated \r\nwith other technologies such as machine learning and artificial intelligence to \r\nimprove its functionality.&amp;nbsp;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;PRAVINDRA KUMAR A/L SURESH&lt;/p&gt;', 'uploads/banners/archive-6.png?v=1700762654', 'uploads/pdf/archive-6.pdf?v=1700762654', 1, 8, '2023-11-24 02:04:13', '2023-11-24 14:42:12'),
(7, '2023110002', 16, 2023, 'PROPOSAL: FIRE FIGHTING ROBOT USING ARDUNIO UNO ', '&lt;p&gt;We live in the age of technology, yet in fire fighting techniques we have not even \r\nscratched the surface. In the event of a fire breakout, human resources are exploited to \r\nsimultaneously extinguish the fire as well as rescue which is unsafe. In this project, \r\nwe will build a robot using Arduino that could move towards the fire and pump out \r\nwater to extinguish the fire. The system can be divided into three different modules \r\nsensor module, Arduino module and the appliance module. The project is summarized \r\nin different section, in the literature review section, the research and motivation for \r\nthe project is included. In the proposed system the block diagram and flowchart of the \r\nsystem is given. In component details various components used in the system used are \r\ngiven, followed by conclusion and references.&amp;nbsp;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;THARUN KUMAR S/O SELVAM&amp;nbsp;&lt;br&gt;&lt;/p&gt;', 'uploads/banners/archive-7.png?v=1700763139', 'uploads/pdf/archive-7.pdf?v=1700763139', 1, 9, '2023-11-24 02:12:18', '2023-11-24 02:16:17'),
(8, '2023110003', 1, 2023, 'PROPOSAL: FINAL YEAR PROJECT ARCHIVE SYSTEM', '&lt;p&gt;The rapid advancement of digital technologies has transformed education at Politeknik\r\nSeberang Perai, prompting a need to leverage digital platforms for an enriched learning\r\nexperience. This proposal outlines the development of an &quot;FYP Archive System&quot; to empower\r\nstudents and administrators in Information Technology (IT) education.\r\nThe system allows students to upload their Final Year Project (FYP) reports, undergoing\r\nverification by administrators before publication. The idea of archiving FYPs is inherently\r\nrooted in the broader concept of open access to educational materials, a notion that has gained\r\nincreasing prominence in the world of academia.\r\nExtensive research studies, exemplified by the work of Obuh and Bozimo (2012), underscore\r\nthe significance of open access resources, particularly in the context of education. Open\r\naccess not only democratizes access to knowledge but also enhances the overall quality of the\r\nlearning experience. Our proposed FYP Archive System aligns seamlessly with this\r\nphilosophy, promoting knowledge sharing, collaboration, and continuous improvement in IT\r\neducation and related fields.\r\nIn upcoming sections, we\'ll explore objectives, features, benefits, cost planning, and a\r\ncomprehensive literature review. Our goal is to enhance IT education, fostering collaboration,\r\ninnovation, and knowledge dissemination.\r\nThis FYP Archive System aims to provide a valuable resource for students and streamline\r\nadministrative processes at Politeknik Seberang Perai, advancing the institution\'s IT\r\neducation.&lt;br&gt;&lt;/p&gt;', '&lt;ol&gt;&lt;li&gt;SOLOMON RAJ PHILIP&lt;/li&gt;&lt;li&gt;MUHAMMAD FARHAN BIN RIDZUAN&lt;/li&gt;&lt;li&gt;ANBUARASI A/P CHANDRAN&lt;br&gt;&lt;/li&gt;&lt;/ol&gt;', 'uploads/banners/archive-8.png?v=1700763784', 'uploads/pdf/archive-8.pdf?v=1700763784', 1, 10, '2023-11-24 02:23:04', '2023-11-24 02:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_list`
--

CREATE TABLE `curriculum_list` (
  `id` int(30) NOT NULL,
  `department_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `curriculum_list`
--

INSERT INTO `curriculum_list` (`id`, `department_id`, `name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(1, 5, 'Diploma Teknologi Maklumat (Teknologi Digital)', 'Bertumpu kepada teknologi digital, melengkapi pelajar dengan kemahiran IT dan pengetahuan untuk industri moden.', 1, '2023-10-12 10:10:20', '2023-11-23 10:58:32'),
(3, 2, 'Diploma Kejuruteraan Mekanikal', 'Melibatkan sistem mekanikal, reka bentuk, dan penyelenggaraan, menyediakan pelajar untuk kerjaya dalam bidang kejuruteraan dan pembuatan.', 1, '2023-10-12 10:12:50', '2023-11-23 10:59:02'),
(4, 4, 'Diploma Kejuruteraan Elektronik (Komputer)', 'Melibatkan sistem elektronik, pemrograman komputer, dan penyelenggaraan, menyediakan pelajar dengan kemahiran dan pengetahuan untuk kerjaya dalam bidang kejuruteraan elektronik dan teknologi maklumat.', 1, '2023-10-12 10:13:10', '2023-11-23 11:03:31'),
(7, 3, 'Diploma Akauntasi', 'Menyediakan asas dalam prinsip dan amalan perakaunan, mempersiapkan pelajar untuk kerjaya dalam bidang kewangan dan pengauditan', 1, '2023-10-12 10:15:28', '2023-11-23 10:50:49'),
(10, 3, 'Diploma Pengajian Perniagaan', 'Memberikan landasan dalam prinsip dan amalan Pengajian Perniagaan, mempersiapkan pelajar untuk kerjaya dalam bidang perniagaan dan pengurusan.', 1, '2023-11-23 10:51:56', NULL),
(11, 3, 'Diploma Kewangan Dan Perbankan Islam', 'Diploma Kewangan dan Perbankan Islam membekalkan pengetahuan dalam aspek kewangan syariah, mempersiapkan pelajar untuk menyertai industri perbankan Islam dengan kecekapan dan pemahaman mendalam.', 1, '2023-11-23 10:53:01', NULL),
(12, 3, 'Diploma Pengurusan Logistik dan Rangkaian Bekalan', 'Diploma Pengurusan Logistik dan Rangkaian Bekalan memberi tumpuan kepada pembangunan kemahiran dalam pengurusan dan pengoptimuman rangkaian bekalan. Program ini mempersiapkan pelajar untuk memasuki bidang industri logistik dengan kecekapan dalam perancangan, pelaksanaan, dan pemantauan operasi logistik.', 1, '2023-11-23 10:53:33', NULL),
(13, 2, 'Diploma Kejuruteraan Mekanikal (Loji)', 'Melibatkan penerapan konsep-konsep sistem mekanikal, reka bentuk, dan penyelenggaraan loji. Ia menyediakan pelajar dengan kemahiran dan pengetahuan yang diperlukan untuk berkecimpung dalam kerjaya di bidang kejuruteraan dan pembuatan, membuka peluang yang luas dalam industri berkenaan.', 1, '2023-11-23 11:00:54', NULL),
(14, 2, 'Diploma Kejuruteraan Mekanikal (Pembuatan)', 'Melibatkan sistem mekanikal, reka bentuk, dan penyelenggaraan, memberikan pelajar asas kukuh untuk kerjaya dalam kejuruteraan dan pembuatan. Program ini menitikberatkan latihan praktikal dan pengetahuan teknikal bagi mempersiapkan graduan untuk keperluan industri moden.', 1, '2023-11-23 11:01:51', NULL),
(15, 2, 'Diploma Kejuruteraan Mekanikal (Tekstil)', 'Melibatkan penerokaan dalam sistem mekanikal khususnya dalam konteks tekstil, termasuk reka bentuk dan penyelenggaraan. Ia memberikan pelajar persediaan untuk melangkah ke dalam kerjaya berkaitan kejuruteraan tekstil dan pembuatan.', 1, '2023-11-23 11:02:47', NULL),
(16, 4, 'Diploma Kejuruteraan Elektronik (Komunikasi)', 'Melibatkan pengajian dalam sistem komunikasi elektronik, reka bentuk peranti komunikasi, dan penyelenggaraan. Program ini menyediakan pelajar dengan pengetahuan dan kemahiran untuk melangkah ke dalam kerjaya yang berfokus dalam bidang kejuruteraan elektronik dan komunikasi.', 1, '2023-11-23 11:04:11', NULL),
(17, 4, 'Diploma Kejuruteraan Elektrik dan Elektronik', 'Melibatkan pengetahuan dalam kejuruteraan elektrik dan elektronik, merangkumi pembelajaran mengenai sistem elektrik, reka bentuk, dan penyelenggaraan, serta menyediakan pelajar dengan kemahiran untuk mengejar kerjaya dalam sektor kejuruteraan elektrik dan elektronik.', 1, '2023-11-23 11:04:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department_list`
--

CREATE TABLE `department_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department_list`
--

INSERT INTO `department_list` (`id`, `name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(2, 'Jabatan Kejuruteraan Mekanikal (JKM)', 'Inovatif dan mendidik dalam sistem mekanikal, reka bentuk, dan teknologi pembuatan.', 1, '2023-10-12 09:28:33', '2023-11-23 10:56:18'),
(3, 'Jabatan Perdagangan (JP)', 'Bertanggungjawab terhadap perdagangan, industri, dasar ekonomi, dan memupuk pertumbuhan ekonomi serta kestabilan.', 1, '2021-12-07 09:34:11', '2023-11-23 10:55:16'),
(4, 'Jabatan Kejuruteraan Elektrik (JKE)', 'Penyelidikan inovatif, teknologi mutakhir, dan profesional yang mahir membentuk masa depan.', 1, '2021-12-07 09:34:55', '2023-11-23 10:57:16'),
(5, 'Jabatan Teknologi Maklumat & Komunikasi (JTMK)', 'Bertumpu kepada teknologi, komunikasi, dan sistem maklumat untuk inovasi dan transformasi digital.', 1, '2021-12-07 09:35:19', '2023-11-23 10:56:46');

-- --------------------------------------------------------

--
-- Table structure for table `student_list`
--

CREATE TABLE `student_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `matrix` text NOT NULL,
  `lastname` text NOT NULL,
  `department_id` int(30) NOT NULL,
  `curriculum_id` int(30) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `gender` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_list`
--

INSERT INTO `student_list` (`id`, `firstname`, `matrix`, `lastname`, `department_id`, `curriculum_id`, `email`, `password`, `gender`, `status`, `avatar`, `date_created`, `date_updated`) VALUES
(8, 'Pravindra Kumar', '10DEP21F1022', 'Suresh', 4, 16, '10dep21f1022@student.psp.edu.my', '565030361308394ebe57141d47c9e9bd', 'Male', 1, 'uploads/student-8.png?v=1700762394', '2023-11-24 01:54:43', '2023-11-24 01:59:54'),
(9, 'THARUN KUMAR ', '10DEP21F1040', 'SELVAM', 4, 16, '10DEP21F1040@student.psp.edu.my', '82d4565f090c474e8aeab090268b8049', 'Male', 1, 'uploads/student-9.png?v=1700763035', '2023-11-24 02:09:08', '2023-11-24 02:10:35'),
(10, 'Solomon Raj', '10DDT21F1056', 'Philip', 5, 1, '10DDT21F1056@student.psp.edu.my', 'b7bb49f1867c0ee929f8ec74334c86a0', 'Male', 1, 'uploads/student-10.png?v=1700763404', '2023-11-24 02:15:49', '2023-11-24 02:16:44');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Final Year Project Archive System -PSP'),
(6, 'short_name', 'FYPAS'),
(11, 'logo', 'uploads/logo-1638840281.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1699328945.png'),
(15, 'content', 'Array'),
(16, 'email', 'ukk@psp.edu.my'),
(17, 'contact', '04-5383322'),
(18, 'from_time', '11:00'),
(19, 'to_time', '21:30'),
(20, 'address', 'Politeknik Seberang Perai , Jalan Permatang Pauh\r\n13500 Permatang Pauh, Pulau Pinang.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', NULL, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/student-1.png?v=1639202560', NULL, 1, 1, '2021-01-20 14:02:37', '2021-12-11 14:02:40'),
(2, 'Claire', NULL, 'Blake', 'cblake', '4744ddea876b11dcb1d169fadf494418', 'uploads/avatar-2.png?v=1639377482', NULL, 2, 1, '2021-12-13 14:38:02', '2021-12-13 14:38:02'),
(3, 'IZZIANI BINTI AZIZAN', NULL, 'PN.', 'izziani', 'c430d2fa6f48542f6daf7ba83c5afcad', NULL, NULL, 2, 1, '2023-11-24 02:27:44', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archive_list`
--
ALTER TABLE `archive_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curriculum_id` (`curriculum_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `department_list`
--
ALTER TABLE `department_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_list`
--
ALTER TABLE `student_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING HASH,
  ADD KEY `department_id` (`department_id`),
  ADD KEY `curriculum_id` (`curriculum_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archive_list`
--
ALTER TABLE `archive_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `department_list`
--
ALTER TABLE `department_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_list`
--
ALTER TABLE `student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `archive_list`
--
ALTER TABLE `archive_list`
  ADD CONSTRAINT `archive_list_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_list` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  ADD CONSTRAINT `curriculum_list_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_list`
--
ALTER TABLE `student_list`
  ADD CONSTRAINT `student_list_ibfk_1` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_list_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
