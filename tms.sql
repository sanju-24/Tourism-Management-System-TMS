-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2025 at 04:56 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `EmailId` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Name`, `EmailId`, `MobileNumber`, `Password`, `updationDate`) VALUES
(1, 'admin', 'Administrator', 'test@gmail.com', 01743597989, '12345678', '2025-8-10 12:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(1, 1, 'rahim.bd@gmail.com', '2025-07-11', '2025-07-18', 'I want this package.', '2025-01-16 06:38:36', 2, 'u', '2025-01-30 05:18:29'),
(2, 2, 'korim@yahoo.com', '2025-07-10', '2025-07-13', 'There is some discount', '2025-01-17 06:43:25', 1, NULL, '2025-01-31 01:21:17'),
(3, 4, 'abir.cse@gmail.com', '2025-07-11', '2025-07-15', 'When I get confirmation', '2025-01-17 06:44:39', 2, 'a', '2025-01-30 05:18:52'),
(4, 2, 'sumaiya.ak@outlook.com', '2025-02-02', '2025-02-08', 'NA', '2025-01-31 02:03:27', 1, NULL, '2025-01-31 06:35:08'),
(5, 3, 'tanvir.bd@gmail.com', '2025-01-31', '2025-02-05', 'please offer some discount', '2025-01-31 05:21:52', 0, NULL, NULL),
(6, 2, 'farzana.rahman@yahoo.com', '2025-03-01', '2025-03-05', 'NA', '2025-02-03 13:04:33', 1, NULL, '2025-02-03 13:05:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(2, 'Hasan Mahmud', 'hasan.bd@gmail.com', '01789456231', 'Enquiry', 'Any offer for Cox’s Bazar trip?', '2025-01-18 06:31:38', NULL),
(3, 'Nusrat Jahan', 'nusrat.jahan@yahoo.com', '01865473219', 'Family Package', 'Do you have any discount for Sylhet tour?', '2025-01-19 06:32:41', 1),
(5, 'Tanvir Rahman', 'tanvir.rahman@gmail.com', '01987654321', 'Test Subject', 'This enquiry is for testing purpose', '2025-02-03 13:07:50', 1);
-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(7, 'rahim.bd@gmail.com', 'Refund', 'I want my refund for Cox’s Bazar package', '2025-01-25 06:56:29', NULL, '2025-01-30 05:20:14'),
(10, 'nusrat.jahan@yahoo.com', 'Other', 'This is a test enquiry', '2025-01-31 05:24:40', NULL, NULL),
(13, 'tanvir.rahman@gmail.com', 'Booking Issues', 'I want some information regarding Sundarbans trip booking', '2025-02-03 13:06:00', 'Information provided', '2025-02-03 13:06:26');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--


INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '																				<p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: small; font-weight: 700;\">Terms and Conditions</span></p>\r\n										<p align=\"justify\" style=\"font-size: 14px;\">By booking with our Tourism Management System (TMS), you agree to follow the rules and regulations of our services. All bookings are subject to availability and confirmation. Cancellations and refunds will follow company policies. TMS reserves the right to update or modify these terms anytime.</p>\r\n										'),
(2, 'privacy', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">We respect your privacy and are committed to protecting your personal data. Information collected during booking (such as name, email, and phone number) will only be used for service confirmation and customer support. We do not share your data with third parties without consent. All customer details are stored securely. By using our website, you consent to our Privacy Policy.</span>\r\n										'),
(3, 'aboutus', '										<div><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; text-align: justify; font-weight: bold;\">Welcome to Tourism Management System Bangladesh!</span></div><span style=\"font-family: &quot;courier new&quot;;\"><span style=\"color: rgb(0, 0, 0); font-size: 15px; text-align: justify;\">We are a dedicated travel solutions provider in Bangladesh, helping travelers explore the beauty of Cox’s Bazar, Sundarbans, Sylhet, Bandarban, and other amazing destinations. Since our beginning, our committed team has always ensured pleasant and enjoyable experiences for our clients.</span><span style=\"color: rgb(80, 80, 80); font-size: 13px;\">&nbsp;We offer packages that suit different budgets and travel preferences. You can book your dream vacation online, customize your package, and rely on our expert consultants for the best travel experience in Bangladesh.</span></span>\r\n										'),
(11, 'contact', '																				<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address: House #12, Road #5, Dhanmondi, Dhaka-1209, Bangladesh<br>Email: info@tmsbd.com<br>Phone: +880 1789 456 231</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Sundarbans Adventure Tour', 'Group Package', 'Sundarbans, Khulna', 12000, 'Boat Safari, Accommodation, All Meals, Local Guide', 'Explore the world’s largest mangrove forest, visit Karamjal Wildlife Center, and enjoy a boat ride to see Royal Bengal Tigers, deer, and crocodiles.', 'sundarbans.jpg', '2025-07-15 05:21:58', '2025-01-30 05:20:49'),
(2, 'Cox’s Bazar Sea Beach Holiday', 'Family Package', 'Cox’s Bazar, Chattogram', 8000, 'Sea View Hotel, Free Breakfast, Airport Pickup & Drop', 'Enjoy the world’s longest sea beach, visit Himchari and Inani Beach, and enjoy fresh seafood at local restaurants.', 'coxs_bazar.jpg', '2025-07-15 05:21:58', '2025-01-30 05:20:56'),
(3, 'Saint Martin Island Couple Special', 'Couple Package', 'Saint Martin’s Island', 15000, 'Beach Resort Stay, Candle Light Dinner, Free Wi-Fi', 'A romantic escape with clear blue water, snorkeling, and coral watching. Ideal for honeymoon couples.', 'saint_martin.jpg', '2025-07-15 05:21:58', '2025-01-30 05:20:56'),
(4, 'Sylhet Tea Garden & Jaflong Tour', 'Family Package', 'Sylhet', 6000, 'Accommodation, Transport, Breakfast', 'Visit Jaflong, Lalakhal boat ride, Ratargul Swamp Forest, and tea gardens. Perfect for family vacations.', 'sylhet.jpg', '2025-07-15 05:21:58', '2025-01-30 05:20:56'),
(5, 'Bandarban Hill Tracks Adventure', 'Adventure Package', 'Bandarban, Chattogram Hill Tracts', 10000, 'Local Guide, Hill Resort Stay, Breakfast, Transport', 'Climb Nilgiri and Nilachal hills, visit Boga Lake and Nafakhum waterfall, and enjoy tribal culture.', 'bandarban.jpg', '2025-07-15 05:21:58', '2025-01-30 05:20:56'),
(6, 'Rangamati Lake & Hanging Bridge Tour', 'Group Package', 'Rangamati', 7500, 'Boat Ride, Lunch, Transport, Guide', 'Experience Kaptai Lake cruise, tribal handicraft markets, and the famous Hanging Bridge.', 'rangamati.jpg', '2025-07-15 05:21:58', '2025-01-30 05:20:56'),
(7, 'Srimangal – Land of Two Leaves & a Bud', 'Family Package', 'Srimangal', 6500, 'Tea Resort Stay, Breakfast, Transport, Guide', 'Explore tea gardens, visit Lawachara National Park, Madhabpur Lake, and enjoy Seven-layer tea.', 'srimangal.jpg', '2025-07-15 05:21:58', '2025-01-30 05:20:56'),
(8, 'Kuakata – The Daughter of Sea', 'Domestic Package', 'Kuakata, Barishal', 7000, 'Hotel Stay, Transport, Breakfast', 'Enjoy both sunrise and sunset at the same beach, visit Lebur Char and Fatra’s Char island.', 'kuakata.jpg', '2025-07-15 05:21:58', '2025-01-30 05:20:56'),
(9, 'Dhaka Historical & Cultural Tour', 'Day Tour', 'Dhaka City', 3000, 'Lunch, Transport, Guide', 'Explore Lalbagh Fort, Ahsan Manzil, Star Mosque, National Museum, and Old Dhaka’s street food.', 'dhaka_city.jpg', '2025-07-15 05:21:58', '2025-01-30 05:20:56');
-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Sadiqur Rahman', '01712345678', 'sadiqur.bd@gmail.com', '12345678', '2025-01-16 06:33:20', '2025-01-31 02:00:40'),
(2, 'Tanvir Hasan', '01823456789', 'tanvir.hasan@gmail.com', '23456789', '2025-01-16 06:33:20', '2025-01-31 02:00:48'),
(3, 'Nusrat Jahan', '01987654321', 'nusrat.jahan@gmail.com', '34567890', '2025-01-16 06:33:20', '2025-01-31 02:00:48'),
(4, 'Abir Hossain', '01612349876', 'abir.hossain@gmail.com', '45678901', '2025-01-16 06:33:20', '2025-01-31 02:00:48'),
(5, 'Test User', '01598765432', 'testuser@gmail.com', '56789012', '2025-01-16 06:33:20', '2025-01-31 02:00:48'),
(9, 'Sample Account', '01345678901', 'sampleaccount@gmail.com', '67890123', '2025-01-31 06:32:51', NULL),
(10, 'Farhana Akter', '01456789012', 'farhana.akter@gmail.com', '78901234', '2025-02-03 13:03:43', '2025-02-03 13:04:02');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
