-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2025 at 05:43 AM
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
-- Database: `npos`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryID` int(4) NOT NULL,
  `name` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryID`, `name`) VALUES
(1, 'Lifestyle'),
(2, 'Jordan'),
(3, 'Running'),
(4, 'Basketball'),
(5, 'Football'),
(6, 'Training'),
(7, 'Skateboarding'),
(8, 'Golf'),
(9, 'Tennis'),
(10, 'Athletics');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int(11) NOT NULL,
  `isAvailable` varchar(7) NOT NULL DEFAULT 'true',
  `name` varchar(35) NOT NULL,
  `code` varchar(20) NOT NULL,
  `image` varchar(75) NOT NULL,
  `price` int(7) NOT NULL,
  `categoryID` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `isAvailable`, `name`, `code`, `image`, `price`, `categoryID`) VALUES
(1, 'true', 'Nike Court Vision low', 'CVLW', 'CVLW', 3695, 1),
(2, 'true', 'Nike V2K Run', 'V2KRN', 'V2KRN', 6895, 1),
(3, 'true', 'Nike C1TY', 'CTY', 'CTY', 5495, 1),
(4, 'true', 'Nike Dunk Low', 'DNKLW', 'DNKLW', 6895, 1),
(5, 'true', 'Nike Zoom Vomero 5', 'ZVMR5', 'ZMVMR', 8895, 1),
(6, 'true', 'Nike Air Force 1 \'07', 'AF17', 'AF17', 6195, 1),
(7, 'true', 'Nike T90 SP', 'T90SP', 'T90SP', 6295, 1),
(8, 'true', 'Nike Shox R4', 'SHXR4', 'SHXR4', 8395, 1),
(9, 'true', 'Nike Calm', 'CLM', 'CLM', 4495, 1),
(10, 'true', 'Nike Cortez Textile', 'CRTZTXTL', 'cortezTXTL', 4995, 1),
(11, 'true', 'Nike Victory One', 'VCTR1', 'victory1', 1595, 1),
(12, 'true', 'Nike P-6000', 'P6000', 'P6000', 6195, 1),
(13, 'true', 'Air Jordan 1 Low', 'AJ1LW', 'AJ1LW', 5895, 2),
(14, 'true', 'Air Jordan 1 Mid SE', 'AJ1MDSE', 'AJ1MDSE', 7095, 2),
(15, 'true', 'Air Jordan 1 High OG', 'AJ1HGHOG', 'AJ1HGHOG', 9895, 2),
(16, 'true', 'Air Jordan 4 RM', 'AJ4RM', 'AJ4RM', 7895, 2),
(17, 'true', 'Air Jordan 3 Retro \'Rare Air\'', 'AJ3RRA', 'AJ3RRA', 11995, 2),
(18, 'true', 'Jumpman MVP', 'MVP', 'MVP', 8995, 2),
(19, 'true', 'Jordan CMFT Era', 'CMFTERA', 'CMFTERA', 6995, 2),
(20, 'true', 'Jordan Spizike Low', 'SPZKLW', 'SPZKLW', 8895, 2),
(21, 'true', 'Air Jordan 11 Retro \'Legend Blue\'', 'AJ11RLB', 'AJ11RLB', 11895, 2),
(22, 'true', 'Nike Vaporfly 4', 'VPFLY4', 'VPFLY4', 13995, 3),
(23, 'true', 'Nike Invicible 3 By You', 'INVCBL', 'INVCBL', 11995, 3),
(24, 'true', 'Nike Pegasus Trail 5', 'PGST5', 'PGST5', 7895, 3),
(25, 'true', 'Nike Alphafly 3', 'ALPHFLY3', 'ALPHFLY3', 14495, 3),
(26, 'true', 'Nike Zoom Fly 6', 'ZMFLY6', 'ZMFLY6', 9395, 3),
(27, 'true', 'Nike Downshifter 13', 'DWNSHFTR13', 'DWNSHFTR13', 3295, 3),
(28, 'true', 'Nike Streakfly 2', 'STRKFLY2', 'STRKFLY2', 10295, 3),
(29, 'true', 'Nike Run Swift 3', 'RNSWFT3', 'RNSWFT3', 3995, 3),
(30, 'true', 'Nike Juniper Trail 3', 'JNPRTRL3', 'JNPRTRL3', 4695, 3),
(31, 'true', 'Tatum 3 PF \'Tunnel Walk\'', 'TT3TW', 'TT3TW', 7095, 4),
(32, 'true', 'Luka .77 PF', 'LK77PF', 'LK77PF', 5795, 4),
(33, 'true', 'Luka 4 PF \'Space Navigator\'', 'LK4SN', 'LK4SN', 7595, 4),
(34, 'true', 'Luka 3 PF', 'LK3PF', 'LK3PF', 7395, 4),
(35, 'true', 'Tatum 2 \'Sidewalk Chalk\' PF', 'TTM2SC', 'TTM2SC', 7095, 4),
(36, 'true', 'Zion 3 \'Rising\' PF', 'ZN3R', 'ZN3R', 8395, 4),
(37, 'true', 'Zion 4 EP \'Sharonda\'', 'ZN4SHR', 'ZN4SHR', 8095, 4),
(38, 'true', 'Jordan \'Why not?\' Zer0.3 PF', 'JRDNWN', 'JRDNWN', 7395, 4),
(39, 'true', 'Jordan Zoom Separate PF', 'JRDNZS', 'JRDNZS', 5895, 4),
(40, 'true', 'Jordan Heir Series PF Bloodline\'', 'JRDNHS', 'JRDNHS', 6195, 4),
(41, 'true', 'Tatum 1 \'Denim\' PF', 'TTM1DNM', 'TTM1DNM', 6895, 4),
(42, 'true', 'Air Jordan XXXIX PF \'Noir\'', 'XXXIXPFN', 'XXXIXPFN', 11395, 4),
(43, 'true', 'Nike Mercurial Vapor 16 Elite', 'MV16EKM', 'MV16EKM', 13595, 5),
(44, 'true', 'Nike Phantom GX 2 Elite', 'PNTMGX2E', 'PNTMGX2E', 13395, 5),
(45, 'true', 'Nike Mercurial Superfly 10 Academy', 'MCSPFL10', 'MCSPFL10', 5495, 5),
(46, 'true', 'Nike Tiempo Legend 10 Elite', 'TL10E', 'TL10E', 12295, 5),
(47, 'true', 'Nike Mercurial Superfly 10 Elite', 'MCS10E', 'MCS10E', 14895, 5),
(48, 'true', 'Nike Mercurial Vapor 1 RGN SE', 'MCV1RSE', 'MCV1RSE', 16895, 5),
(49, 'true', 'Nike Air Monarch IV', 'AMIV', 'AMIV', 2595, 6),
(50, 'true', 'Nike MC Trainer 3', 'MCT3', 'MCT3', 3695, 6),
(51, 'true', 'Nike Air Max Alpha Trainer 6', 'AMAT6', 'AMAT6', 4995, 6),
(52, 'true', 'Nike Free Metcon 6', 'FRMTCN6', 'FRMTCN6', 6895, 6),
(53, 'true', 'Nike Free 2025', 'FR2025', 'FR2025', 5795, 6),
(54, 'true', 'Nike Motiva', 'MTV', 'MTV', 6195, 6),
(55, 'true', 'Nike SB Dunk Low Pro', 'SBDNKLWP', 'SBDNKLWP', 6195, 7),
(56, 'true', 'Nike SB Force 58', 'SBF58', 'SBF58', 3895, 7),
(57, 'true', 'Nike SB FC Classic', 'SBFCC', 'SBFCC', 3695, 7),
(58, 'true', 'Nike SB Zoom Blazer Low Pro GT', 'SBZMBLWPG', 'SBZMBLWPG', 3995, 7),
(59, 'true', 'Nike SB Alleyoop', 'SBALYP', 'SBALYP', 4095, 7),
(60, 'true', 'Nike SB Zoom Janoski OG+', 'SBZMJOG', 'SBZMJOG', 5195, 7),
(61, 'true', 'Nike Victory Tour 4', 'VCTRYT4', 'VCTRYT4', 10895, 8),
(62, 'true', 'Nike Air MAx 90 G', 'AM90G', 'AM90G', 8595, 8),
(63, 'true', 'Nike Free Golf NN', 'FGNN', 'FGNN', 7395, 8),
(64, 'true', 'Jordan NU Retro 1 G', 'NURT1G', 'NURT1G', 8595, 8),
(65, 'true', 'Nike Infinity Tour 2', 'INFNTYT2', 'INFNTYT2', 9395, 8),
(66, 'true', 'Nike Victory Tour 3 Boa', 'VCTRYT3B', 'VCTRYT3B', 11295, 8),
(67, 'true', 'NikeCourt Lite 4', 'CRTLT4', 'CRTLT4', 4095, 9),
(68, 'true', 'Nike GP Challenge Pro', 'GPCPRO', 'GPCPRO', 6195, 9),
(69, 'true', 'Nike Zoom GP Challenge 1', 'ZMGPC1', 'ZMGPC1', 8395, 9),
(70, 'true', 'Nike Vapor Pro 3', 'VPRPRO3', 'VPRPRO3', 6995, 9),
(71, 'true', 'Nike Vapor 12 Premium', 'VPR12P', 'VPR12P', 9695, 9),
(72, 'true', 'Nike GP Challenge Pro Premium', 'GPCPROP', 'GPCPROP', 6995, 9),
(73, 'true', 'Nike Vaporfly 4 \'J Ingebrigtsen\'', 'VPRFLY4JI', 'VPRFLY4JI', 13995, 10),
(74, 'true', 'Nike Streakfly 2', 'STREAKFLY2', 'STREAKFLY2', 10295, 10),
(75, 'true', 'Nike Rival Fly 4', 'RVLFLY4', 'RVLFLY4', 5495, 10),
(76, 'true', 'Nike Alphafly 3 Premium', 'ALPH3PRE', 'ALPH3PRE', 15095, 10),
(77, 'true', 'Nike Zoom Fly 6 \'J Ingebrigtsen\'', 'VPR12P', 'VPR12P', 9895, 10),
(78, 'true', 'Nike Vaporfly 3 \'E Kipchoge\'', 'GPCPROP', 'GPCPROP', 12595, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
