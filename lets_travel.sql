-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2018 at 11:17 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lets_travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(10) NOT NULL,
  `user_from` varchar(255) NOT NULL,
  `user_to` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_from`, `user_to`) VALUES
(1, 'sreerag', 'Thrissur'),
(7, 'ganga', 'sreerag');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(10) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `profile_pic` text NOT NULL,
  `status` int(1) NOT NULL,
  `follow_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `page_name`, `state`, `about`, `profile_pic`, `status`, `follow_array`) VALUES
(1, 'Thrissur', 'Kerala', 'The cultural capitalof Kerala', '5N7F0Su3KmewC4q/IMG_20161230_175054 (2).jpg', 1, 'sreerag,nisha,rahul'),
(2, 'Aynoor', 'Kerala', 'My city', '', 1, ''),
(3, 'Kunnamkulam', 'Kerala', 'My city', '6o59z1OXHVnb8sv/Globe-PNG-File.png', 1, ''),
(5, 'Guruvayur', 'Kerala', 'Pilgrimage center', '02P96r4UTyCVhYL/IMG_20151010_143607 (2).jpg', 1, 'sreerag'),
(14, 'Kochi', 'Kerala', 'Place in Kerala', 'XnKJPU5dlhjzZ4H/SUNSET (2).JPG', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `pid` int(10) NOT NULL,
  `body` varchar(255) NOT NULL,
  `photo` text NOT NULL,
  `date_added` date NOT NULL,
  `added_by` varchar(255) NOT NULL,
  `user_posted_to` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`pid`, `body`, `photo`, `date_added`, `added_by`, `user_posted_to`) VALUES
(1, 'My first post..', '', '2017-05-16', 'sreerag', 'sreerag'),
(2, 'Gud mrng all..', '', '2017-05-16', 'sreerag', 'sreerag'),
(3, 'I am enjoying my life..', '', '2017-05-16', 'jishnunadh', 'jishnunadh'),
(13, 'Hey jishnu', '', '2017-05-16', 'sreerag', 'jishnunadh'),
(14, 'Today I am going for a trip', '', '2017-05-16', 'sreerag', 'sreerag'),
(15, 'this is sreerag', '', '2017-05-16', 'sreerag', 'sreekutty'),
(16, 'im here..', '', '2017-05-16', 'sreerag', 'sreerag'),
(17, 'how are you sreekutty.?', '', '2017-05-16', 'sreerag', 'sreekutty'),
(18, 'gud evng sreerag', '', '2017-05-19', 'jishnunadh', 'sreerag'),
(19, 'Boring..', '', '2017-05-20', 'sreerag', 'sreerag'),
(20, 'mrng jishnu', '', '2017-05-20', 'sreerag', 'jishnunadh'),
(24, 'hai sreerag...', '', '2017-05-20', 'sreekutty', 'sreerag'),
(25, 'gud evng..', '', '2017-05-20', 'jishnunadh', 'jishnunadh'),
(28, 'My first post..', '', '2017-05-23', 'chanchel', 'chanchel'),
(29, 'My city', '', '2017-05-23', 'chanchel', 'Guruvayur'),
(30, 'I am going to Guruvayur', '', '2017-05-23', 'sreerag', 'Guruvayur'),
(31, 'Wonderful city..', '', '2017-05-24', 'sreerag', 'Thrissur'),
(38, 'Hi.. I am Ganga', '', '2017-06-01', 'ganga', 'ganga'),
(39, '', 'BVAgD2yc7FMktOo/IMG_20161230_175054 (2).jpg', '2017-06-01', 'sreerag', 'Thrissur'),
(40, '', 'F41QvLloTyjqKJA/IMG_20151010_143607 (2).jpg', '2017-06-01', 'jishnunadh', 'Thrissur'),
(41, 'I love Thrissur..', '', '2017-06-01', 'ganga', 'Thrissur'),
(42, 'Hello frnds..', '', '2017-06-05', 'sreerag', 'sreerag'),
(43, '', 'q3DdQEJfVksWoG7/DSC_0549 (2).JPG', '2017-06-05', 'sreerag', 'sreerag'),
(44, ' i am going to thrissur..', '', '2017-06-05', 'rahul', 'Thrissur'),
(45, '', 'OdWjbP1tgIkcqew/IMG_20151010_143607 (2).jpg', '2017-06-05', 'rahul', 'Thrissur'),
(46, 'tyguhdfghjijio', '', '2017-06-05', 'rahul', 'rahul');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `bio` varchar(255) NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `friend_array` text NOT NULL,
  `pages_follow` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `bio`, `profile_pic`, `friend_array`, `pages_follow`) VALUES
(1, 'sree', 'raag', 'sreerag', 'sreerag', '5f4dcc3b5aa765d61d8327deb882cf99', 'Hey..Its me Sree Rag', 'mXSNxAJq3ZiYVTg/IMG_20160916_153053 (2).JPG', 'chanchel,jishnunadh,sreekutty,nisha,rahul', 'Thrissur,Guruvayur'),
(6, 'jishnu', 'nadh', 'jishnunadh', 'jishnunadh', '5f4dcc3b5aa765d61d8327deb882cf99', 'I am from Kannur', 'W75RSOPmQFK4bdu/novnature.jpg', 'ganga,sreerag,sreekutty', ''),
(8, 'Sreekutty', 'Vijayan', 'sreekutty', 'sreekutty', '546d598f30f048ba55db69e94b85d9a3', 'This is sreekutty....', '20NBnjLQOGuwF41/2015-09-18-15-06-16-908 (2) (2).jpg', 'sreerag,jishnunadh', ''),
(9, 'chanchel', 'vs', 'chanchel', 'chanchel', 'b150d98e7ce0ccbbe9a6383c90afba6b', 'Iam chanchel', 'FP9AojdcEfQKLxV/IMG_20160410_155305 (2) (2).jpg', 'sreerag,ganga', ''),
(10, 'admin', 'admin', 'admin', 'admin', '0192023a7bbd73250516f069df18b500', '', '', '', ''),
(12, 'ganga', 'dinesh', 'ganga', 'ganga@gmail.com', '4753d3848a1b5264ff4a3b20fc5ff236', '', '', 'chanchel,jishnunadh', ''),
(13, 'deva', 'nandhu', 'devanandhu', 'deva@gmail.com', 'f57f377306606771baa07ae3ed4f65cd', '', '', '', ''),
(14, 'nisha', 'as', 'nisha', 'nisha@gmail.com', '896dea24c0172cdd9f6509ce1baab9af', 'I am nisha', '9cwzaYQFtTkvXxN/SUNSET (2).JPG', 'sreerag', 'Thrissur'),
(15, 'rahul', 'kumar', 'rahul', 'rahu@gmail.com', '37dff0cd99ecc47c60aeea102185262a', 'i am rahul', 'KtcohIlzQBOEvmX/SUNSET (2).JPG', 'sreerag', 'Thrissur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_name` (`page_name`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
