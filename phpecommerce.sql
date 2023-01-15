-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2023 at 12:42 PM
-- Server version: 8.0.31
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CATEGORY_ID` int NOT NULL,
  `CNAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CATEGORY_ID`, `CNAME`) VALUES
(101, 'Books'),
(102, 'Appliances'),
(103, 'Mobiles'),
(104, 'Fashion'),
(105, 'Healthcare');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUST_ID` int NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUST_ID`, `FIRST_NAME`, `LAST_NAME`, `PHONE_NUMBER`) VALUES
(1, 'John', 'F', '1111111111');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMPLOYEE_ID` int NOT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `GENDER` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `GENDER`, `EMAIL`, `PHONE_NUMBER`) VALUES
(1, 'Ashish', 'Kumar', 'Male', 'ashish@gmail.com', '1010101010'),
(2, 'PNV', 'Shravan', 'Male', 'pnvs@gmail.com', '1234567890'),
(3, 'Arcana', 'Jane', 'Female', 'arcana20@gmail.com', '9495347812');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PRODUCT_ID` int NOT NULL,
  `PRODUCT_CODE` varchar(20) DEFAULT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `PRICE` int DEFAULT NULL,
  `CATEGORY_ID` int DEFAULT NULL,
  `SUPPLIER_ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRODUCT_ID`, `PRODUCT_CODE`, `NAME`, `DESCRIPTION`, `PRICE`, `CATEGORY_ID`, `SUPPLIER_ID`) VALUES
(121, 'BOOK121', 'The Subtle Art of Not Giving a F**k', '', 243, 101, 11),
(122, 'BOOK122', 'The Pyschology of Money', 'Self-help', 225, 101, 11),
(124, 'APPLIA124', 'Bajaj ATX 4 750-watt', 'Toaster', 1595, 102, 12),
(125, 'SPHONE125', 'Redmi Note 7 Pro', 'Smart Phone', 13999, 103, 13),
(126, 'SPHONE126', 'Oneplus Nord', 'Smart Phone', 20999, 103, 13),
(127, 'CLOTH127', 'Van Heusen Men\'s Polo Shirt', 'Polo Shirt', 499, 104, 14),
(128, 'CLOTH128', 'U.S POLO ASSN. Men Casual Pants', 'Casual Shirt', 599, 104, 14),
(129, 'MEDI129', 'Volini Gel 75g', 'Relief Gel', 209, 105, 15),
(130, 'MEDI130', 'Dolo 650', 'Tablets', 29, 105, 15);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SUPPLIER_ID` int NOT NULL,
  `COMPANY_NAME` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SUPPLIER_ID`, `COMPANY_NAME`, `PHONE_NUMBER`) VALUES
(11, 'Maharaja Enterprises', '7123456789'),
(12, 'Rajesh Electronics', '7234567891'),
(13, 'Bajaj Electronics', '7345678910'),
(14, 'Vamsi Clothing', '7456789123'),
(15, 'Supriya Medicals', '7567890123');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TRANS_ID` int NOT NULL,
  `CUST_ID` int DEFAULT NULL,
  `NUMOFITEMS` varchar(250) DEFAULT NULL,
  `SUBTOTAL` varchar(50) DEFAULT NULL,
  `CASH` varchar(250) DEFAULT NULL,
  `DATE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`TRANS_ID`, `CUST_ID`, `NUMOFITEMS`, `SUBTOTAL`, `CASH`, `DATE`) VALUES
(2, 1, '2', '', '14242.00', '011563911');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `ID` int NOT NULL,
  `DATE` varchar(250) DEFAULT NULL,
  `PRODUCTS` varchar(250) DEFAULT NULL,
  `QTY` varchar(250) DEFAULT NULL,
  `PRICE` varchar(250) DEFAULT NULL,
  `EMPLOYEE` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`ID`, `DATE`, `PRODUCTS`, `QTY`, `PRICE`, `EMPLOYEE`) VALUES
(1, '011563911', 'The Subtle Art of Not Giving a F**k', '1', '243', 'Ashish'),
(2, '011563911', 'Redmi Note 7 Pro', '1', '13999', 'Ashish');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `TYPE_ID` int NOT NULL,
  `TYPE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`TYPE_ID`, `TYPE`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int NOT NULL,
  `EMPLOYEE_ID` int DEFAULT NULL,
  `USERNAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `TYPE_ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `EMPLOYEE_ID`, `USERNAME`, `PASSWORD`, `TYPE_ID`) VALUES
(1, 1, 'Ashish', 'ashish123', 1),
(2, 2, 'pnv', '123456', 1),
(3, 3, 'arcana20', 'arcana20', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CATEGORY_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUST_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMPLOYEE_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PRODUCT_ID`),
  ADD KEY `product_fk_1` (`CATEGORY_ID`),
  ADD KEY `product_fk_2` (`SUPPLIER_ID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SUPPLIER_ID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TRANS_ID`),
  ADD KEY `transaction_fk_3` (`CUST_ID`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`TYPE_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `users_fk_3` (`TYPE_ID`),
  ADD KEY `users_fk_4` (`EMPLOYEE_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CATEGORY_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUST_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EMPLOYEE_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `PRODUCT_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SUPPLIER_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `TRANS_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_fk_1` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`CATEGORY_ID`),
  ADD CONSTRAINT `product_fk_2` FOREIGN KEY (`SUPPLIER_ID`) REFERENCES `supplier` (`SUPPLIER_ID`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_fk_3` FOREIGN KEY (`CUST_ID`) REFERENCES `customer` (`CUST_ID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_fk_3` FOREIGN KEY (`TYPE_ID`) REFERENCES `type` (`TYPE_ID`),
  ADD CONSTRAINT `users_fk_4` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employee` (`EMPLOYEE_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
