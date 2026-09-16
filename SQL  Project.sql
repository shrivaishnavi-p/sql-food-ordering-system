create database OnlineFoodOrdering;
use OnlineFoodOrdering;

-- Customers Table--
create table Customers (
    customer_id int primary key,
    customer_name varchar(50),
    phone varchar(15),
    email varchar(100),
    address varchar(100));

-- Restaurants-- 
create table Restaurants (
    restaurant_id int primary key,
    restaurant_name varchar(100),
    location varchar(100),
    phone varchar(15));
    
-- Categories-- 
create table Categories (
    category_id int primary key,
    category_name varchar(50));
    
-- Food Items -- 
create table Food_Items (
    food_id int primary key,
    restaurant_id int,
    category_id int,
    food_name varchar(100),
    price decimal(8,2),
    foreign key (restaurant_id) references Restaurants(restaurant_id),
    foreign key (category_id) references Categories(category_id));
    
--  Orders -- 
create table Orders (
    order_id int primary key,
    customer_id int,
    order_date date,
    total_amount decimal(10,2),
    foreign key (customer_id) references Customers(customer_id));
    
-- Order Details-- 
create table Order_Details (
    order_detail_id int primary key,
    order_id int,
    food_id int,
    quantity int,
    foreign key (order_id) references Orders(order_id),
    foreign key (food_id) references Food_Items(food_id));
    
-- Payments-- 
create table Payments (
    payment_id int primary key,
    order_id int,
    payment_method varchar(30),
    payment_status varchar(20),
    foreign key (order_id) references Orders(order_id));
    
--  Delivery_Person-- 
create table Delivery_Person (
    delivery_person_id int primary key,
    delivery_person_name varchar(50),
    phone varchar(15));
    
-- Delivery-- 
create table Delivery (
    delivery_id int primary key,
    order_id int,
    delivery_person_id int,
    delivery_status varchar(30),
    delivery_address varchar(200),
    foreign key (order_id) references Orders(order_id),
    foreign key (delivery_person_id) references Delivery_Person(delivery_person_id));
    
-- Reviews-- 
create table Reviews (
    review_id int primary key,
    customer_id int,
    food_id int,
    rating int,
    review_text varchar(255),
    foreign key (customer_id) references Customers(customer_id),
    foreign key (food_id) references Food_Items(food_id));
    
    
    
insert into Customers values
(101,'Rahul','9876543210','rahul@gmail.com','Chennai'),
(102,'Priya','9876543211','priya@gmail.com','Madurai'),
(103,'Arun','9876543212','arun@gmail.com','Coimbatore'),
(104,'Divya','9876543213','divya@gmail.com','Trichy'),
(105,'Karthik','9876543214','karthik@gmail.com','Salem'),
(106,'Anitha','9876543215','anitha@gmail.com','Erode'),
(107,'Vijay','9876543216','vijay@gmail.com','Tirunelveli'),
(108,'Meena','9876543217','meena@gmail.com','Chennai'),
(109,'Surya','9876543218','surya@gmail.com','Madurai'),
(110,'Nisha','9876543219','nisha@gmail.com','Coimbatore');


insert into Restaurants values
(201,'A2B','Chennai','9000000001'),
(202,'KFC','Madurai','9000000002'),
(203,'Dominos','Coimbatore','9000000003'),
(204,'Burger King','Trichy','9000000004'),
(205,'Pizza Hut','Salem','9000000005'),
(206,'Subway','Erode','9000000006'),
(207,'SS Hyderabad Biryani','Chennai','9000000007'),
(208,'Anjappar','Madurai','9000000008'),
(209,'McDonald''s','Coimbatore','9000000009'),
(210,'Hot Chips','Tirunelveli','9000000010');


insert into Categories values
(301,'Veg'),
(302,'Non-Veg'),
(303,'Beverages'),
(304,'Desserts'),
(305,'Fast Food'),
(306,'Chinese'),
(307,'South Indian'),
(308,'North Indian'),
(309,'Snacks'),
(310,'Juices');


insert into Food_Items values
(401,201,307,'Idli',50),
(402,202,302,'Chicken Bucket',599),
(403,203,305,'Veg Pizza',299),
(404,204,305,'Whopper Burger',249),
(405,205,304,'Chocolate Lava Cake',129),
(406,206,309,'Veg Sandwich',149),
(407,207,302,'Chicken Biryani',250),
(408,208,308,'Butter Naan',60),
(409,209,305,'French Fries',120),
(410,210,310,'Mango Juice',80);


insert into Orders values
(501,101,'2026-07-15',50),
(502,102,'2026-07-16',599),
(503,103,'2026-07-17',299),
(504,104,'2026-07-18',249),
(505,105,'2026-07-19',129),
(506,106,'2026-07-20',149),
(507,107,'2026-07-21',250),
(508,108,'2026-07-22',60),
(509,109,'2026-07-23',120),
(510,110,'2026-07-24',80);


insert into Order_Details values
(601,501,401,1),
(602,502,402,1),
(603,503,403,1),
(604,504,404,1),
(605,505,405,1),
(606,506,406,1),
(607,507,407,1),
(608,508,408,1),
(609,509,409,1),
(610,510,410,1);


insert into Payments values
(701,501,'UPI','Paid'),
(702,502,'Card','Paid'),
(703,503,'Cash','Pending'),
(704,504,'UPI','Paid'),
(705,505,'Net Banking','Paid'),
(706,506,'Card','Paid'),
(707,507,'UPI','Paid'),
(708,508,'Cash','Pending'),
(709,509,'Card','Paid'),
(710,510,'UPI','Paid');


insert into Delivery_Person values
(801,'Ramesh','9001111111'),
(802,'Suresh','9001111112'),
(803,'Mahesh','9001111113'),
(804,'Ganesh','9001111114'),
(805,'Vignesh','9001111115'),
(806,'Kumar','9001111116'),
(807,'Ajith','9001111117'),
(808,'Prakash','9001111118'),
(809,'Mohan','9001111119'),
(810,'Sathish','9001111120');


insert into Delivery values
(901,501,801,'Delivered','Chennai'),
(902,502,802,'On the Way','Madurai'),
(903,503,803,'Preparing','Coimbatore'),
(904,504,804,'Delivered','Trichy'),
(905,505,805,'Cancelled','Salem'),
(906,506,806,'Delivered','Erode'),
(907,507,807,'On the Way','Chennai'),
(908,508,808,'Preparing','Madurai'),
(909,509,809,'Delivered','Coimbatore'),
(910,510,810,'Delivered','Tirunelveli');


insert into Reviews values
(1001,101,401,5,'Excellent'),
(1002,102,402,4,'Very Good'),
(1003,103,403,5,'Tasty'),
(1004,104,404,3,'Average'),
(1005,105,405,4,'Good');
    
    
    

