-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: students
-- ------------------------------------------------------
-- Server version	8.0.32

DROP DATABASE IF EXISTS `studentsdb`;
CREATE DATABASE studentsdb;
USE studentsdb;
--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` text,
  `lname` text,
  `born` int,
  `group` int,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO students (fname, lname, born, `group`, description)
VALUES ('John', 'Doe', 1990, 1, 'Sample student description'),
       ('Jane', 'Smith', 1995, 2, 'Sample student description'),
       ('Michael', 'Johnson', 1988, 1, 'Sample student description'),
       ('Sarah', 'Williams', 1992, 2, 'Sample student description'),
       ('David', 'Brown', 1985, 1, 'Sample student description'),
       ('Emily', 'Davis', 1993, 2, 'Sample student description'),
       ('Olivia', 'Miller', 1989, 1, 'Sample student description'),
       ('James', 'Wilson', 1991, 2, 'Sample student description'),
       ('Sophia', 'Taylor', 1987, 1, 'Sample student description'),
       ('Daniel', 'Anderson', 1994, 2, 'Sample student description'),
       ('Matthew', 'Thomas', 1986, 1, 'Sample student description'),
       ('Emma', 'Jackson', 1990, 2, 'Sample student description'),
       ('Christopher', 'White', 1984, 1, 'Sample student description'),
       ('Ava', 'Harris', 1992, 2, 'Sample student description'),
       ('Henry', 'Martin', 1988, 1, 'Sample student description'),
       ('Isabella', 'Thompson', 1993, 2, 'Sample student description'),
       ('Joseph', 'Garcia', 1989, 1, 'Sample student description'),
       ('Charlotte', 'Martinez', 1985, 2, 'Sample student description'),
       ('Mason', 'Robinson', 1994, 1, 'Sample student description'),
       ('Amelia', 'Clark', 1986, 2, 'Sample student description');
--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int NOT NULL,
  `testcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `test` VALUES (1,'Sample 1'),(2,'Sample 2'),(3,'Sample 3'),(4,'Sample 4'),(5,'Sample 5'),(6,'Sample 6'),(7,'Sample 7'),(8,'Sample 8'),(9,'Sample 9'),(10,'Sample 10'),(11,'Sample 11'),(12,'Sample 12'),(13,'Sample 13');
