-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Apr 18, 2023 at 04:00 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Aid` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `password` text NOT NULL,
  `location` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Aid`, `name`, `email`, `password`, `location`, `address`) VALUES
(1, 'Grace Peter Charitable Trust', 'gracepetertrust@rediffmail.com', '$2y$10$0aBbyDrlUyHxrrq5UrVSV.4.uZYyAMQM23xlA8spBJlMFM.atg6N.', 'madurai', 'Narmatha Nadhi 4th street\nMahatma Gandhi Nagar,\nMadurai 625014 Tamilnadu'),
(2, 'JK MAASS Foundation', 'msjeyaram151@yahoo.co.in', '$2y$10$FqcIkuYEpCTF49O94LJAleKKIptLqYwhrtDMGO/BKOoKlOxp5KqiW', 'madurai', 'Corporation School Complex,\r\nPillaimar Street, Arapalayam,\r\nMadurai 625016 Tamilnadu');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_persons`
--

CREATE TABLE `delivery_persons` (
  `Did` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `city` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_persons`
--

INSERT INTO `delivery_persons` (`Did`, `name`, `email`, `password`, `city`) VALUES
(1, 'kishor', 'kishorkishor2003@gmail.com', '$2y$10$U0xPH4SUnY02/O0ntq4OOeDyQa22hqgEZJ1BpSQUxSQO9c0f6L53O', 'madurai'),
(2, 'abinesh', 'bsabineshakash@gmail.com', '$2y$10$oNVmNXPDemRh.GYUCnFwbOCQiDjs5GYQzW44aObl2e1XQfWQna42i', 'madurai'),
(3, 'jaweed', 'aktharjaweed960@gmail.com', '$2y$10$mtje.aVssLc6SJoq2WkvnOWCVrVno1DWc2Mv6Hlrbw1MRW/MkL0rm', 'madurai'),
(4, 'Bruce', 'brucelee@gmail.com', '$2y$10$h0mHuqnkkdIwBlHWDYmVU.U1GdT35ZflIkuTBeKg5Cze1lofzRVIe', 'chennai');

-- --------------------------------------------------------

--
-- Table structure for table `food_donations`
--

CREATE TABLE `food_donations` (
  `Fid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `food` varchar(50) NOT NULL,
  `type` text NOT NULL,
  `category` text NOT NULL,
  `quantity` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `address` text NOT NULL,
  `location` varchar(50) NOT NULL,
  `phoneno` varchar(25) NOT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `delivery_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_donations`
--

INSERT INTO `food_donations` (`Fid`, `name`, `email`, `food`, `type`, `category`, `quantity`, `date`, `address`, `location`, `phoneno`, `assigned_to`, `delivery_by`) VALUES
(1, 'abinesh', 'bsabineshakash@gmail.com', 'rice', 'veg', 'raw-food', '2kg', '2023-02-27 21:48:28', 'teppakulam ', 'madurai', '8190958524', 2, NULL),
(2, 'arun', 'arun26ifs@gmail.com', 'biryani', 'Non-veg', 'cooked-food', '10 ', '2023-02-28 10:58:22', 'palanganatham', 'madurai', '9500458458', NULL, 1),
(3, 'Kishor ', 'kishorkishor2003@gmail.com', 'rice', 'veg', 'cooked-food', '5 members ', '2023-02-28 11:19:22', '14/3 kuttaiyapillai street thiruparankundram , madurai-625004', 'madurai', '8903732696', 1, NULL),
(16, 'prasanna', 'bprasanna0502@gmail.com', 'dosa', 'veg', 'cooked-food', '10', '2023-03-01 16:35:52', 'sk nagar , avaniyapuram', 'madurai', '9442454056', NULL, 3),
(24, 'prasanna', 'bprasanna0502@gmail.com', 'rice', 'Non-veg', 'cooked-food', '20 person', '2023-03-23 20:07:42', 'sk nagar , avaniyapuram', 'madurai', '9442454056', 1, NULL),
(25, 'kishor', 'kishorkishor2003@gmail.com', 'biryani', 'Non-veg', 'cooked-food', '10 persons', '2023-03-25 19:38:17', 'thiruparankundram , madurai 625005', 'madurai', '8903732696', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` text NOT NULL,
  `gender` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`, `gender`) VALUES
(4, 'jaweed', 'aktharjaweed960@gmail.com', '$2y$10$eQBj0BmgLw7N9ds3VKMwdOubOLnSptAv/95DORtN1VKqUSB2J7c6q', 'male'),
(5, 'arun', 'arun26ifs@gmail.com', '$2y$10$ltW6Q.7MDyR0wOMEOug2leBUHnJfnPIWrbm3cK89TnUFACWVwxpr2', 'male'),
(15, 'ben10', 'ben10@gmail.com', '$2y$10$m3ie0BIOrvvLmdwZEkdIfej/GQAxFjoNMVi5N6PYt309zM6EES08y', 'male'),
(3, 'prasanna', 'bprasanna0502@gmail.com', '$2y$10$/6X4FVq6tgVMEHrlANJmmuz7fMwFXglgXhD0i7SaCSIlC7PiviJsK', 'male'),
(12, 'brucelee', 'brucelee@gmail.com', '$2y$10$LNBp7.rOdQ0.kZLyyX4aNu4nP74rhJNYsaf2YU/HPWtBl0Yt9Dnmm', 'male'),
(2, 'abinesh', 'bsabineshakash@gmail.com', '$2y$10$ApMV.ogNyHs.UjChqtCquOGQdm1e/fXX.Tt1BxOAJIf5MdxdzuuBO', 'male'),
(8, 'Hermione', 'hermionegranger@gmail.com', '$2y$10$fV581kzjEb/OBRDK9NBZ5e9AgyAxvbyJ/DTf.VHPvEo6Bnvy9W5vG', 'female'),
(14, 'jackie chan', 'jackiechan@gmail.com', '$2y$10$d0N1UpsgiWt7qzqILdSYgunBqX..v3hAH6cCH6F/tSAVtBmyBOsgi', ''),
(9, 'Julie ', 'julie@gmail.com', '$2y$10$mb1d7mFpnSREi/oxikXl9eJ.nT2UOlB9r9mTlzKbyNvuryTFYrHMW', 'female'),
(1, 'kishor', 'kishorkishor2003@gmail.com', '$2y$10$THB6vwyuwmymYYAhBhCTEuPP/YBwr1P0XT8bURCMEZJqW/SYOsXnO', 'male'),
(6, 'Surya Prakash ', 'psuryaprakash50@gmail.com', '$2y$10$zrhdQ4QLsyf2kOakfIdadeVoExYxMzZlY.boZ4w99gPmYL4ZrpnH2', 'male'),
(7, 'Sam ', 'sam@gmail.com', '$2y$10$vTBcDGh3zVd6nEmWvIJtK.Lez3x1viaDwKjfQkTdT.nrffRyy1MZm', 'female'),
(13, 'shin chan', 'shinchan@gmail.com', '$2y$10$y.WkYbeVi5B9seYf1zBAl.zJhsrJ/MVxtNwrhwd0V6Ie8b90s1OAC', 'male'),
(10, 'Tokyo ', 'tokyo@gmail.com', '$2y$10$SSnK5Zs8PjtE6OVciJh4cuccbcnBtJ5AeEPlB67h1QgBKZvnAE1TW', 'female'),
(16, 'tom', 'tom@gmail.com', '$2y$10$qOaZqrkjp23R2H0ZOBAnoeFisamMDOGzoIj4fh06F6S5AJR6QtI.m', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `user_feedback`
--

CREATE TABLE `user_feedback` (
  `feedback_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_feedback`
--

INSERT INTO `user_feedback` (`feedback_id`, `name`, `email`, `message`) VALUES
(1, 'John Smith', 'john@example.com', 'I really enjoyed using your product!'),
(2, 'prasanna', 'bprasanna0502@gmail.com', 'good'),
(3, 'prasanna', 'bprasanna0502@gmail.com', 'liked it'),
(4, 'prasanna', 'bprasanna0502@gmail.com', 'great'),
(5, 'abi', 'bsabineshakash@gmail.com', 'great'),
(6, 'arun', 'arun26ifs@gmail.com', 'not good');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Aid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `delivery_persons`
--
ALTER TABLE `delivery_persons`
  ADD PRIMARY KEY (`Did`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `food_donations`
--
ALTER TABLE `food_donations`
  ADD PRIMARY KEY (`Fid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_feedback`
--
ALTER TABLE `user_feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `delivery_persons`
--
ALTER TABLE `delivery_persons`
  MODIFY `Did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `food_donations`
--
ALTER TABLE `food_donations`
  MODIFY `Fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_feedback`
--
ALTER TABLE `user_feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
