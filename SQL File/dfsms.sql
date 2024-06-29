-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2024 at 01:36 PM
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
-- Database: `dfsms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(5) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` char(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`, `UpdationDate`) VALUES
(1, 'Admin', 'admin', 9762354813, 'admin.dfsms@gmail.com', '0e7517141fb53f21ee439b355b5a1d0a', '2024-05-31 06:30:00', '2024-06-26 06:00:24');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `CategoryCode` varchar(50) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `CategoryCode`, `PostingDate`) VALUES
(1, 'Milk Products', 'MP-001', '2024-06-26 06:49:15'),
(2, 'Curd Products', 'CP-002', '2024-06-26 06:49:46'),
(3, 'Cheese Products', 'CH-003', '2024-06-26 06:50:10'),
(4, 'Butter Products', 'BP-004', '2024-06-26 06:52:26'),
(5, 'Ghee Products', 'GP-005', '2024-06-26 06:52:49'),
(6, 'Buttermilk Products', 'BM-006', '2024-06-26 06:53:22'),
(7, 'Lassi Products', 'LP-007', '2024-06-26 06:54:27'),
(8, 'Flavored Milk', ' FM-008', '2024-06-26 06:54:51'),
(9, 'Khoa/Kova Products', 'KK-009', '2024-06-26 06:55:16'),
(10, 'Ice Cream Products', 'IC-010', '2024-06-26 06:55:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `id` int(11) NOT NULL,
  `CompanyName` varchar(150) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`id`, `CompanyName`, `PostingDate`) VALUES
(11, 'Amul', '2024-06-26 07:01:24'),
(12, 'Mother Dairy', '2024-06-26 07:01:36'),
(13, 'Nandini', '2024-06-26 07:01:49'),
(14, 'Aavin', '2024-06-26 07:01:59'),
(15, 'Saras', '2024-06-26 07:02:10'),
(16, 'Verka', '2024-06-26 07:02:23'),
(17, 'Sudha', '2024-06-26 07:02:33'),
(18, 'Milma', '2024-06-26 07:02:46'),
(19, 'Vijaya', '2024-06-26 07:02:56'),
(20, 'Gokul', '2024-06-26 07:03:06'),
(21, 'Sanchi', '2024-06-26 07:03:55'),
(22, 'Hatsun', '2024-06-26 07:04:09'),
(23, 'Kwality', '2024-06-26 07:04:22'),
(24, 'Heritage', '2024-06-26 07:04:31'),
(25, 'Dudhsagar', '2024-06-26 07:04:46'),
(26, 'Himul', '2024-06-26 07:47:20'),
(27, 'Warana', '2024-06-26 07:47:35'),
(28, 'Parag', '2024-06-26 07:47:41'),
(29, 'Gowardhan', '2024-06-26 07:48:04'),
(30, 'Namaste India', '2024-06-26 07:48:55'),
(31, 'Patanjali', '2024-06-26 07:49:37'),
(32, 'Prabhat', '2024-06-26 07:49:43'),
(33, 'Thirumala Milk', '2024-06-26 07:50:08'),
(34, 'Milk Mantra', '2024-06-26 07:50:27'),
(35, 'Chitale', '2024-06-26 07:50:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `id` int(11) NOT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `InvoiceNumber` int(11) DEFAULT NULL,
  `CustomerName` varchar(150) DEFAULT NULL,
  `CustomerContactNo` bigint(12) DEFAULT NULL,
  `PaymentMode` varchar(100) DEFAULT NULL,
  `InvoiceGenDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`id`, `ProductId`, `Quantity`, `InvoiceNumber`, `CustomerName`, `CustomerContactNo`, `PaymentMode`, `InvoiceGenDate`) VALUES
(1, 8, 2, 202401001, 'Rajesh Kumar', 9876543210, 'cash', '2023-06-26 08:32:47'),
(2, 11, 1, 202401002, 'Aditi Sharma', 9123456789, 'card', '2023-06-28 08:32:47'),
(3, 9, 1, 202401003, 'Ravi Verma', 9234567890, 'cash', '2023-07-02 11:38:08'),
(4, 12, 1, 202401005, 'Venkatesh Reddy', 9456789012, 'cash', '2023-07-10 11:38:08'),
(5, 10, 1, 202401004, 'Sneha Patil', 9345678901, 'card', '2023-07-15 11:43:48'),
(6, 13, 1, 202401007, 'Sunil Singh', 9678901234, 'cash', '2023-07-25 11:43:48'),
(7, 15, 1, 202401006, 'Priya Iyer', 9567890123, 'card', '2023-07-28 11:48:06'),
(8, 16, 1, 202401009, 'Arjun Das', 9890123456, 'cash', '2023-08-01 11:48:06'),
(9, 17, 2, 202401010, 'Meera Nair', 9901234567, 'card', '2023-08-08 12:07:50'),
(10, 19, 2, 202401013, 'Manoj Singh', 9834567890, 'cash', '2023-08-14 12:07:50'),
(11, 20, 1, 202401014, 'Nisha Joshi', 9845678901, 'card', '2023-08-20 14:54:24'),
(12, 21, 1, 202401016, 'Shweta Kapoor', 9867890123, 'card', '2023-08-28 14:54:24'),
(13, 21, 1, 202401016, 'Shweta Kapoor', 9867890123, 'card', '2023-09-05 14:54:24'),
(14, 23, 2, 202401017, 'Vikram Rao', 9878901234, 'cash', '2023-09-15 09:50:50'),
(15, 26, 1, 202401018, 'Divya Aggarwal', 9889012345, 'card', '2023-09-18 09:50:50'),
(16, 24, 2, 202401019, 'Anil Kumar', 9890123456, 'cash', '2023-09-23 09:54:42'),
(17, 26, 2, 202401020, 'Pooja Das', 9901234567, 'card', '2023-10-01 10:00:14'),
(18, 28, 4, 202401022, 'Neha Desai', 9923456789, 'card', '2023-10-07 09:54:42'),
(19, 29, 2, 202401023, 'Karan Singh', 9934567890, 'cash', '2023-10-17 09:54:42'),
(20, 29, 2, 202401024, 'Asha Menon', 9945678901, 'card', '2023-10-22 09:54:42'),
(21, 31, 4, 202401025, 'Arvind Gupta', 9956789012, 'cash', '2023-11-06 10:24:04'),
(22, 32, 5, 202401026, 'Bhavna Sinha', 9967890123, 'card', '2023-11-12 10:24:04'),
(23, 33, 3, 202401027, 'Deepak Malhotra', 9978901234, 'cash', '2023-11-19 10:29:31'),
(24, 34, 7, 202401028, 'Sangeeta Jain', 9989012345, 'card', '2023-11-27 10:29:31'),
(25, 35, 7, 202401029, 'Rohit Khanna', 9990123456, 'cash', '2023-12-04 10:37:43'),
(26, 34, 4, 202401030, 'Priyanka Reddy', 9001234567, 'card', '2023-12-14 10:37:43'),
(27, 36, 4, 202401031, 'Gaurav Bhatia', 9012345678, 'cash', '2023-12-26 10:56:05'),
(28, 38, 6, 202401032, 'Snehal Deshmukh', 9023456789, 'card', '2024-01-02 10:56:05'),
(29, 37, 3, 202401033, ' Hemant Yadav', 9034567890, 'cash', '2024-01-08 10:59:55'),
(30, 37, 4, 202401034, 'Komal Kulkarni', 9045678901, 'card', '2024-01-15 10:59:55'),
(31, 43, 4, 202401035, 'Prakash Choudhary', 9056789012, 'cash', '2024-01-28 11:03:57'),
(32, 46, 2, 202401036, 'Varsha Naik', 9067890123, 'card', '2024-02-06 11:03:57'),
(33, 45, 2, 202401037, 'Raghav Thakur', 9078901234, 'cash', '2024-02-14 11:08:15'),
(34, 44, 5, 202401038, 'Rekha Singh', 9089012345, 'card', '2024-02-18 11:08:15'),
(35, 47, 3, 202401039, 'Sanjay Khatri', 9090123456, 'cash', '2024-02-24 11:12:22'),
(36, 49, 2, 202401040, 'Tanya Verma', 9002234567, 'card', '2024-02-29 11:12:22'),
(37, 50, 4, 202401041, 'Kunal Mukherjee', 9012345678, 'cash', '2024-03-03 11:12:22'),
(38, 52, 6, 202401042, 'Lakshmi Menon', 9023456789, 'card', '2024-03-09 11:12:22'),
(39, 53, 1, 202401043, 'Sandeep Jadhav', 9034567890, 'cash', '2024-03-17 11:12:22'),
(40, 55, 2, 202401044, 'Smita Kulkarni', 9045678901, 'card', '2024-03-20 11:12:22'),
(41, 65, 6, 202401045, 'Abhay Sharma', 9056789012, 'cash', '2024-03-27 11:19:02'),
(42, 63, 3, 202401046, 'Pooja Nair', 9067890123, 'card', '2024-04-05 11:19:02'),
(43, 62, 4, 202401047, 'Dinesh Patel', 9078901234, 'cash', '2024-04-18 11:22:50'),
(44, 61, 2, 202401048, 'Maya Gupta', 9089012345, 'card', '2024-04-23 11:22:50'),
(45, 64, 4, 202401049, ' Rohan Joshi', 9090123456, 'cash', '2024-05-07 11:22:50'),
(46, 53, 2, 202401050, 'Sonia Kapoor', 9003234567, 'card', '2024-05-12 11:22:50'),
(47, 57, 3, 202401051, 'Ankit Jain', 9112345678, 'cash', '2024-05-27 11:22:50'),
(48, 58, 5, 202401052, 'Meena Rathi', 9123456789, 'card', '2024-06-01 11:22:50'),
(49, 59, 4, 202401053, 'Rajeev Pillai', 9134567890, 'cash', '2024-06-22 11:22:50'),
(50, 67, 2, 202401062, 'Geeta Reddy', 9123456789, 'card', '2024-06-26 11:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `CompanyName` varchar(150) DEFAULT NULL,
  `ProductName` varchar(150) DEFAULT NULL,
  `ProductPrice` decimal(10,0) DEFAULT current_timestamp(),
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`id`, `CategoryName`, `CompanyName`, `ProductName`, `ProductPrice`, `PostingDate`, `UpdationDate`) VALUES
(8, 'Milk Products', 'Amul', 'Fresh Cow Milk- 1litre', 50, '2024-06-26 07:15:31', '2024-06-26 07:15:31'),
(9, 'Milk Products', 'Mother Dairy', 'Buffalo Milk- 1litre', 55, '2024-06-26 07:15:50', '2024-06-26 07:15:50'),
(10, 'Milk Products', 'Nandini', 'Organic Cow Milk- 1litre', 60, '2024-06-26 07:16:08', '2024-06-26 07:16:08'),
(11, 'Milk Products', 'Aavin', 'A2 Milk- 1litre', 70, '2024-06-26 07:16:28', '2024-06-26 07:16:28'),
(12, 'Curd Products', 'Saras', 'Plain Curd- 500 grams', 40, '2024-06-26 07:16:58', '2024-06-26 07:16:58'),
(13, 'Curd Products', 'Verka', 'Greek Yogurt- 500 grams', 80, '2024-06-26 07:17:59', NULL),
(14, 'Curd Products', 'Sudha', 'Mishti Doi- 250 grams', 45, '2024-06-26 07:18:41', NULL),
(15, 'Curd Products', 'Milma', 'Probiotic Curd- 500 grams', 50, '2024-06-26 07:19:22', NULL),
(16, 'Cheese Products', 'Vijaya', 'Paneer- 1kg', 300, '2024-06-26 07:20:09', NULL),
(17, 'Cheese Products', 'Gokul', 'Mozzarella Cheese- 1kg', 400, '2024-06-26 07:20:57', NULL),
(18, 'Cheese Products', 'Amul', 'Cheddar Cheese- 1kg', 350, '2024-06-26 07:21:26', NULL),
(19, 'Butter Products', 'Nandini', 'White Butter- 1kg', 380, '2024-06-26 07:22:09', NULL),
(20, 'Butter Products', 'Aavin', 'Salted Butter- 1kg', 400, '2024-06-26 07:22:36', NULL),
(21, 'Butter Products', 'Saras', 'Garlic Butter- 1kg', 420, '2024-06-26 07:23:15', NULL),
(22, 'Butter Products', 'Verka', 'Herbal Butter- 1kg', 450, '2024-06-26 07:23:44', NULL),
(23, 'Ghee Products', 'Sudha', 'Cow Ghee- 1litre', 600, '2024-06-26 07:24:26', NULL),
(24, 'Ghee Products', 'Milma', 'Buffalo Ghee- 1litre', 650, '2024-06-26 07:25:01', NULL),
(25, 'Ghee Products', 'Vijaya', 'Organic Ghee- 1litre', 700, '2024-06-26 07:25:32', NULL),
(26, 'Ghee Products', 'Gokul', 'A2 Ghee- 1litre', 750, '2024-06-26 07:26:09', NULL),
(27, 'Buttermilk Products', 'Amul', 'Plain Buttermilk- 250ml', 15, '2024-06-26 07:26:58', NULL),
(28, 'Buttermilk Products', 'Mother Dairy', 'Masala Chaas- 250ml', 20, '2024-06-26 07:27:33', NULL),
(29, 'Buttermilk Products', 'Nandini', 'Jeera Chaas- 250ml', 25, '2024-06-26 07:28:07', NULL),
(30, 'Buttermilk Products', 'Aavin', 'Ginger Buttermilk- 250ml', 25, '2024-06-26 07:28:45', NULL),
(31, 'Lassi Products', 'Saras', 'Sweet Lassi- 300ml', 30, '2024-06-26 07:29:11', NULL),
(32, 'Lassi Products', 'Verka', 'Salted Lassi- 300ml', 30, '2024-06-26 07:29:47', NULL),
(33, 'Lassi Products', 'Sudha', 'Mango Lassi- 300ml', 35, '2024-06-26 07:30:16', NULL),
(34, 'Lassi Products', 'Milma', 'Kesar Lassi- 300ml', 35, '2024-06-26 07:31:19', NULL),
(35, 'Flavored Milk', 'Vijaya', 'Badam Milk- 200ml', 40, '2024-06-26 07:32:09', NULL),
(36, 'Flavored Milk', 'Gokul', 'Rose Milk- 200ml', 35, '2024-06-26 07:32:44', NULL),
(37, 'Flavored Milk', 'Amul', 'Chocolate Milk- 200ml', 35, '2024-06-26 07:33:16', NULL),
(38, 'Flavored Milk', 'Mother Dairy', 'Elaichi Milk- 20ml', 35, '2024-06-26 07:33:45', NULL),
(39, 'Khoa/Kova Products', 'Nandini', 'Plain Khoa- 1kg', 300, '2024-06-26 07:34:24', NULL),
(40, 'Khoa/Kova Products', 'Aavin', 'Palkova- 1kg', 350, '2024-06-26 07:34:56', NULL),
(41, 'Khoa/Kova Products', 'Saras', 'Thirattu Paal- 1kg', 320, '2024-06-26 07:35:28', NULL),
(42, 'Khoa/Kova Products', 'Verka', 'Kalakand- 1kg', 340, '2024-06-26 07:35:57', NULL),
(43, 'Ice Cream Products', 'Sudha', 'Vanilla Ice Cream- One Piece', 25, '2024-06-26 07:37:06', NULL),
(44, 'Ice Cream Products', 'Milma', 'Kulfi- One Piece', 30, '2024-06-26 07:37:38', NULL),
(45, 'Ice Cream Products', 'Vijaya', 'Choco Bar- One Piece', 35, '2024-06-26 07:38:12', NULL),
(46, 'Ice Cream Products', 'Gokul', 'Mango Ice Cream- One Piece', 30, '2024-06-26 07:38:37', NULL),
(47, 'Milk Products', 'Sanchi', 'Standard Milk- 1litre', 52, '2024-06-26 07:46:56', NULL),
(48, 'Curd Products', 'Himul', 'Sweetened Curd- 250grams', 45, '2024-06-26 07:52:06', NULL),
(49, 'Curd Products', 'Warana', 'Greek Yogurt- 500gram', 80, '2024-06-26 07:53:13', NULL),
(50, 'Cheese Products', 'Parag', 'Cottage Cheese (Paneer)- 1kg', 300, '2024-06-26 07:54:36', '2024-06-26 07:54:36'),
(51, 'Cheese Products', 'Gowardhan', 'Gouda Cheese- 1kg', 450, '2024-06-26 07:54:20', NULL),
(52, 'Cheese Products', 'Heritage', 'Mozzarella Cheese- 1kg', 400, '2024-06-26 07:55:36', NULL),
(53, 'Cheese Products', 'Sanchi', 'Processed Cheese- 500gram', 200, '2024-06-26 07:56:09', NULL),
(54, 'Ghee Products', 'Patanjali', 'Desi Cow Ghee- 1litre', 750, '2024-06-26 07:56:44', NULL),
(55, 'Ghee Products', 'Prabhat', 'A2 Ghee- 1litre', 700, '2024-06-26 07:57:13', NULL),
(56, 'Buttermilk Products', 'Namaste India', 'Plain Buttermilk- 250ml', 15, '2024-06-26 07:57:58', NULL),
(57, 'Buttermilk Products', 'Hatsun', 'Masala Buttermilk- 250ml', 20, '2024-06-26 07:58:39', NULL),
(58, 'Buttermilk Products', 'Thirumala Milk', 'Jeera Buttermilk- 250ml', 25, '2024-06-26 07:59:10', NULL),
(59, 'Buttermilk Products', 'Heritage', 'Ginger Buttermilk- 250ml', 25, '2024-06-26 07:59:46', NULL),
(60, 'Lassi Products', 'Milk Mantra', 'Salted Lassi- 300ml', 35, '2024-06-26 08:00:22', NULL),
(61, 'Lassi Products', 'Milk Mantra', 'Mango Lassi- 300ml', 35, '2024-06-26 08:00:54', NULL),
(62, 'Flavored Milk', 'Chitale', 'Badam Milk- 200ml', 40, '2024-06-26 08:01:30', NULL),
(63, 'Flavored Milk', 'Hatsun', 'Rose Milk- 200ml', 35, '2024-06-26 08:01:56', NULL),
(64, 'Flavored Milk', 'Kwality', 'Chocolate Milk- 200ml', 35, '2024-06-26 08:02:23', NULL),
(65, 'Flavored Milk', 'Warana', 'Elaichi Milk- 200ml', 35, '2024-06-26 08:02:54', NULL),
(66, 'Khoa/Kova Products', 'Parag', 'Plain Khoa- 1kg', 300, '2024-06-26 08:03:24', NULL),
(67, 'Milk Products', 'Patanjali', 'Full Cream Milk- 1litre', 60, '2024-06-26 08:04:24', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
