
--
-- Database: `toy_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL primary key,
  `admin_name` varchar(20) NOT NULL,
  `password` varchar(25) NOT NULL
);

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `prod_price` int(11) NOT NULL,
  `order_status` enum('Booked','Cancelled','Rejected','Fulfilled') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `user_id`, `product_id`, `product_qty`, `prod_price`, `order_status`) VALUES
(1, 2, 1, 2, 22, 'Booked'),
(2, 3, 1, 1, 10, 'Booked'),
(3, 2, 2, 3, 95, 'Booked'),
(4, 2, 1, 2, 50, 'Booked'),
(5, 2, 1, 2, 50, 'Booked'),
(6, 2, 1, 2, 50, 'Booked'),
(7, 2, 1, 2, 50, 'Booked'),
(8, 2, 1, 2, 50, 'Booked');

-- --------------------------------------------------------

--
-- Table structure for table `product_info`
--

CREATE TABLE `product_info` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_price` float NOT NULL,
  `product_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_info`
--

INSERT INTO `product_info` (`product_id`, `category_id`, `product_name`, `product_description`, `product_price`, `product_stock`) VALUES
(1, 5, 'Batman', 'Batman', 15, 500),
(2, 4, 'Innovative', 'Flights sets', 25, 500),
(3, 1, 'He man', 'Versions', 15, 400);

-- --------------------------------------------------------

--
-- Table structure for table `toy_category`
--

CREATE TABLE `toy_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `toy_category`
--

INSERT INTO `toy_category` (`category_id`, `category_name`, `category_description`) VALUES
(1, 'Animations', 'Toys such as Rockets, planes, jets etc'),
(2, 'graphical', 'Different sets of graphical toys'),
(3, 'Soft toys', 'Soft toys for kids'),
(4, 'Electronic', 'Works with battery power and delivers moment and music, etc'),
(5, 'Super Heroes', 'Belongs to Fantasy world');

-- --------------------------------------------------------

--
-- Table structure for table `user_account_info`
--

CREATE TABLE `user_account_info` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_phone` varchar(25) NOT NULL,
  `user_location` varchar(500) NOT NULL DEFAULT 'My Terminus',
  `user_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_account_info`
--

INSERT INTO `user_account_info` (`user_id`, `user_name`, `user_phone`, `user_location`, `user_email`) VALUES
(2, 'James Cameron', '778954321', 'New york', 'James@gmail.com\r\n'),
(3, 'Smith', '770891234', 'chicago', 'smith@gmail.com'),
(4, 'sam', '776534321', 'Illinois', 'Sam@gmail.com'),
(5, 'Mady', '770890004', 'New Jersey', 'mady@outlook.com'),
(7, 'Abay', '770001234', 'My Terminus', 'abay@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `toy_category`
--
ALTER TABLE `toy_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `user_account_info`
--
ALTER TABLE `user_account_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_info`
--
ALTER TABLE `product_info`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `toy_category`
--
ALTER TABLE `toy_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_account_info`
--
ALTER TABLE `user_account_info`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

