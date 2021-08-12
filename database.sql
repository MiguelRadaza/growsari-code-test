-- Student Table
CREATE TABLE `students` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Sample Data

INSERT INTO `students`(`ID`, `name`, `lastName`, `status`, `created_at`) VALUES (1, 'Miguels', 'Igdalino', 0, '2021-08-12');
INSERT INTO `students`(`ID`, `name`, `lastName`, `status`, `created_at`) VALUES (2, 'Miguels', 'radazaaawdawd', 0, '2021-08-12');
INSERT INTO `students`(`ID`, `name`, `lastName`, `status`, `created_at`) VALUES (3, 'Constance Kramer', 'Keller', 0, '2021-08-12');
INSERT INTO `students`(`ID`, `name`, `lastName`, `status`, `created_at`) VALUES (4, 'Halla Hensley', 'Bryant', 0, '2021-08-12');
INSERT INTO `students`(`ID`, `name`, `lastName`, `status`, `created_at`) VALUES (5, 'Brock Hansonss', 'Reeves', 0, '2021-08-12');
INSERT INTO `students`(`ID`, `name`, `lastName`, `status`, `created_at`) VALUES (6, 'Halee Zamora', 'Blackburn', 1, '2021-08-12');
INSERT INTO `students`(`ID`, `name`, `lastName`, `status`, `created_at`) VALUES (7, 'Adena Lynn', 'Chen', 1, '2021-08-12');
INSERT INTO `students`(`ID`, `name`, `lastName`, `status`, `created_at`) VALUES (8, 'Branden Spence', 'Holloway', 1, '2021-08-12');
INSERT INTO `students`(`ID`, `name`, `lastName`, `status`, `created_at`) VALUES (9, 'Kalia Shelton', 'Delgado', 1, '2021-08-12');
INSERT INTO `students`(`ID`, `name`, `lastName`, `status`, `created_at`) VALUES (10, 'Jordan Gates', 'Barron', 1, '2021-08-12');
INSERT INTO `students`(`ID`, `name`, `lastName`, `status`, `created_at`) VALUES (11, 'Sylvia Stephens', 'Jefferson', 1, '2021-08-12');
INSERT INTO `students`(`ID`, `name`, `lastName`, `status`, `created_at`) VALUES (12, 'Charlotte Beard', 'Morris', 1, '2021-08-12');
INSERT INTO `students`(`ID`, `name`, `lastName`, `status`, `created_at`) VALUES (13, 'Jamalia Camacho', 'Kerr', 1, '2021-08-12');
INSERT INTO `students`(`ID`, `name`, `lastName`, `status`, `created_at`) VALUES (14, 'Addison Kelley', 'Silva', 1, '2021-08-12');
INSERT INTO `students`(`ID`, `name`, `lastName`, `status`, `created_at`) VALUES (15, 'Hadassah Crane', 'Galloway', 1, '2021-08-12');
INSERT INTO `students`(`ID`, `name`, `lastName`, `status`, `created_at`) VALUES (16, 'Uriel Morris', 'Puckett', 1, '2021-08-12');
INSERT INTO `students`(`ID`, `name`, `lastName`, `status`, `created_at`) VALUES (17, 'Thaddeus Vega', 'Grimes', 1, '2021-08-12');
INSERT INTO `students`(`ID`, `name`, `lastName`, `status`, `created_at`) VALUES (18, 'Nolan Blankenship', 'Dudley', 1, '2021-08-12');
INSERT INTO `students`(`ID`, `name`, `lastName`, `status`, `created_at`) VALUES (19, 'Ignatius Torresssss', 'Blackwell', 1, '2021-08-12');
INSERT INTO `students`(`ID`, `name`, `lastName`, `status`, `created_at`) VALUES (20, 'Ignatius Torres', 'Blackwell', 0, '2021-08-12');
