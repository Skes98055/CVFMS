SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE TABLE `recordfms1` (
  `record_ID` int(11) NOT NULL,
  `sport_id` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_record` int(11) DEFAULT NULL,
  `knee_score` float DEFAULT NULL,
  `bottom_score` float DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `recordfms2` (
  `record_ID` int(11) NOT NULL,
  `sport_id` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_record` int(11) DEFAULT NULL,
  `score_L` int(11) DEFAULT NULL,
  `score_R` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `recordfms3` (
  `record_ID` int(11) NOT NULL,
  `sport_id` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_record` int(11) DEFAULT NULL,
  `score_L` int(11) DEFAULT NULL,
  `score_R` int(11) DEFAULT NULL,
  `tibial` decimal(5,2) DEFAULT NULL,
  `L_distance` decimal(5,2) DEFAULT NULL,
  `R_distance` decimal(5,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `recordfms4` (
  `record_ID` int(11) NOT NULL,
  `sport_id` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_record` int(11) DEFAULT NULL,
  `score_L` int(11) DEFAULT NULL,
  `score_R` int(11) DEFAULT NULL,
  `L_distance` decimal(5,2) DEFAULT NULL,
  `R_distance` decimal(5,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `recordfms5` (
  `record_ID` int(11) NOT NULL,
  `sport_id` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_record` int(11) DEFAULT NULL,
  `score_L` int(11) DEFAULT NULL,
  `score_R` int(11) DEFAULT NULL,
  `L_distance` decimal(5,2) DEFAULT NULL,
  `R_distance` decimal(5,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `recordfms6` (
  `record_ID` int(11) NOT NULL,
  `sport_id` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_record` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `recordfms7` (
  `record_ID` int(11) NOT NULL,
  `sport_id` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_record` int(11) DEFAULT NULL,
  `score_L` int(11) DEFAULT NULL,
  `score_R` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `sport` (
  `ID` varchar(10) NOT NULL,
  `運動` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `topic_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `gender` enum('男','女') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birth_year` int(11) DEFAULT NULL,
  `height` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `dominant_hand` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `distance_to_tibial_tuberosity` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

ALTER TABLE `recordfms1`
  ADD PRIMARY KEY (`record_ID`),
  ADD KEY `sport_id` (`sport_id`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `recordfms2`
  ADD PRIMARY KEY (`record_ID`),
  ADD KEY `sport_id` (`sport_id`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `recordfms3`
  ADD PRIMARY KEY (`record_ID`),
  ADD KEY `sport_id` (`sport_id`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `recordfms4`
  ADD PRIMARY KEY (`record_ID`),
  ADD KEY `sport_id` (`sport_id`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `recordfms5`
  ADD PRIMARY KEY (`record_ID`),
  ADD KEY `sport_id` (`sport_id`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `recordfms6`
  ADD PRIMARY KEY (`record_ID`),
  ADD KEY `sport_id` (`sport_id`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `recordfms7`
  ADD PRIMARY KEY (`record_ID`),
  ADD KEY `sport_id` (`sport_id`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `sport`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `topic_users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `recordfms1`
  MODIFY `record_ID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `recordfms2`
  MODIFY `record_ID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `recordfms3`
  MODIFY `record_ID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `recordfms4`
  MODIFY `record_ID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `recordfms5`
  MODIFY `record_ID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `recordfms6`
  MODIFY `record_ID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `recordfms7`
  MODIFY `record_ID` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `topic_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `recordfms1`
  ADD CONSTRAINT `recordfms1_ibfk_1` FOREIGN KEY (`sport_id`) REFERENCES `sport` (`ID`),
  ADD CONSTRAINT `recordfms1_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `topic_users` (`id`);

ALTER TABLE `recordfms2`
  ADD CONSTRAINT `recordfms2_ibfk_1` FOREIGN KEY (`sport_id`) REFERENCES `sport` (`ID`),
  ADD CONSTRAINT `recordfms2_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `topic_users` (`id`);

ALTER TABLE `recordfms3`
  ADD CONSTRAINT `recordfms3_ibfk_1` FOREIGN KEY (`sport_id`) REFERENCES `sport` (`ID`),
  ADD CONSTRAINT `recordfms3_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `topic_users` (`id`);

ALTER TABLE `recordfms4`
  ADD CONSTRAINT `recordfms4_ibfk_1` FOREIGN KEY (`sport_id`) REFERENCES `sport` (`ID`),
  ADD CONSTRAINT `recordfms4_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `topic_users` (`id`);

ALTER TABLE `recordfms5`
  ADD CONSTRAINT `recordfms5_ibfk_1` FOREIGN KEY (`sport_id`) REFERENCES `sport` (`ID`),
  ADD CONSTRAINT `recordfms5_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `topic_users` (`id`);

ALTER TABLE `recordfms6`
  ADD CONSTRAINT `recordfms6_ibfk_1` FOREIGN KEY (`sport_id`) REFERENCES `sport` (`ID`),
  ADD CONSTRAINT `recordfms6_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `topic_users` (`id`);

ALTER TABLE `recordfms7`
  ADD CONSTRAINT `recordfms7_ibfk_1` FOREIGN KEY (`sport_id`) REFERENCES `sport` (`ID`),
  ADD CONSTRAINT `recordfms7_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `topic_users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
