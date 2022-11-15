
/*Table for admin*/
use ecomdb;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL primary key,
  `admin_name` varchar(20) NOT NULL,
  `password` varchar(25) NOT NULL
);
/*Table for favourite*/
use ecomdb;
CREATE TABLE `favourites` (
  `id` int(11) NOT NULL primary key,
  `user_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
);

/*Table for category*/
use ecomdb;
CREATE TABLE `Category` (
  `id` int(11) NOT NULL primary key,
  `cat_id` int(10) NOT NULL,
  `catname` varchar(255) NOT NULL
);

/*Table for product details*/
use ecomdb;
CREATE TABLE `product` (
  `prod_id` int(11) NOT NULL primary key,
  `cat_id` int(10) NOT NULL,
  `prodname` varchar(255) NOT NULL,
  `proddescription` varchar(255) NOT NULL,
  `prodprice` varchar(255) NOT NULL,
  `prodstock` int(10) NOT NULL
);

/*Table for order details*/
use ecomdb;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL primary key,
  `product_id` int(10) NOT NULL,
  `catid` int(10) NOT NULL,
  `userid` int not null,
  `quantity` int(10) NOT NULL,
  `prodprice` float NOT NULL
);
/*Table for User*/
use ecomdb;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `phone` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL
);

