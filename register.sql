-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2022 at 11:25 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `register`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`id`, `name`, `password`, `email`) VALUES
(1, 'svgs', 'svgs@417', 'svgsacademy@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `user_id` int(11) NOT NULL,
  `q_id` int(11) NOT NULL,
  `ans` varchar(500) NOT NULL,
  `mark` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`user_id`, `q_id`, `ans`, `mark`) VALUES
(101, 1, 'listname=[ ]', 1),
(101, 2, '2', 1),
(101, 3, '.(dot)', 0),
(101, 4, 'in', 1),
(101, 5, 'eval', 1),
(101, 6, '2', 0),
(101, 8, '(1, 2, 3)', 1),
(101, 9, 'Mutable data type', 0),
(101, 11, 'for i in range(0,5):', 0),
(102, 1, 'listname=[ ]', 1),
(102, 2, '1', 0),
(102, 3, 'slice', 1),
(102, 4, 'in', 1),
(102, 5, 'eval', 1),
(102, 6, '2', 0),
(102, 7, 'Runtime error', 0),
(102, 8, '(1, 2, 3)', 1),
(102, 9, 'error', 0),
(102, 10, 'pYtHoN PrOgRaMmInG\r\n', 1),
(102, 11, 'for i in range(0,5):', 0),
(102, 12, 'provides a means of reducing size of program', 1),
(102, 13, 'import', 1),
(102, 14, '1989', 1),
(102, 15, 'indentation', 1),
(107, 1, 'list[]', 0),
(105, 1, 'list[]', 0),
(103, 1, 'list=()', 0),
(103, 2, '1', 0),
(104, 1, 'listname=[ ]', 1),
(107, 2, '1', 0),
(103, 3, '.(dot)', 0),
(104, 2, '2', 1),
(105, 2, '2', 1),
(109, 1, 'list[]', 0),
(109, 2, '2', 1),
(104, 3, '- (hyphen)', 0),
(109, 3, 'slice', 1),
(111, 1, 'list[]', 0),
(103, 4, '__init__', 0),
(104, 4, ' on', 0),
(107, 3, '- (hyphen)', 0),
(103, 5, 'eval', 1),
(107, 4, '__init__', 0),
(108, 1, 'listname=[ ]', 1),
(105, 3, ': (colon)', 0),
(109, 5, 'nonlocal', 0),
(108, 2, '2', 1),
(108, 3, ': (colon)', 0),
(104, 5, 'nonlocal', 0),
(108, 4, '__init__', 0),
(105, 4, 'it', 0),
(103, 6, '5', 1),
(104, 6, '5', 1),
(105, 5, 'assert', 0),
(107, 8, '(1, 2, 3)', 1),
(109, 8, '(1, 2, 3)', 1),
(111, 8, '(1, 2, 3)', 1),
(108, 5, 'nonlocal', 0),
(104, 7, 'Runtime error', 0),
(104, 8, '(1, 2, 3)', 1),
(103, 7, 'Runtime error', 0),
(104, 9, 'error', 0),
(107, 11, 'for i in range(0,5):', 0),
(113, 1, 'list[]', 0),
(108, 6, '5', 1),
(109, 11, 'for i in range(0,5):', 0),
(113, 2, '1', 0),
(105, 6, '5', 1),
(111, 2, '1', 0),
(107, 14, '1989', 1),
(103, 8, '(1, 2, 3)', 1),
(111, 3, ': (colon)', 0),
(113, 3, ': (colon)', 0),
(103, 9, 'error', 0),
(104, 10, 'pYtHoN PrOgRaMmInG\r\n', 1),
(113, 4, '__init__', 0),
(111, 4, '__init__', 0),
(107, 5, 'eval', 1),
(111, 5, 'nonlocal', 0),
(104, 11, 'for(i=0; i < n; i++)', 0),
(113, 6, '1', 0),
(103, 10, 'Python Programming\r\n', 0),
(106, 8, '(1, 2, 3)', 1),
(113, 7, 'Runtime error', 0),
(111, 6, '5', 1),
(107, 6, '5', 1),
(105, 7, 'Runtime error', 0),
(108, 8, '(1, 2, 3)', 1),
(105, 8, '(1, 2, 3)', 1),
(109, 6, '5', 1),
(103, 11, 'for(i=0; i < n; i++)', 0),
(104, 12, 'provides a means of dividing up task', 0),
(107, 7, 'Runtime error', 0),
(104, 13, 'import', 1),
(104, 14, '1989', 1),
(106, 11, 'for(i=0; i < n; i++)', 0),
(107, 9, 'error', 0),
(103, 12, 'provides a means of reuse of program code', 0),
(106, 13, 'import', 1),
(103, 13, 'import', 1),
(105, 9, '1', 0),
(113, 5, 'pass', 0),
(104, 15, 'indentation', 1),
(106, 14, '1989', 1),
(113, 8, '(1, 2, 3)', 1),
(107, 10, 'PYTHON PROGRAMMING\r\n', 0),
(106, 15, 'indentation', 1),
(103, 14, '1989', 1),
(103, 15, 'indentation', 1),
(105, 10, 'Python Programming\r\n', 0),
(106, 1, 'list[]', 0),
(109, 9, 'error', 0),
(106, 2, '1', 0),
(107, 13, 'Both A & B', 0),
(111, 14, '1989', 1),
(113, 9, '5\r\n', 0),
(106, 3, ': (colon)', 0),
(109, 13, 'import', 1),
(111, 13, 'import', 1),
(109, 14, '1989', 1),
(106, 4, '__init__', 0),
(107, 15, 'indentation', 1),
(105, 11, 'for i in range(0,5):', 0),
(106, 5, 'assert', 0),
(113, 10, 'Python Programming\r\n', 0),
(106, 6, '5', 1),
(113, 11, 'for i in range(5)', 0),
(109, 15, 'indentation', 1),
(105, 12, 'provides a means of reducing size of program', 1),
(106, 7, 'GFG\r\nfacebook\r\n', 0),
(113, 12, 'provides a means of testing individual parts of program', 0),
(106, 9, 'error', 0),
(113, 13, 'import', 1),
(113, 14, '1989', 1),
(106, 12, 'provides a means of dividing up task', 0),
(109, 4, '__init__', 0),
(105, 13, 'import', 1),
(106, 10, 'Python Programming\r\n', 0),
(113, 15, 'indentation', 1),
(105, 14, '1989', 1),
(109, 7, 'GFG\r\nfacebook\r\n', 0),
(111, 7, 'Runtime error', 0),
(109, 10, 'PYTHON PROGRAMMING\r\n', 0),
(108, 11, 'for i in range(0,5):', 0),
(105, 15, 'indentation', 1),
(107, 12, 'provides a means of dividing up task', 0),
(109, 12, 'provides a means of testing individual parts of program', 0),
(112, 1, 'listname=[ ]', 1),
(111, 10, 'Python Programming\r\n', 0),
(112, 2, '2', 1),
(111, 11, 'for i in range(5)', 0),
(112, 3, ': (colon)', 0),
(108, 13, 'import', 1),
(108, 14, '1989', 1),
(112, 4, '__init__', 0),
(111, 12, 'provides a means of testing individual parts of program', 0),
(108, 15, 'indentation', 1),
(112, 5, 'nonlocal', 0),
(111, 9, '5\r\n', 0),
(112, 6, '2', 0),
(108, 12, 'provides a means of testing individual parts of program', 0),
(112, 7, 'Runtime error', 0),
(112, 8, '(1, 2, 3)', 1),
(108, 10, 'Python Programming\r\n', 0),
(112, 9, '2\r\n', 0),
(108, 9, 'error', 0),
(108, 7, 'Runtime error', 0),
(112, 10, 'Python Programming\r\n', 0),
(112, 11, 'for i in range(0,5):', 0),
(112, 12, 'provides a means of reuse of program code', 0),
(112, 13, 'import', 1),
(112, 14, '1972', 0),
(112, 15, 'indentation', 1),
(115, 1, 'listname=[ ]', 1),
(126, 1, 'list[]', 0),
(118, 1, 'list[]', 0),
(126, 2, '2', 1),
(120, 1, 'listname=[ ]', 1),
(124, 1, 'list[]', 0),
(126, 3, ': (colon)', 0),
(125, 1, 'listname=[ ]', 1),
(121, 1, 'list[]', 0),
(118, 2, '2', 1),
(117, 1, 'list[]', 0),
(126, 4, ' on', 0),
(115, 2, '1', 0),
(125, 2, '2', 1),
(121, 2, '2', 1),
(116, 1, 'list[]', 0),
(126, 5, 'eval', 1),
(120, 2, '2', 1),
(124, 2, '3', 0),
(125, 3, ': (colon)', 0),
(120, 3, ': (colon)', 0),
(118, 4, '__init__', 0),
(117, 2, '2', 1),
(115, 4, '__init__', 0),
(118, 5, 'nonlocal', 0),
(119, 1, 'listname=[ ]', 1),
(120, 4, '__init__', 0),
(126, 6, '5', 1),
(115, 5, 'nonlocal', 0),
(124, 3, 'slice', 1),
(117, 3, ': (colon)', 0),
(121, 4, 'in', 1),
(120, 5, 'nonlocal', 0),
(125, 4, 'in', 1),
(121, 5, 'nonlocal', 0),
(116, 2, '1', 0),
(118, 6, '0', 0),
(117, 4, '__init__', 0),
(125, 5, 'nonlocal', 0),
(124, 4, '__init__', 0),
(115, 6, '5', 1),
(120, 6, '5', 1),
(119, 2, '1', 0),
(122, 1, 'list=()', 0),
(118, 8, '(1, 2, 3)', 1),
(122, 2, '1', 0),
(119, 3, '.(dot)', 0),
(126, 7, 'facebook\r\nGFG\r\n', 0),
(126, 8, '[1, 2, 3]', 0),
(116, 3, '.(dot)', 0),
(122, 3, ': (colon)', 0),
(125, 6, '5', 1),
(119, 4, '__init__', 0),
(116, 4, '__init__', 0),
(122, 4, '__init__', 0),
(123, 1, 'list[]', 0),
(115, 8, '(1, 2, 3)', 1),
(117, 8, '(1, 2, 3)', 1),
(122, 5, 'nonlocal', 0),
(119, 5, 'nonlocal', 0),
(126, 9, '1', 0),
(120, 8, '(1, 2, 3)', 1),
(122, 6, '2', 0),
(118, 10, 'Python Programming\r\n', 0),
(125, 8, '(1, 2, 3)', 1),
(119, 6, '5', 1),
(123, 2, '1', 0),
(120, 9, '5\r\n', 0),
(124, 5, 'assert', 0),
(125, 9, 'error', 0),
(122, 7, 'Runtime error', 0),
(123, 3, ': (colon)', 0),
(122, 8, '[1, 2, 3]', 0),
(116, 6, '5', 1),
(123, 4, '__init__', 0),
(119, 8, '(1, 2, 3)', 1),
(122, 9, '2\r\n', 0),
(115, 11, 'for i in range(0,5):', 0),
(126, 11, 'for(i=0; i < n; i++)', 0),
(123, 5, 'nonlocal', 0),
(118, 12, 'provides a means of reuse of program code', 0),
(126, 13, 'import', 1),
(126, 14, '1981', 0),
(122, 10, 'Python Programming\r\n', 0),
(119, 10, 'pYtHoN PrOgRaMmInG\r\n', 1),
(118, 13, 'import', 1),
(119, 11, 'for(i=0; i < n; i++)', 0),
(126, 15, 'parenthesis', 0),
(122, 11, 'for(i=0; i < n; i++)', 0),
(118, 14, '1989', 1),
(119, 13, 'import', 1),
(117, 5, 'pass', 0),
(115, 12, 'provides a means of testing individual parts of program', 0),
(115, 13, 'import', 1),
(125, 11, 'for i in range(0,5):', 0),
(115, 14, '1989', 1),
(122, 12, 'provides a means of reducing size of program', 1),
(120, 11, 'for i in range(0,5):', 0),
(122, 13, 'import', 1),
(116, 10, 'Python Programming\r\n', 0),
(115, 15, 'indentation', 1),
(124, 8, '(1, 2, 3)', 1),
(119, 15, 'curly brackets', 0),
(123, 8, '(1, 2, 3)', 1),
(122, 14, '1989', 1),
(117, 6, '1', 0),
(121, 11, 'for i in range(0,5):', 0),
(118, 3, ': (colon)', 0),
(125, 12, 'provides a means of reducing size of program', 1),
(125, 13, 'import', 1),
(123, 9, 'error', 0),
(120, 12, 'provides a means of reuse of program code', 0),
(126, 10, 'Python Programming\r\n', 0),
(125, 14, '1981', 0),
(121, 12, 'provides a means of dividing up task', 0),
(120, 13, 'import', 1),
(118, 7, 'Runtime error', 0),
(120, 14, '1989', 1),
(125, 15, 'indentation', 1),
(119, 12, 'provides a means of dividing up task', 0),
(121, 13, 'import', 1),
(118, 9, '2\r\n', 0),
(123, 10, 'Python Programming\r\n', 0),
(120, 15, 'indentation', 1),
(121, 14, '1989', 1),
(117, 11, 'for i in range(0,5):', 0),
(126, 12, 'provides a means of testing individual parts of program', 0),
(117, 12, 'provides a means of reducing size of program', 1),
(119, 14, '1989', 1),
(117, 13, 'import', 1),
(116, 14, '1989', 1),
(117, 14, '1989', 1),
(123, 12, 'provides a means of reducing size of program', 1),
(118, 11, 'for i in range(0,5):', 0),
(124, 10, 'Python Programming\r\n', 0),
(123, 13, 'import', 1),
(121, 3, ': (colon)', 0),
(116, 5, 'nonlocal', 0),
(123, 14, '1989', 1),
(121, 6, '5', 1),
(123, 15, 'indentation', 1),
(123, 6, '0', 0),
(119, 9, 'error', 0),
(123, 7, 'Runtime error', 0),
(124, 12, 'provides a means of reducing size of program', 1),
(125, 7, 'Runtime error', 0),
(124, 13, 'import', 1),
(123, 11, 'for i in range(0,5):', 0),
(116, 13, 'import', 1),
(124, 14, '1989', 1),
(115, 3, ': (colon)', 0),
(124, 11, 'for(i=0; i < n; i++)', 0),
(124, 6, '5', 1),
(117, 7, 'Runtime error', 0),
(124, 9, '5\r\n', 0),
(116, 7, 'Both b and d', 1),
(116, 8, '{1, 2, 3}', 0),
(117, 9, '1', 0),
(116, 9, 'error', 0),
(116, 11, 'for i in range(0,5):', 0),
(117, 10, 'Python Programming\r\n', 0),
(124, 7, 'GFG\r\nfacebook\r\n', 0),
(119, 7, 'GFG\r\nfacebook\r\n', 0),
(116, 12, 'provides a means of testing individual parts of program', 0),
(121, 7, 'Both b and d', 1),
(116, 15, 'curly brackets', 0),
(118, 15, 'indentation', 1),
(122, 15, 'indentation', 1),
(120, 7, 'GFG\r\nfacebook\r\n', 0),
(117, 15, 'indentation', 1),
(115, 10, 'PYTHON PROGRAMMING\r\n', 0),
(124, 15, 'square brackets', 0),
(115, 9, 'error', 0),
(121, 10, 'pYtHoN PrOgRaMmInG\r\n', 1),
(121, 8, '{1, 2, 3}', 0),
(121, 9, 'error', 0),
(115, 7, 'GFG\r\nfacebook\r\n', 0),
(121, 15, 'indentation', 1),
(120, 10, 'pYtHoN PrOgRaMmInG\r\n', 1),
(125, 10, 'pYtHoN PrOgRaMmInG\r\n', 1),
(130, 1, 'listname=[ ]', 1),
(133, 1, 'listname=[ ]', 1),
(129, 1, 'list=()', 0),
(133, 2, '2', 1),
(129, 2, '1', 0),
(130, 2, '2', 1),
(133, 3, ': (colon)', 0),
(137, 1, 'list=()', 0),
(132, 2, '1', 0),
(130, 3, ': (colon)', 0),
(136, 1, 'list=()', 0),
(137, 2, '1', 0),
(129, 3, ': (colon)', 0),
(131, 1, 'listname=[ ]', 1),
(130, 4, '__init__', 0),
(133, 5, 'nonlocal', 0),
(129, 4, '__init__', 0),
(131, 2, '3', 0),
(132, 4, 'in', 1),
(136, 2, '2', 1),
(130, 5, 'nonlocal', 0),
(137, 3, ': (colon)', 0),
(129, 5, 'nonlocal', 0),
(137, 4, 'on', 0),
(133, 6, '5', 1),
(131, 3, 'slice', 1),
(136, 3, ': (colon)', 0),
(137, 5, 'pass', 0),
(135, 8, '(1, 2, 3)', 1),
(131, 4, 'on', 0),
(138, 1, 'listname=[ ]', 1),
(132, 5, 'nonlocal', 0),
(131, 5, 'nonlocal', 0),
(138, 2, '2', 1),
(132, 1, 'list[]', 0),
(138, 3, ': (colon)', 0),
(135, 11, 'for(i=0; i < n; i++)', 0),
(130, 6, '5', 1),
(129, 6, '5', 1),
(133, 8, '(1, 2, 3)', 1),
(137, 6, '5', 1),
(138, 4, 'in', 1),
(138, 5, 'nonlocal', 0),
(136, 5, 'nonlocal', 0),
(129, 7, 'Runtime error', 0),
(129, 8, '(1, 2, 3)', 1),
(137, 7, 'Runtime error', 0),
(137, 8, '(1, 2, 3)', 1),
(131, 6, '5', 1),
(131, 7, 'GFG\r\nfacebook', 0),
(131, 8, '{1, 2, 3}', 0),
(136, 6, '1', 0),
(132, 6, '5', 1),
(130, 7, 'Runtime error', 0),
(131, 9, '1', 0),
(129, 9, 'error', 1),
(130, 8, '(1, 2, 3)', 1),
(137, 9, '1', 0),
(134, 1, 'list[]', 0),
(132, 3, ': (colon)', 0),
(138, 6, '5', 1),
(133, 11, 'for i in range(0,5):', 1),
(130, 9, 'error', 1),
(129, 10, 'pYtHoN PrOgRaMmInG', 1),
(135, 1, 'list[]', 0),
(136, 7, 'Runtime error', 0),
(129, 11, 'for i in range(0,5):', 1),
(136, 8, '(1, 2, 3)', 1),
(133, 13, 'import', 1),
(137, 10, 'Python Programming', 0),
(131, 10, 'Python Programming', 0),
(133, 14, '1995', 0),
(137, 11, 'for i in range(0,5):', 1),
(135, 2, '1', 0),
(138, 7, 'Runtime error', 0),
(136, 9, 'error', 1),
(132, 7, 'Runtime error', 0),
(136, 4, 'in', 1),
(131, 11, 'for(i=0; i < n; i++)', 0),
(138, 8, '(1, 2, 3)', 1),
(132, 8, '{1, 2, 3}', 0),
(135, 3, '.(dot)', 0),
(129, 12, 'provides a means of dividing up task', 0),
(129, 13, 'include', 0),
(135, 4, '__init__', 0),
(136, 10, 'Python Programming', 0),
(138, 9, '2', 0),
(129, 14, '1972', 0),
(130, 10, 'pYtHoN PrOgRaMmInG', 1),
(132, 9, '2', 0),
(133, 4, '__init__', 0),
(131, 12, 'provides a means of dividing up task', 0),
(137, 12, 'provides a means of dividing up task', 0),
(130, 11, 'for i in range(0,5):', 1),
(137, 13, 'import', 1),
(137, 14, '1972', 0),
(135, 6, '1', 0),
(131, 13, 'include', 0),
(130, 12, 'provides a means of testing individual parts of program', 0),
(138, 10, 'pYtHoN PrOgRaMmInG', 1),
(132, 10, 'pYtHoN PrOgRaMmInG', 1),
(130, 13, 'import', 1),
(136, 11, 'for i in range(5)', 0),
(138, 11, 'for i in range(5)', 0),
(130, 14, '1989', 1),
(132, 11, 'for i in range(5)', 0),
(130, 15, 'indentation', 1),
(138, 12, 'provides a means of testing individual parts of program', 0),
(132, 12, 'provides a means of testing individual parts of program', 0),
(133, 9, '5', 0),
(138, 13, 'import', 1),
(132, 13, 'import', 1),
(136, 12, 'provides a means of testing individual parts of program', 0),
(138, 14, '1981', 0),
(132, 14, '1981', 0),
(131, 14, '1981', 0),
(136, 13, 'Both A & B', 0),
(138, 15, 'indentation', 1),
(132, 15, 'indentation', 1),
(135, 10, 'pYtHoN PrOgRaMmInG', 1),
(136, 14, '1989', 1),
(129, 15, 'square brackets', 0),
(136, 15, 'curly brackets', 0),
(135, 12, 'provides a means of reducing size of program', 1),
(134, 2, '1', 0),
(135, 13, 'Both A & B', 0),
(135, 14, '1989', 1),
(133, 10, 'pYtHoN PrOgRaMmInG', 1),
(134, 3, '- (hyphen)', 0),
(134, 4, '__init__', 0),
(133, 12, 'provides a means of testing individual parts of program', 0),
(134, 5, 'nonlocal', 0),
(134, 6, '5', 1),
(135, 7, 'GFG\r\nfacebook', 0),
(135, 5, 'assert', 0),
(133, 7, 'Runtime error', 0),
(135, 9, '1', 0),
(135, 15, 'curly brackets', 0),
(134, 7, 'Runtime error', 0),
(133, 15, 'indentation', 1),
(134, 8, '[1, 2, 3]', 0),
(137, 15, 'parenthesis', 0),
(134, 9, '2', 0),
(134, 10, 'Python Programming', 0),
(134, 11, 'for i in range(0,5)', 0),
(134, 12, 'provides a means of testing individual parts of program', 0),
(134, 13, 'None of the above', 0),
(134, 14, '1989', 1),
(134, 15, 'indentation', 1);

-- --------------------------------------------------------

--
-- Table structure for table `code`
--

CREATE TABLE `code` (
  `id` int(11) NOT NULL,
  `question` varchar(500) NOT NULL,
  `correct` varchar(900) NOT NULL,
  `mark` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `code`
--

INSERT INTO `code` (`id`, `question`, `correct`, `mark`) VALUES
(1, 'Print svgs using python', 'print(\"svgs\")', 5),
(2, 'Write program to check number is even or odd. variable name num=28', 'num=28 if(num%2==0): print(\"even\") elif: print(\"odd\") ', 5);

-- --------------------------------------------------------

--
-- Table structure for table `code_answer`
--

CREATE TABLE `code_answer` (
  `q_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `answer` varchar(900) NOT NULL,
  `mark` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `code_answer`
--

INSERT INTO `code_answer` (`q_id`, `user_id`, `answer`, `mark`) VALUES
(1, 128, 'print(\"svgs\")', 5),
(2, 128, 'num=28\r\nif(num%2==0)\r\nprint(\"even\")\r\nelif\r\nprint(\"odd\")', 0);

-- --------------------------------------------------------

--
-- Table structure for table `code_result`
--

CREATE TABLE `code_result` (
  `roll_no` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `mark` int(11) NOT NULL,
  `percent` float NOT NULL,
  `remark` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) NOT NULL,
  `question` varchar(500) NOT NULL,
  `a` varchar(500) NOT NULL,
  `b` varchar(500) NOT NULL,
  `c` varchar(500) NOT NULL,
  `d` varchar(500) NOT NULL,
  `correct` varchar(500) NOT NULL,
  `mark` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `a`, `b`, `c`, `d`, `correct`, `mark`) VALUES
(1, ' How to define an empty list', 'list[]', 'listname=[ ]', 'listname[]', 'list=()', 'listname=[ ]', 1),
(2, 'What is the output of list1=[1,2,3] print(list1[1])', '2', '1', '3', '0', '2', 1),
(3, 'The Slice operation is performed on a list using', 'slice', ': (colon)', '.(dot)', '- (hyphen)', 'slice', 1),
(4, 'Which of the following cannot be a variable?', '__init__', 'in', 'it', ' on', 'in', 1),
(5, 'Which of the following is not a keyword?', 'eval', 'assert', 'nonlocal', 'pass', 'eval', 1),
(6, 'list1 = range (100, 110) \r\nprint (\"index of element 105 is: \", list1.index(105) )', '5', '2', '1', '0', '5', 1),
(7, '4.	dictionary = {\'GFG\': \'geeksforgeeks.org\',\r\n			\'google\' : \'google.com\',\r\n			\'facebook\': \'facebook.com\'\r\n			}\r\ndel dictionary[\'google\'];\r\nfor key, values in dictionary. items ():\r\n	print(key)\r\ndictionary. clear ();\r\nfor key, values in dictionary. items ():\r\n	print(key)\r\ndel dictionary;\r\nfor key, values in dictionary.items():\r\n	print(key)\r\n', 'Both b and d', 'Runtime error', 'GFG\r\nfacebook\r\n', 'facebook\r\nGFG\r\n', 'Both b and d', 1),
(8, 'Which of the following is a Python tuple?', '[1, 2, 3]', '(1, 2, 3)', '{1, 2, 3}', '{}', '(1, 2, 3)', 1),
(9, '1.	>>>my_tuple = (1, 2, 3, 4)\r\n2.	>>>my_tuple.append( (5, 6, 7) )\r\n3.	>>>print len(my_tuple)\r\n\r\n', '1', '2\r\n', '5\r\n', 'error', 'error\r\n', 1),
(10, 'What will be the output of the following code snippet?\r\nword = \"Python Programming\"\r\nn = len(word)\r\nword1 = word. upper ()\r\nword2 = word. lower ()\r\nconverted_word = \"\"\r\nfor i in range(n):\r\n if i % 2 == 0:\r\n   converted_word += word2[i]\r\n else:\r\n   converted_word += word1[i]\r\nprint(converted_word)\r\n\r\n', 'pYtHoN PrOgRaMmInG\r\n', 'Python Programming\r\n', 'python programming', 'PYTHON PROGRAMMING\r\n', 'pYtHoN PrOgRaMmInG\r\n', 1),
(11, 'Which of the following is a valid for loop in Python?\r\n', 'for(i=0; i < n; i++)', 'for i in range(0,5):', 'for i in range(0,5)\r\n', 'for i in range(5)', 'for i in range(0,5):\r\n', 1),
(12, 'Which of the following is not an advantage of using modules?', 'provides a means of reuse of program code', 'provides a means of dividing up task', 'provides a means of reducing size of program', 'provides a means of testing individual parts of program', 'provides a means of reducing size of program', 1),
(13, 'To use a module in another module you must import it using an _____ statement', 'import', 'include', 'Both A & B', 'None of the above', 'import', 1),
(14, 'Python was developed in which year?', '1972', '1995', '1989', '1981', '1989', 1),
(15, 'What is used to define a bloc of code in Python', 'parenthesis', 'indentation', 'curly brackets', 'square brackets', 'indentation', 1);

-- --------------------------------------------------------

--
-- Table structure for table `registerpage`
--

CREATE TABLE `registerpage` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `roll_no` int(10) NOT NULL,
  `phone_no` int(11) NOT NULL,
  `paswd` varchar(25) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'absent',
  `login_time` time NOT NULL,
  `logout_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registerpage`
--

INSERT INTO `registerpage` (`id`, `user_name`, `roll_no`, `phone_no`, `paswd`, `status`, `login_time`, `logout_time`) VALUES
(103, 'swaraj gawade', 2209, 2147483647, 'swaraj@07', 'offline', '12:33:43', '12:51:38'),
(104, 'sahil shetye', 2207, 2147483647, 'Ktm@1234', 'offline', '12:33:34', '12:51:55'),
(105, 'vishal ghadi', 2211, 2147483647, 'vishal@7123', 'offline', '12:33:15', '12:52:44'),
(106, 'tanmayi satoskar', 2210, 2147483647, 'tanmayi', 'offline', '12:38:17', '12:54:47'),
(107, 'Harsh Yeram', 2203, 2147483647, 'Harsh@12', 'offline', '12:33:46', '12:52:57'),
(108, 'pooja narkar', 2206, 2147483647, '1234', 'offline', '12:35:43', '12:57:06'),
(109, 'Ankita Dalvi', 2201, 2147483647, 'ankita@123', 'offline', '12:34:29', '12:56:19'),
(110, 'Dipali Mhapsekar', 2202, 2147483647, '30012003', 'offline', '12:36:04', '12:54:51'),
(111, 'Jyoti Harmalkar', 2205, 2147483647, 'jyoti01', 'offline', '12:34:09', '12:55:49'),
(112, 'Shrutika shrinivas vetkar', 2208, 2147483647, 'shruti220', 'offline', '12:41:21', '12:59:45'),
(113, 'Dipali Mhapsekar', 0, 2147483647, '30012003', 'offline', '12:36:04', '12:54:51'),
(114, 'Prathamesh Khot', 0, 0, '', 'absent', '00:00:00', '00:00:00'),
(115, 'Prathamesh Patil', 2222, 2147483647, 'Patil@3317', 'offline', '04:24:26', '04:48:16'),
(116, 'Pratik Sawant', 2225, 2147483647, 'Pratik@16', 'offline', '04:24:27', '04:47:06'),
(117, 'anushka', 2215, 2147483647, 'anushka25', 'offline', '04:24:34', '04:47:56'),
(118, 'neha ', 2219, 2147483647, '1010', 'offline', '04:24:33', '04:47:01'),
(119, 'Prathamesh Khot', 2221, 2147483647, '3216PK3216', 'offline', '04:24:59', '04:46:46'),
(120, 'Farid choche', 2218, 2147483647, 'farid2218', 'offline', '04:24:26', '04:49:22'),
(121, 'Divya Acharekar', 2217, 2147483647, 'daebakwow07', 'offline', '04:24:36', '04:48:24'),
(122, 'Pranali  Jagannath Sawant', 2220, 2147483647, 'army@123', 'offline', '04:28:01', '04:47:20'),
(123, 'Anagha Hanumant Gawas', 2213, 2147483647, 'anagha1234', 'offline', '04:28:52', '04:47:55'),
(124, 'Shreya Sawant', 2224, 2147483647, 'shreya1430', 'offline', '04:24:58', '04:47:35'),
(125, '_anii__04', 2214, 2147483647, 'Zimaneani@16', 'offline', '04:24:54', '04:49:22'),
(126, 'Amol Parab', 2214, 2147483647, 'amol@123', 'offline', '04:24:52', '04:45:21'),
(128, 'test', 3201, 2147483647, 't123', 'offline', '11:43:46', '12:21:51'),
(129, 'tejas surendra mule', 2209, 2147483647, 'tejas1209', 'offline', '10:17:52', '10:37:36'),
(130, 'Jesiya Johny Fernandes', 2205, 2147483647, 'JES2803', 'offline', '10:17:36', '10:37:32'),
(131, 'Prafulla Paste', 2207, 2147483647, 'prafulla2664', 'offline', '10:18:10', '10:44:15'),
(132, 'Diksha Ludbe ', 2216, 2147483647, 'Diksha@123', 'offline', '10:17:43', '10:35:26'),
(133, 'Gaurav Rawool', 2202, 2147483647, '@@gaurav333', 'offline', '10:18:15', '10:44:08'),
(134, 'Harshraj Mhaddalkar', 2204, 2147483647, 'mhaddalkarxyz009', 'offline', '10:17:50', '10:48:15'),
(135, 'vinay bagkar', 2210, 2147483647, 'vinay@123', 'offline', '10:17:53', '10:43:49'),
(136, 'Tejas Acharekar', 2212, 2147483647, 'tejas422', 'offline', '10:18:58', '10:37:58'),
(137, 'Akshay Anant Angchekar', 2201, 2147483647, 'ak89sh75', 'offline', '10:18:48', '10:44:41'),
(138, 'Mandar Kelkar', 2205, 2147483647, 'M@2004', 'offline', '10:35:26', '10:35:34');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `roll_no` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `mark` int(11) NOT NULL,
  `percent` double NOT NULL,
  `doe` varchar(25) NOT NULL,
  `remark` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`roll_no`, `user_name`, `mark`, `percent`, `doe`, `remark`) VALUES
(103, 'swaraj gawade', 6, 40, '19/07/2022', 'fail'),
(104, 'sahil shetye', 8, 53.333333333333, '19/07/2022', 'pass'),
(105, 'vishal ghadi', 7, 46.666666666667, '19/07/2022', 'pass'),
(106, 'tanmayi satoskar', 5, 33.333333333333, '19/07/2022', 'fail'),
(107, 'Harsh Yeram', 5, 33.333333333333, '19/07/2022', 'fail'),
(108, 'pooja narkar', 7, 46.666666666667, '19/07/2022', 'pass'),
(109, 'Ankita Dalvi', 7, 46.666666666667, '19/07/2022', 'pass'),
(111, 'Jyoti Harmalkar', 4, 26.666666666667, '19/07/2022', 'fail'),
(112, 'Shrutika shrinivas v', 5, 33.333333333333, '19/07/2022', 'fail'),
(113, 'Dipali Mhapsekar', 4, 26.666666666667, '19/07/2022', 'fail'),
(115, 'Prathamesh Patil', 6, 40, '19/07/2022', 'fail'),
(116, 'Pratik Sawant', 4, 26.666666666667, '19/07/2022', 'fail'),
(117, 'anushka', 6, 40, '19/07/2022', 'fail'),
(118, 'neha', 5, 33.333333333333, '19/07/2022', 'fail'),
(119, 'Prathamesh Kho', 6, 40, '19/07/2022', 'fail'),
(120, 'Farid choche', 8, 53.333333333333, '19/07/2022', 'pass'),
(121, 'Divya Acharekar', 8, 53.333333333333, '19/07/2022', 'pass'),
(122, 'Pranali  Jagannath S', 4, 26.666666666667, '19/07/2022', 'fail'),
(123, 'Anagha Hanumant Gawa', 5, 33.333333333333, '19/07/2022', 'fail'),
(124, 'Shreya Sawant', 6, 40, '19/07/2022', 'fail'),
(125, '_anii__04', 9, 60, '19/07/2022', 'pass'),
(126, 'Amol Parab', 4, 26.666666666667, '19/07/2022', 'fail'),
(128, 'test', 0, 0, '20/07/2022', ''),
(129, 'tejas surendra mule', 5, 33.333333333333, '24/07/2022', 'fail'),
(130, 'Jesiya Johny Fernand', 10, 66.666666666667, '24/07/2022', 'pass'),
(131, 'Prafulla Paste', 3, 20, '24/07/2022', 'fail'),
(132, 'Diksha Ludbe', 5, 33.333333333333, '24/07/2022', 'fail'),
(133, 'Gaurav Rawool', 8, 53.333333333333, '24/07/2022', 'pass'),
(134, 'Harshraj Mhaddalkar', 3, 20, '24/07/2022', 'fail'),
(135, 'vinay bagkar', 4, 26.666666666667, '24/07/2022', 'fail'),
(136, 'Tejas Acharekar', 5, 33.333333333333, '24/07/2022', 'fail'),
(137, 'Akshay Anant Angchek', 4, 26.666666666667, '24/07/2022', 'fail'),
(138, 'Mandar Kelkar', 8, 53.333333333333, '24/07/2022', 'pass');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registerpage`
--
ALTER TABLE `registerpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`roll_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `registerpage`
--
ALTER TABLE `registerpage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
