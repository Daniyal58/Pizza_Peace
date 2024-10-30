-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2023 at 12:59 AM
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
-- Database: `pizza peace`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CatID` int(11) NOT NULL,
  `CategoryName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CatID`, `CategoryName`) VALUES
(1, 'Pizza'),
(2, 'Calzone'),
(3, 'Beverage');

-- --------------------------------------------------------

--
-- Table structure for table `dealitemlist`
--

CREATE TABLE `dealitemlist` (
  `DealID` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dealitemlist`
--

INSERT INTO `dealitemlist` (`DealID`, `ItemID`, `Quantity`) VALUES
(1, 1, 3),
(1, 2, 8),
(1, 3, 2),
(2, 4, 5),
(2, 5, 10),
(2, 6, 4),
(3, 7, 2),
(3, 8, 4),
(4, 1, 1),
(4, 4, 1),
(4, 7, 1),
(5, 1, 1),
(9, 1, 2),
(9, 2, 1),
(9, 4, 1),
(9, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dealorderlist`
--

CREATE TABLE `dealorderlist` (
  `OrderID` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `DealID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE `deals` (
  `DealID` int(11) NOT NULL,
  `DealName` varchar(255) NOT NULL,
  `Price` int(11) NOT NULL,
  `URL` varchar(255) NOT NULL,
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deals`
--

INSERT INTO `deals` (`DealID`, `DealName`, `Price`, `URL`, `Active`) VALUES
(1, 'Deal 1', 20, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF5hOuYWgxgP3IP9CJNOEPpvhN3LmmpyX6Mw&usqp=CAU', 1),
(2, 'Deal 2', 30, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGZPCgwUQbacwnvLL9MRCnYM6lYva5V5GjFg&usqp=CAU', 1),
(3, 'Deal 3', 15, 'https://example.com/deal3', 0),
(9, 'Deal 10', 50, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYVFRgVFhUYGRgZGBgcGBwcGBgaGBwYGBgaGRwYGBgcIzAmHCErIRgYJjgmKy8xNTU1HCQ7QDszPy40NTEBDAwMEA8QGhISHzQhISs0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0MTQxNDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDE0NDQ0NDQ0NP/AABEIARMAtwMBIgACEQEDEQH/', 0);

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `DetailId` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `PhoneNumber` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`DetailId`, `UserId`, `Address`, `PhoneNumber`) VALUES
(1, 1, 'FB Area Karimabad, Karachi', '+92 300 1234567'),
(2, 2, '76 Block 8, Hyedrabad', '+92 321 9876543'),
(6, 2, '76 Gulshan Hadeed Karachi', '+92 314215958'),
(7, 2, 'New Karachi ', '+92 31421586'),
(8, 2, 'hello', '+92 314215958'),
(10, 2, 'Hii', '+92 31421586912'),
(11, 2, 'zinger', '+92 314215963'),
(13, 8, 'address', '012019201'),
(14, 11, 'Krachi', '0317102912');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `ItemID` int(11) NOT NULL,
  `CatID` int(11) DEFAULT NULL,
  `Name` varchar(255) NOT NULL,
  `Flavour` varchar(255) DEFAULT NULL,
  `StockCount` int(11) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Des` text DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`ItemID`, `CatID`, `Name`, `Flavour`, `StockCount`, `Price`, `Des`, `URL`, `active`) VALUES
(1, 1, 'Margherita Pizza', 'Classic', 50, 9.99, 'Delicious classic Margherita pizza', 'https://static.toiimg.com/thumb/53110049.cms?width=1200&height=900', 1),
(2, 1, 'Cheese Pizza', 'Spicy', 30, 11.99, 'Tasty pepperoni pizza with extra cheese', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtwc5ofUxzM2eLBt0WNos6kAJnkqo3RTJvlQ&usqp=CAU', 1),
(3, 2, 'Vegetarian Calzone', 'Mushroom and Cheese', 20, 8.99, 'Calzone filled with fresh vegetables and cheese', 'https://hips.hearstapps.com/hmg-prod/images/190130-calzone-horizontal-2-1549421238.png?crop=1xw:0.843328335832084xh;center,top', 1),
(4, 3, 'Cola', 'Regular', 100, 1.99, 'Classic cola drink', 'https://www.alfatah.pk/cdn/shop/products/42117131_20cb0b35-f10b-4e25-b3e7-9060f84267aa_1024x1024.jpg?v=1679570074', 1),
(5, 3, 'Orange Juice', 'Freshly Squeezed', 40, 3.49, 'Refreshing orange juice', 'https://images.unsplash.com/photo-1600271886742-f049cd451bba?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZnJ1aXQlMjBqdWljZXxlbnwwfHwwfHx8MA%3D%3D', 1),
(6, 1, 'Pepperoni Pizza', 'Pepperoni', 50, 12.99, 'Classic pepperoni pizza', 'https://www.allrecipes.com/thmb/iXKYAl17eIEnvhLtb4WxM7wKqTc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/240376-homemade-pepperoni-pizza-Beauty-3x4-1-6ae54059c23348b3b9a703b6a3067a44.jpg', 1),
(7, 1, 'Hawaian Pizza', 'Margherita', 40, 10.99, 'Traditional Margherita pizza', 'https://cdn.loveandlemons.com/wp-content/uploads/2023/07/margherita-pizza.jpg', 1),
(8, 1, 'Supreme Pizza', 'Supreme', 35, 14.99, 'Loaded with various toppings', 'https://hips.hearstapps.com/hmg-prod/images/homemade-pizza-index-1591135484.jpg?crop=1xw:0.7056962025316456xh;center,top&resize=1200:*', 1),
(9, 2, 'Parma Ham & Mozzarella Calzone', 'Parma Ham & Mozzarella', 30, 15.99, 'Delicious calzone with Parma ham and mozzarella', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/parma-ham-mozzarella-calzone-4ad2f4a.jpg?resize=768,574', 1),
(10, 2, 'Pepperoni Calzone', 'Pepperoni', 25, 13.99, 'Calzone filled with pepperoni and cheese', 'https://www.lanascooking.com/wp-content/uploads/2021/10/quick-and-easy-pepperoni-calzone-feature-1200x1200-1.jpg', 1),
(12, 3, 'Mango Smoothie', NULL, 40, 4.99, 'Healthy mango smoothie', 'https://cdn.loveandlemons.com/wp-content/uploads/2023/05/mango-smoothie.jpg', 1),
(13, 3, 'Strawberry Lemonade', NULL, 45, 3.99, 'Sweet strawberry lemonade', 'https://hips.hearstapps.com/hmg-prod/images/delish-how-to-make-a-smoothie-horizontal-1542310071.png?crop=0.8893333333333334xw:1xh;center,top&resize=1200:*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orderlist`
--

CREATE TABLE `orderlist` (
  `OrderID` int(11) DEFAULT NULL,
  `ItemID` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderlist`
--

INSERT INTO `orderlist` (`OrderID`, `ItemID`, `Quantity`) VALUES
(14, 8, 2),
(14, 7, 3),
(15, 2, 1),
(15, 1, 1),
(15, 6, 1),
(15, 8, 1),
(16, 2, 1),
(16, 1, 1),
(16, 6, 1),
(16, 8, 1),
(17, 2, 1),
(17, 1, 1),
(17, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `DetailID` int(11) DEFAULT NULL,
  `DateTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `TotalPrice` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `UserID`, `DetailID`, `DateTime`, `TotalPrice`) VALUES
(14, 2, 2, '2023-11-29 11:56:43', 62.95),
(15, 1, 1, '2023-12-01 21:26:53', 49.96),
(16, 1, 1, '2023-12-01 21:26:59', 49.96),
(17, 1, 1, '2023-12-02 09:32:04', 36.97);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Privileges` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Name`, `Username`, `Password`, `Privileges`) VALUES
(1, 'John Doe', 'john_doe', '123', 1),
(2, 'Jane Smith', 'jane_smith', '123', 0),
(8, 'Daniyal', 'khan', 'daniyal', 0),
(9, 'Dniyal Khan', 'daniyalgopang', '1100', 1),
(11, 'Junaid Sayani', 'junaidsayani', '12345', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CatID`);

--
-- Indexes for table `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`DealID`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`DetailId`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`ItemID`),
  ADD KEY `CatID` (`CatID`);

--
-- Indexes for table `orderlist`
--
ALTER TABLE `orderlist`
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `ItemID` (`ItemID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `DetailID` (`DetailID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `deals`
--
ALTER TABLE `deals`
  MODIFY `DealID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `DetailId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `ItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `details`
--
ALTER TABLE `details`
  ADD CONSTRAINT `details_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`CatID`) REFERENCES `categories` (`CatID`);

--
-- Constraints for table `orderlist`
--
ALTER TABLE `orderlist`
  ADD CONSTRAINT `orderlist_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  ADD CONSTRAINT `orderlist_ibfk_2` FOREIGN KEY (`ItemID`) REFERENCES `items` (`ItemID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`DetailID`) REFERENCES `details` (`DetailId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
