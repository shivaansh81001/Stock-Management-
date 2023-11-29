-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2020 at 08:26 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shivam`
--

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `balance` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`balance`) VALUES
(39749);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catid` int(10) NOT NULL,
  `catname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catid`, `catname`) VALUES
(1008, 'grocery'),
(1013, 'stationary'),
(1014, 'dairy');

-- --------------------------------------------------------

--
-- Table structure for table `dealer`
--

CREATE TABLE `dealer` (
  `dealer` char(20) NOT NULL,
  `address` char(20) NOT NULL,
  `phone` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dealer`
--

INSERT INTO `dealer` (`dealer`, `address`, `phone`) VALUES
('kapoor and sons', 'jalandhar', '7676776672');

-- --------------------------------------------------------

--
-- Table structure for table `dealinfo`
--

CREATE TABLE `dealinfo` (
  `type` char(10) NOT NULL,
  `custname` char(20) NOT NULL,
  `dealdate` date NOT NULL,
  `bill` int(10) NOT NULL,
  `ps` char(10) NOT NULL,
  `billno` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dealinfo`
--

INSERT INTO `dealinfo` (`type`, `custname`, `dealdate`, `bill`, `ps`, `billno`) VALUES
('dealer', 'kapoor and sons', '2020-08-08', 585, 'purchase', 455572286),
('cutomer', 'shivam', '2020-08-14', 585, 'sold', 470116798),
('cutomer', 'shivam', '2020-08-13', 585, 'sold', 38823756),
('dealer', 'kapoor and sons', '2020-08-13', 560, 'purchase', 976433317),
('dealer', 'kapoor and sons', '2020-08-14', 672, 'purchase', 643320709),
('cutomer', 'llssl', '2020-08-14', 672, 'sold', 214238243),
('cutomer', 'vdvdv', '2020-08-06', 896, 'sold', 684070270),
('cutomer', 'ram', '2020-09-15', 560, 'sold', 976904704),
('cutomer', 'ram', '2020-08-14', 448, 'sold', 656708070),
('cutomer', 'sonu', '2020-08-15', 560, 'sold', 691408163),
('cutomer', 'geeta', '2020-07-12', 672, 'sold', 625607500),
('dealer', 'kapoor and sons', '2020-08-28', 414, 'purchase', 788853211);

-- --------------------------------------------------------

--
-- Table structure for table `empinfo`
--

CREATE TABLE `empinfo` (
  `name` char(20) NOT NULL,
  `gender` char(10) NOT NULL,
  `phone` int(10) NOT NULL,
  `empid` char(10) NOT NULL,
  `address` char(30) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `empinfo`
--

INSERT INTO `empinfo` (`name`, `gender`, `phone`, `empid`, `address`, `dob`) VALUES
('rahul', 'Male', 98988989, '100', 'ludhiana', '1999-07-13'),
('raj', 'Male', 656565, '101', 'jalandhar\n', '1990-09-17'),
('simran', 'female', 98956665, '104', 'jalandhar', '1999-06-15'),
('karan', 'male', 673463728, '105', 'kapurthala', '1989-12-24');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `catid` int(10) NOT NULL,
  `subid` int(10) NOT NULL,
  `pname` char(20) NOT NULL,
  `pid` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `discount` int(10) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`catid`, `subid`, `pname`, `pid`, `price`, `discount`, `quantity`) VALUES
(1008, 101, 'moong dal', 3, 120, 20, 40),
(1008, 101, 'arhar dal', 4, 83, 9, 40),
(1008, 102, 'ashirvaad atta', 5, 250, 10, 24),
(1008, 101, 'chanan daal', 6, 65, 6, 34),
(1008, 101, 'masar daal', 7, 56, 8, 39),
(1008, 101, 'shakti bhog atta', 8, 190, 10, 27),
(1008, 101, 'chakki atta', 9, 150, 10, 45),
(1008, 101, 'patanjali atta', 10, 200, 10, 17),
(1008, 101, 'laxmi bhog atta', 11, 180, 10, 12),
(1008, 101, 'annapurna atta', 12, 170, 10, 12),
(1008, 101, 'urad daal', 13, 67, 8, 32),
(1008, 101, 'masoor daal', 14, 61, 6, 23),
(1008, 101, 'matar daal', 15, 75, 14, 45),
(1008, 104, 'parle g', 16, 10, 0, 67),
(1008, 101, 'oreo', 17, 10, 0, 34),
(1008, 101, 'oreo(big)', 18, 30, 0, 23),
(1008, 101, 'bourbon', 19, 20, 0, 34),
(1008, 104, 'jeera biscuit', 20, 10, 0, 74),
(1013, 105, 'natraj', 21, 2, 0, 45),
(1008, 101, 'faber castle', 22, 3, 0, 54),
(1013, 106, 'apsara eraser', 23, 5, 1, 23),
(1008, 101, 'magic eraser', 24, 7, 1, 54),
(1013, 107, 'natraj scale', 25, 10, 2, 23),
(1014, 108, 'paneer', 26, 139, 9, 12),
(1008, 101, 'cheese slice', 27, 78, 8, 18),
(1008, 101, 'milk', 28, 23, 5, 62);

-- --------------------------------------------------------

--
-- Table structure for table `subcat`
--

CREATE TABLE `subcat` (
  `catid` int(10) NOT NULL,
  `subname` char(20) NOT NULL,
  `subid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcat`
--

INSERT INTO `subcat` (`catid`, `subname`, `subid`) VALUES
(1008, 'pulses', 101),
(1008, 'flour', 102),
(1008, 'biscuit', 104),
(1013, 'pencil', 105),
(1013, 'eraser', 106),
(1013, 'scale', 107),
(1014, 'dairy', 108);

-- --------------------------------------------------------

--
-- Table structure for table `summary`
--

CREATE TABLE `summary` (
  `billno` int(20) NOT NULL,
  `custname` char(20) NOT NULL,
  `product` char(20) NOT NULL,
  `catsub` char(20) NOT NULL,
  `qty` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `dealdate` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `summary`
--

INSERT INTO `summary` (`billno`, `custname`, `product`, `catsub`, `qty`, `price`, `dealdate`) VALUES
(455572286, 'kapoor and sons', 'moong dal', 'grocery,pulses', 3, 300, '2020-08-08'),
(455572286, 'kapoor and sons', 'arhar dal', 'grocery,pulses', 3, 222, '2020-08-08'),
(38823756, 'shivam', 'arhar dal', 'grocery,pulses', 3, 222, '2020-08-13'),
(38823756, 'shivam', 'moong dal', 'grocery,pulses', 3, 300, '2020-08-13'),
(976433317, 'kapoor and sons', 'moong dal', 'grocery,pulses', 2, 200, '2020-08-13'),
(976433317, 'kapoor and sons', 'moong dal', 'grocery,pulses', 3, 300, '2020-08-13'),
(643320709, 'kapoor and sons', 'moong dal', 'grocery,pulses', 3, 300, '2020-08-14'),
(643320709, 'kapoor and sons', 'moong dal', 'grocery,pulses', 3, 300, '2020-08-14'),
(214238243, 'llssl', 'moong dal', 'grocery,pulses', 3, 300, '2020-08-14'),
(214238243, 'llssl', 'moong dal', 'grocery,pulses', 3, 300, '2020-08-14'),
(684070270, 'vdvdv', 'moong dal', 'grocery,pulses', 4, 400, '2020-08-06'),
(684070270, 'vdvdv', 'moong dal', 'grocery,pulses', 4, 400, '2020-08-06'),
(976904704, 'ram', 'moong dal', 'grocery,pulses', 5, 500, '2020-09-15'),
(656708070, 'ram', 'moong dal', 'grocery,pulses', 4, 400, '2020-08-14'),
(691408163, 'sonu', 'moong dal', 'grocery,pulses', 5, 500, '2020-08-15'),
(625607500, 'geeta', 'moong dal', 'grocery,pulses', 6, 600, '2020-07-12'),
(788853211, 'kapoor and sons', 'arhar dal', 'grocery,pulses', 5, 370, '2020-08-28');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` char(20) NOT NULL,
  `password` char(20) NOT NULL,
  `type` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `type`) VALUES
('100', '123', 'employee'),
('101', '123', 'employee'),
('104', '123', 'employee'),
('105', '111', 'employee'),
('shivam', '81001', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `dealer`
--
ALTER TABLE `dealer`
  ADD PRIMARY KEY (`phone`);

--
-- Indexes for table `empinfo`
--
ALTER TABLE `empinfo`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `subcat`
--
ALTER TABLE `subcat`
  ADD PRIMARY KEY (`subid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1015;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `subcat`
--
ALTER TABLE `subcat`
  MODIFY `subid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
