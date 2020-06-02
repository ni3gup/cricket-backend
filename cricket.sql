-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 02, 2020 at 01:45 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricket`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'India', '2020-06-01 17:16:12', '2020-06-01 17:16:12');

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id` int(11) NOT NULL,
  `match_no` int(11) NOT NULL,
  `team_one_id` int(11) NOT NULL,
  `team_two_id` int(11) NOT NULL,
  `venue_id` int(11) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`id`, `match_no`, `team_one_id`, `team_two_id`, `venue_id`, `completed`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 1, 1, '2020-06-01 17:25:18', '2020-06-01 21:34:41'),
(2, 2, 3, 4, 3, 1, '2020-06-01 17:25:18', '2020-06-01 21:34:41'),
(3, 3, 1, 3, 1, 1, '2020-06-01 17:25:53', '2020-06-01 21:34:41'),
(4, 4, 2, 4, 2, 1, '2020-06-01 17:25:53', '2020-06-01 21:34:41'),
(5, 5, 1, 4, 1, 1, '2020-06-01 17:26:33', '2020-06-01 21:34:41'),
(6, 6, 3, 2, 3, 1, '2020-06-01 17:26:33', '2020-06-01 21:52:40');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `country_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `country_id`, `team_id`, `created_at`, `updated_at`) VALUES
(1, 'Mahendra Singh Dhoni', 1, 1, '2020-06-02 14:45:08', '2020-06-02 14:45:08');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `match_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `points_earned` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `match_id`, `team_id`, `points_earned`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, '2020-06-02 04:25:27', '2020-06-02 04:25:27'),
(2, 1, 2, 0, '2020-06-02 04:25:27', '2020-06-02 04:25:27'),
(3, 2, 3, 0, '2020-06-02 04:25:59', '2020-06-02 04:25:59'),
(4, 2, 4, 2, '2020-06-02 04:25:59', '2020-06-02 04:25:59'),
(5, 3, 1, 2, '2020-06-02 04:26:14', '2020-06-02 04:26:14'),
(6, 3, 3, 0, '2020-06-02 04:26:14', '2020-06-02 04:26:14'),
(7, 4, 2, 2, '2020-06-02 04:28:59', '2020-06-02 04:28:59'),
(8, 4, 4, 0, '2020-06-02 04:28:59', '2020-06-02 04:28:59'),
(9, 5, 1, 2, '2020-06-02 04:29:13', '2020-06-02 04:29:13'),
(10, 5, 4, 0, '2020-06-02 04:29:13', '2020-06-02 04:29:13'),
(11, 6, 3, 0, '2020-06-02 04:29:28', '2020-06-02 04:29:28'),
(12, 6, 2, 2, '2020-06-02 04:29:28', '2020-06-02 04:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `country_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'CSK', 1, '2020-06-01 17:16:41', '2020-06-01 17:16:41'),
(2, 'RCB', 1, '2020-06-01 17:16:41', '2020-06-01 17:16:41'),
(3, 'KKR', 1, '2020-06-01 17:16:51', '2020-06-01 17:16:51'),
(4, 'MI', 1, '2020-06-01 17:16:51', '2020-06-01 17:16:51');

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `country_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `name`, `address`, `country_id`, `team_id`, `created_at`, `updated_at`) VALUES
(1, 'MA Chidambaram Stadium', 'Chennai', 1, 1, '2020-06-01 17:21:45', '2020-06-01 17:21:45'),
(2, 'Chinnaswamy Stadium', 'Bangalore', 1, 2, '2020-06-01 17:22:21', '2020-06-01 17:22:21'),
(3, 'Eden Gardens', 'Kolkata', 1, 3, '2020-06-01 17:22:21', '2020-06-01 17:22:21'),
(4, 'Wankhede Stadium', 'Mumbai', 1, 4, '2020-06-01 17:24:40', '2020-06-01 17:24:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
