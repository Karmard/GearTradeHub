-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2024 at 01:14 PM
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
-- Database: `geartradehub`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `UserID` varchar(300) NOT NULL,
  `Fname` varchar(150) NOT NULL,
  `Lname` varchar(150) NOT NULL,
  `email` varchar(250) NOT NULL,
  `wnumber` varchar(300) NOT NULL,
  `password` varchar(250) NOT NULL,
  `notifications` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminlog`
--

INSERT INTO `adminlog` (`UserID`, `Fname`, `Lname`, `email`, `wnumber`, `password`, `notifications`) VALUES
('A001B', 'Mary', 'Shamte', 'maryshamte@gmail.com', '+25574548263', '123321@@', 0),
('A001C', 'Chris', 'Nandasaba', 'chris@gmail.com', '+254793582926', '123321Q', 0);

-- --------------------------------------------------------

--
-- Table structure for table `carreg`
--

CREATE TABLE `carreg` (
  `UserID` int(100) NOT NULL,
  `vinNo` varchar(20) NOT NULL,
  `carName` varchar(30) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `VehicleType` enum('SUV','Hatchback','Sedan','Station Wagon','Minivan','Coupe','Convertible','Truck','Pickup Truck','') NOT NULL,
  `transmission` enum('Manual','Automatic','Hybrid','Electric') NOT NULL,
  `carCondition` enum('New','Used') NOT NULL,
  `mileage` varchar(200) NOT NULL,
  `frontimage` varchar(255) NOT NULL,
  `sideLeftimage` varchar(255) NOT NULL,
  `sideRightimage` varchar(255) NOT NULL,
  `backimage` varchar(255) NOT NULL,
  `interiorimage` varchar(255) NOT NULL,
  `dashboardimage` varchar(255) NOT NULL,
  `price` int(200) NOT NULL,
  `registrationDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carreg`
--

INSERT INTO `carreg` (`UserID`, `vinNo`, `carName`, `brand`, `VehicleType`, `transmission`, `carCondition`, `mileage`, `frontimage`, `sideLeftimage`, `sideRightimage`, `backimage`, `interiorimage`, `dashboardimage`, `price`, `registrationDate`) VALUES
(4, 'KD256464', 'Range Rover sport 2022', 'Land Rover', 'SUV', 'Automatic', 'New', '130', 'uploads/range front.jpg', 'uploads/range left.jpg', 'uploads/range right.jpg', 'uploads/range back.jpg', 'uploads/range int.jpg', 'uploads/range dash.jpg', 15988756, '2024-02-07 22:26:58'),
(3, 'KD256842', 'BMW M Competition 2023', 'BMW', 'Coupe', 'Automatic', 'New', '120', 'uploads/BFRONT.jpg', 'uploads/bleft.webp', 'uploads/BRIGHT.jpg', 'uploads/BBACK.jpg', 'uploads/BINTERIO.jpg', 'uploads/reddash.jpg', 4688532, '2024-02-07 21:24:53'),
(3, 'KD259801', 'Jeep Trackhawk 2021', 'Jeep', 'SUV', 'Manual', 'New', '98', 'uploads/jfront.jpg', 'uploads/jleft.jpg', 'uploads/jright.jpg', 'uploads/jback.jpg', 'uploads/jint.jpg', 'uploads/jdash.jpg', 18622500, '2024-02-07 21:38:41'),
(4, 'KD384732', 'Range Rover vogue', 'Land Rover', 'SUV', 'Automatic', 'Used', '89000', 'uploads/r front.jpg', 'uploads/left r.webp', 'uploads/r right.jpg', 'uploads/r back.jpg', 'uploads/r int.jpg', 'uploads/r dash.jpg', 5989800, '2024-02-07 22:33:58'),
(1, 'KD389474', 'Brabus 800 GLE', 'Mercedes', 'SUV', 'Automatic', 'New', '0.3', 'uploads/brab f.jpg', 'uploads/brab l.jpg', 'uploads/brab r.jpg', 'uploads/brab back.jpg', 'uploads/brab int.jpg', 'uploads/brab dash.jpg', 35877654, '2024-02-17 08:42:34'),
(4, 'KD473556', 'Mercedes-Benz SL-Class SL 65 A', 'Mercedes', 'Coupe', 'Manual', 'Used', '155000', 'uploads/black fr.jpg', 'uploads/black left.jpg', 'uploads/black right.jpg', 'uploads/black bac.jpg', 'uploads/black int.jpg', 'uploads/black dash.jpg', 2455643, '2024-02-07 23:00:46'),
(3, 'KD486253', 'Cadillac Escalade place 2C', 'Cadillav', 'SUV', 'Automatic', 'New', '110', 'uploads/cfront.jpg', 'uploads/cleft.jpg', 'uploads/cright.jpg', 'uploads/cback.jpg', 'uploads/cint.jpg', 'uploads/dash golf.jpg', 15688900, '2024-02-07 21:31:41'),
(1, 'KD48648', 'Alfa Romeo tcvd', 'Alfa Romeo', 'Hatchback', 'Automatic', 'Used', '234', 'uploads/afront.jpg', 'uploads/aleft.jpg', 'uploads/aright.jpg', 'uploads/aback.jpg', 'uploads/aint.jpg', 'uploads/adash.jpg', 2678344, '2024-02-07 05:22:41'),
(3, 'KD5432546', 'Teska Roadstar 2014', 'Tesla', 'Coupe', 'Electric', 'Used', '100000', 'uploads/t fr.avif', 'uploads/t left.avif', 'uploads/t right.avif', 'uploads/t back.avif', 'uploads/t int.avif', 'uploads/t dash.avif', 2433200, '2024-02-07 21:19:57'),
(4, 'KD635487', 'Rolls Royce Cullinan mat black', 'Rolls Royce', 'SUV', 'Automatic', 'New', '114', 'uploads/DSC_4176-2(1).jpeg', 'uploads/roll left.jpg', 'uploads/roll right.jpg', 'uploads/rolls back.jpg', 'uploads/roll int.jpg', 'uploads/rolls dash.jpg', 34576234, '2024-02-07 22:47:22'),
(1, 'KD6564838', 'Brabus G-900 Amg', 'Mercedes', 'SUV', 'Automatic', 'New', '1', 'uploads/mans front.jpg', 'uploads/mans left.jpeg', 'uploads/mans right.jpg', 'uploads/mans back.jpg', 'uploads/mans interior.jpeg', 'uploads/mans dash.jpeg', 34877600, '2024-02-07 05:26:26'),
(1, 'KD679839', 'Volkswagen Tiguan 2024 R', 'Volkswagen', 'SUV', 'Automatic', 'New', '0.4', 'uploads/v f.avif', 'uploads/v l.avif', 'uploads/v r.avif', 'uploads/v b.avif', 'uploads/v int.avif', 'uploads/v dash.avif', 4899765, '2024-02-07 05:28:55'),
(1, 'KD76453', 'Land Rover Defender 110 D250 2', 'Land Rover', 'SUV', 'Manual', 'New', '0.9', 'uploads/wfront.jpg', 'uploads/wleft.jpg', 'uploads/wright.jpg', 'uploads/wback.jpg', 'uploads/wint.jpg', 'uploads/wdash.jpg', 15788653, '2024-02-07 05:32:02');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `invoiceID` int(100) NOT NULL,
  `buyerUserID` int(100) NOT NULL,
  `sellerUserID` int(100) NOT NULL,
  `carVin` varchar(50) NOT NULL,
  `paymentDate` date NOT NULL,
  `price` int(100) NOT NULL,
  `paymentMethod` enum('Mobile money','Cash','Bank card','') NOT NULL,
  `PaymentStatus` enum('Completed','Pending','Failed','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personallog`
--

CREATE TABLE `personallog` (
  `UserID` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `wnumber` int(100) NOT NULL,
  `IDNo` varchar(50) NOT NULL,
  `IDproof` varchar(255) NOT NULL,
  `pFname` varchar(30) NOT NULL,
  `pLname` varchar(20) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personallog`
--

INSERT INTO `personallog` (`UserID`, `username`, `email`, `wnumber`, `IDNo`, `IDproof`, `pFname`, `pLname`, `password`) VALUES
(4, 'Ishowspeed', 'ishowspeed@gmail.com', 2147483647, '3782546378', 'uploads/b back.jpg', 'Daren', 'Watkins', '$2y$10$gczq5Mwol5G3shDLeb72s.La64WC3/j/PjdXAM0c81fnEsc94GTmi'),
(3, 'Victoria', 'victoria@gmail.com', 2147483647, '5364782635', 'uploads/MYSTERY STORY (1).png', 'Victoria', 'Njuguna', '$2y$10$Y8QjHYJMd9U9pLP8XEQ3wezPBehyAge7EXAvjMAGy4Dbt3s6WFAH2'),
(1, 'Karmard', 'tomkarma13@gmail.com', 2147483647, '75898746', 'uploads/self.jpg', 'Tom', 'Karma', '$2y$10$74L7IbA3MKyxe5XTN6H/0.cc0A2YX9y1QV157wzyQqWmtN29CYygq'),
(6, 'Tanzania', 'tanza@gmail.com', 2147483647, '874648383', 'uploads/dodo.jpg', 'Tanzania', 'Rent a car', '$2y$10$.hCZHg5ujhQuD7vOjLn75.gSUoFTtugC9.I567tGVVON/wUeg2j2y');

-- --------------------------------------------------------

--
-- Table structure for table `registration_request`
--

CREATE TABLE `registration_request` (
  `requestID` int(250) NOT NULL,
  `UserID` int(250) NOT NULL,
  `approval_status` enum('Accept','Decline','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `showroomlog`
--

CREATE TABLE `showroomlog` (
  `UserID` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `wnumber` varchar(100) NOT NULL,
  `showname` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `licence` varchar(255) NOT NULL,
  `certificate` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `showroomlog`
--

INSERT INTO `showroomlog` (`UserID`, `username`, `email`, `wnumber`, `showname`, `location`, `licence`, `certificate`, `password`) VALUES
(2, 'House', 'houseofcars@gmail.com', '+25478382764', 'House of cars', 'Kilimani', 'uploads/jollo.jpg', 'uploads/self.jpg', '$2y$10$hRm.zdhXMym8BS5wUyoFL.C6qYNR6dsdSv0v0ObEHUBUbbe0QptRS'),
(5, 'Kai and Karo', 'kaikaro@gmail.com', '+254786453920', 'Kai and Karo cars', 'Ngong Road', 'uploads/fff.jpeg', 'uploads/brab dash.jpg', '$2y$10$rlDqCN3ehSndTin5iSXXqumlp52cesuHyxwlfCsxYR.yMU8R6IZg6');

-- --------------------------------------------------------

--
-- Table structure for table `soldcars`
--

CREATE TABLE `soldcars` (
  `saleID` int(100) NOT NULL,
  `sellerUserID` int(100) NOT NULL,
  `carVin` varchar(50) NOT NULL,
  `saleDate` datetime NOT NULL,
  `price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `wnumber` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL,
  `usertype` enum('personal','showroom') DEFAULT NULL,
  `approval_status` enum('Accept','Decline') DEFAULT NULL,
  `regdate` datetime NOT NULL DEFAULT current_timestamp(),
  `suspended` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `username`, `email`, `wnumber`, `password`, `usertype`, `approval_status`, `regdate`, `suspended`) VALUES
(1, 'Karmard', 'tomkarma13@gmail.com', '+254768608064', '$2y$10$vrNfIOduJ3pkHfnnmHLAIuX226VbaBmKfmCqkC6F8T41QgfFLpTJ6', 'personal', NULL, '2024-02-06 19:03:57', 0),
(2, 'House', 'houseofcars@gmail.com', '+25478382764', '$2y$10$JKU9EnpdKqngnV4flRD6eezeElTIgMrjMkcq2JxEcPWfIT7mFgZyi', 'showroom', NULL, '2024-02-06 20:05:13', 0),
(3, 'Victoria', 'victoria@gmail.com', '+24728493856', '$2y$10$Y7W90tpyOFfCJw2DG8MPYO23HgcHQ1MVRPdhhMJMAfv5Vmuc3ixtG', 'personal', NULL, '2024-02-07 23:12:53', 0),
(4, 'Ishowspeed', 'ishowspeed@gmail.com', '+24728493823', '$2y$10$.D2C0g2W0CSFe6VSSVYmoeqIaqbHHVcPODFhbXfS3gKK5itt6DaMe', 'personal', NULL, '2024-02-08 00:05:05', 0),
(5, 'Kai and Karo', 'kaikaro@gmail.com', '+254786453920', '$2y$10$Er51WFE0QEgdRcuMtG5AUuuUOMY719VDFB6j7ANb0B90uO2F9wowC', 'showroom', NULL, '2024-02-18 17:55:16', 0),
(6, 'Tanzania', 'tanza@gmail.com', '+254741818812', '$2y$10$6v.NcFfBuGq.T3jCjnZBhOdyYX/UKx4IaKvaOlJaMxi/BYB.FHL9q', 'personal', NULL, '2024-02-18 20:03:14', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlog`
--
ALTER TABLE `adminlog`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `carreg`
--
ALTER TABLE `carreg`
  ADD PRIMARY KEY (`vinNo`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`invoiceID`),
  ADD KEY `sellerUserID` (`sellerUserID`),
  ADD KEY `buyerUserID` (`buyerUserID`),
  ADD KEY `carVin` (`carVin`);

--
-- Indexes for table `personallog`
--
ALTER TABLE `personallog`
  ADD PRIMARY KEY (`IDNo`,`username`),
  ADD KEY `emp_id_fk` (`UserID`);

--
-- Indexes for table `registration_request`
--
ALTER TABLE `registration_request`
  ADD PRIMARY KEY (`requestID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `showroomlog`
--
ALTER TABLE `showroomlog`
  ADD PRIMARY KEY (`username`,`email`),
  ADD KEY `emp_id_fk` (`UserID`);

--
-- Indexes for table `soldcars`
--
ALTER TABLE `soldcars`
  ADD PRIMARY KEY (`saleID`),
  ADD KEY `sellerUserID` (`sellerUserID`),
  ADD KEY `carVin` (`carVin`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carreg`
--
ALTER TABLE `carreg`
  ADD CONSTRAINT `carreg_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`sellerUserID`) REFERENCES `users` (`UserID`),
  ADD CONSTRAINT `invoices_ibfk_2` FOREIGN KEY (`buyerUserID`) REFERENCES `users` (`UserID`),
  ADD CONSTRAINT `invoices_ibfk_3` FOREIGN KEY (`carVin`) REFERENCES `carreg` (`vinNo`);

--
-- Constraints for table `personallog`
--
ALTER TABLE `personallog`
  ADD CONSTRAINT `personallog_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE;

--
-- Constraints for table `registration_request`
--
ALTER TABLE `registration_request`
  ADD CONSTRAINT `registration_request_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `showroomlog`
--
ALTER TABLE `showroomlog`
  ADD CONSTRAINT `showroomlog_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE;

--
-- Constraints for table `soldcars`
--
ALTER TABLE `soldcars`
  ADD CONSTRAINT `soldcars_ibfk_1` FOREIGN KEY (`sellerUserID`) REFERENCES `users` (`UserID`),
  ADD CONSTRAINT `soldcars_ibfk_2` FOREIGN KEY (`carVin`) REFERENCES `carreg` (`vinNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
