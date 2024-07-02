-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2024 at 07:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `puihaha_videos_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` enum('Single','Married','Divorced','Widowed') NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `terms_agreed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `profile_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `address`, `username`, `password`, `email`, `status`, `zip_code`, `terms_agreed`, `created_at`, `profile_picture`) VALUES
(19, 'Jose Protacio Rizal', 'Mercado', '100 Nicanor Reyes St. Sampaloc, Manila', 'admin', '$2y$10$b2IC4927jx/bvMT8ck76dOuMS4rh73wemS2vqAOgd9b8Y812/WX2q', 'joserizal@telegram.com', 'Married', '1001', 0, '2024-06-30 08:43:01', NULL),
(20, 'Gian Carlo', 'Victorino', '99 Texas', 'giancarlo', '$2y$10$LVj3WWXiJYtdqUFGWCNJ7uATp3WqORuizhwUJjKjHiLYhgjauStZ6', 'giancarlo@giancarlo.com', 'Single', '1111', 0, '2024-06-30 15:44:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `director` varchar(255) NOT NULL,
  `release_date` date NOT NULL,
  `available_copies` int(11) NOT NULL,
  `video_type` enum('DVD','Blu-Ray','Digital') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `genre`, `director`, `release_date`, `available_copies`, `video_type`, `created_at`) VALUES
(4, 'movie', 'genre', 'me', '2024-07-02', 10, 'Blu-Ray', '2024-07-02 05:05:37'),
(5, '2', '2', '2', '2222-02-22', 222, 'Digital', '2024-07-02 05:09:54'),
(6, '3', '3', '3', '0033-03-31', 333, 'Blu-Ray', '2024-07-02 05:10:03'),
(7, '4', '4', '4', '0044-04-04', 44444, 'DVD', '2024-07-02 05:10:10'),
(8, '5', '5', '5', '0055-05-05', 555, 'Blu-Ray', '2024-07-02 05:10:19'),
(9, '787', '867876', '876876', '0000-00-00', 78768, 'Blu-Ray', '2024-07-02 05:10:29'),
(10, '76876', '876876', '876876', '0000-00-00', 867876, 'Blu-Ray', '2024-07-02 05:10:35'),
(11, '867876', '8678768', '8678678', '0000-00-00', 8678, 'DVD', '2024-07-02 05:10:41'),
(12, 'tehtr', 'hfghrt', '6546', '6464-05-04', 6546, 'DVD', '2024-07-02 05:10:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
