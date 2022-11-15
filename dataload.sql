use ecomdb;
LOAD DATA INFILE 
 'C:\Users\13124\OneDrive\Desktop\Admin_details.csv' 
into table ecomdb.admin 
fields terminated by ',';

use ecomdb;
LOAD DATA INFILE 
 'C:\Users\13124\OneDrive\Desktop\Toy_category.csv' 
into table ecomdb.category 
fields terminated by ',';

use ecomdb;
LOAD DATA INFILE 
 'C:\Users\13124\OneDrive\Desktop\order_details.csv' 
into table ecomdb.order 
fields terminated by ',';

use ecomdb;
LOAD DATA INFILE 
 'C:\Users\13124\OneDrive\Desktop\product_info.csv' 
into table ecomdb.product 
fields terminated by ',';

use ecomdb;
LOAD DATA INFILE 
 'C:\Users\13124\OneDrive\Desktop\user account_info.csv' 
into table ecomdb.user 
fields terminated by ',';


