-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 21, 2019 at 01:57 AM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `db_sports`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` mediumint(10) UNSIGNED NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_ip` varchar(50) DEFAULT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_lastlogin` varchar(30) DEFAULT NULL,
  `user_failed` int(5) DEFAULT NULL,
  `user_suspended` tinyint(1) DEFAULT NULL,
  `user_new` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_ip`, `user_date`, `user_lastlogin`, `user_failed`, `user_suspended`, `user_new`) VALUES
(6, 'Brendan', 'broge', '$2y$10$knucA5.g.OoKxRZjDEeCa.CFHYg6Tk.R6pwu48NYGhMjgOQ5giGA.', 'new@email.com', '::1', '2019-02-07 20:29:23', '2019/04/21', 0, 0, 0),
(10, 'Aiden', 'ared', '$2y$10$SfnYyrjzQZT0mu5tGZfJE.0EmH95B1PyRYf1d1re/aN8LcgzHr5Ku', 'aiden@aiden.ca', '::1', '2019-04-17 05:52:47', '2019/04/21', NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` mediumint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
