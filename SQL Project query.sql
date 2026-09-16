-- 1. Display all customers
select * from Customers;

-- 2. Display all restaurants
select * from Restaurants;

-- 3. Display all categories
select * from Categories;

-- 4. Display all food items
select * from Food_Items;

-- 5. Display all orders
select * from Orders;

-- 6. Display all order details
select * from Order_Details;

-- 7. Display all payments
select * from Payments;

-- 8. Display all delivery persons
select * from Delivery_Person;

-- 9. Display all deliveries
select * from Delivery;

-- 10. Display all reviews
select * from Reviews;

-- 11. Display customer names only
select customer_name from Customers;

-- 12. Display restaurant names only
select restaurant_name from Restaurants;

-- 13. Display food name and price
select food_name, price from Food_Items;

-- 14. Display order ID and total amount
select order_id, total_amount from Orders;

-- 15. Display payment method and payment status
select payment_method, payment_status from Payments;

-- 16. Display delivery person name and phone number
select delivery_person_name, phone from Delivery_Person;

-- 17. Display customer name and city
select customer_name, address from Customers;

-- 18. Display food names with category IDs
select food_name, category_id from Food_Items;

-- 19. Display restaurant name and location
select restaurant_name, location from Restaurants;

-- 20. Display delivery status and delivery address
select delivery_status, delivery_address from Delivery;

-- 21. Display customers from Chennai
select * from Customers
where address = 'Chennai';

-- 22. Display restaurants located in Madurai
select * from Restaurants
where location = 'Madurai';

-- 23. Display food items with price greater than 200
select * from Food_Items
where price > 200;

-- 24. Display food items with price less than 150
select * from Food_Items
where price < 150;

-- 25. Display orders with total amount greater than 250
select * from Orders
where total_amount > 250;

-- 26. Display customers whose name starts with 'A'
select * from Customers
where customer_name like 'A%';

-- 27. Display customers whose name ends with 'a'
select * from Customers
where customer_name like '%a';

-- 28. Display restaurants whose name contains 'King'
select * from Restaurants
where restaurant_name like '%King%';

-- 29. Display food items with price between 100 and 300
select * from Food_Items
where price between 100 and 300;

-- 30. Display orders placed between '2026-07-16' and '2026-07-22'
select * from Orders
where order_date between '2026-07-16' and '2026-07-22';

-- 31. Display customers from Chennai or Madurai
select * from Customers
where address in ('Chennai', 'Madurai');

-- 32. Display restaurants not in Chennai
select * from Restaurants
where location not in ('Chennai');

-- 33. Display paid payments
select * from Payments
where payment_status = 'Paid';

-- 34. Display pending payments
select * from Payments
where payment_status = 'Pending';

-- 35. Display deliveries with status 'Delivered'
select * from Delivery
where delivery_status = 'Delivered';

-- 36. Display food items in category 305
select * from Food_Items
where category_id = 305;

-- 37. Display orders with total amount greater than 100 and less than 500
select * from Orders
where total_amount > 100 and total_amount < 500;

-- 38. Display customers from Coimbatore or Salem
select * from Customers
where address = 'Coimbatore' or address = 'Salem';

-- 39. Display food items sorted by price (ascending)
select * from Food_Items
order by price asc;

-- 40. Display restaurants sorted by restaurant name (descending)
select * from Restaurants
order by restaurant_name desc;

-- 41. Display top 5 food items
select * from Food_Items limit 5;

-- 42. Display first 3 customers
select * from Customers limit 3;

-- 43. Display 5 customers after skipping first 2
select * from Customers limit 2,5;

-- 44. Count total customers
select COUNT(*) as total_customers from Customers;

-- 45. Count total restaurants
select COUNT(*) as total_restaurants from Restaurants;

-- 46. Count total food items
select COUNT(*) as total_food_items from Food_Items;

-- 47. Find maximum food price
select MAX(price) as highest_price from Food_Items;

-- 48. Find minimum food price
select MIN(price) as lowest_price from Food_Items;

-- 49. Find average food price
select avg(price) as average_price from Food_Items;

-- 50. Find total value of all food prices
select SUM(price) as total_price from Food_Items;

-- 51. Count food items in each category
select category_id, COUNT(*) as total_foods
from Food_Items
group by category_id;

-- 52. Count restaurants in each location
select location, COUNT(*) as total_restaurants
from Restaurants
group by location;

-- 53. Count customers in each city
select address, COUNT(*) as total_customers
from Customers
group by address;

-- 54. Find average order amount
select avg(total_amount) as average_order
from Orders;

-- 55. Find maximum order amount
select MAX(total_amount) as highest_order
from Orders;

-- 56. Find minimum order amount
select MIN(total_amount) as lowest_order
from Orders;

-- 57. Find total sales
select SUM(total_amount) as total_sales
from Orders;

-- 58. Count orders placed by each customer
select customer_id, COUNT(*) as total_orders
from Orders
group by customer_id;

-- 59. Display categories having more than 1 food item
select category_id, COUNT(*) as total_foods
from Food_Items
group by category_id
having COUNT(*) > 1;

-- 60. Display cities having more than 1 customer
select address, COUNT(*) as total_customers
from Customers
group by address
having COUNT(*) > 1;

-- 61. Display payment methods and number of payments
select payment_method, COUNT(*) as total
from Payments
group by payment_method;

-- 62. Display payment methods with more than 2 payments
select payment_method, COUNT(*) as total
from Payments
group by payment_method
having COUNT(*) > 2;

-- 63. Display delivery status and count
select delivery_status, COUNT(*) as total
from Delivery
group by delivery_status;

-- 64. Display food categories with average price
select category_id, avg(price) as average_price
from Food_Items
group by category_id;

-- 65. Display customers ordered by name
select * from Customers
order by customer_name asc;

-- 66. Display restaurants ordered by location
select * from Restaurants
order by location asc;

-- 67. Display food items ordered by price descending
select * from Food_Items
order by price desc;

-- 68. Display latest 5 orders
select * from Orders
order by order_date desc
limit 5;

-- 69. Display highest 3 order amounts
select * from Orders
order by total_amount desc
limit 3;

-- 70. Display lowest 3 food prices
select * from Food_Items
order by price asc
limit 3;

-- 71. Display customer name with order details
select c.customer_name, o.order_id, o.total_amount
from Customers c
join Orders o
on c.customer_id = o.customer_id;

-- 72. Display food name with category name
select f.food_name, c.category_name
from Food_Items f
join Categories c
on f.category_id = c.category_id;

-- 73. Display restaurant name with food items
select r.restaurant_name, f.food_name, f.price
from Restaurants r
join Food_Items f
on r.restaurant_id = f.restaurant_id;

-- 74. Display customer name with payment status
select c.customer_name, p.payment_status
from Customers c
join Orders o on c.customer_id = o.customer_id
join Payments p on o.order_id = p.order_id;

-- 75. Display customer name with delivery status
select c.customer_name, d.delivery_status
from Customers c
join Orders o on c.customer_id = o.customer_id
join Delivery d on o.order_id = d.order_id;

-- 76. Display order ID with delivery person name
select d.order_id, dp.delivery_person_name
from Delivery d
join Delivery_Person dp
on d.delivery_person_id = dp.delivery_person_id;

-- 77. Display food items ordered by each customer
select c.customer_name, f.food_name
from Customers c
join Orders o on c.customer_id = o.customer_id
join Order_Details od on o.order_id = od.order_id
join Food_Items f on od.food_id = f.food_id;

-- 78. Display restaurant name and total food items
select r.restaurant_name, COUNT(f.food_id) as total_foods
from Restaurants r
join Food_Items f
on r.restaurant_id = f.restaurant_id
group by r.restaurant_name;

-- 79. Display customer names who made paid orders
select c.customer_name
from Customers c
join Orders o on c.customer_id = o.customer_id
join Payments p on o.order_id = p.order_id
where p.payment_status = 'Paid';

-- 80. Display delivered orders with customer names
select c.customer_name, d.delivery_status
from Customers c
join Orders o on c.customer_id = o.customer_id
join Delivery d on o.order_id = d.order_id
where d.delivery_status = 'Delivered';

-- 81. Find the highest priced food item
select * from Food_Items
where price = (select MAX(price) from Food_Items);

-- 82. Find the lowest priced food item
select * from Food_Items
where price = (select MIN(price) from Food_Items);

-- 83. Display customers who spent more than 200
select c.customer_name, o.total_amount
from Customers c
join Orders o on c.customer_id = o.customer_id
where o.total_amount > 200;

-- 84. Display restaurants serving food above Rs.300
select distinct r.restaurant_name
from Restaurants r
join Food_Items f
on r.restaurant_id = f.restaurant_id
where f.price > 300;

-- 85. Display orders with payment method
select o.order_id, p.payment_method
from Orders o
join Payments p
on o.order_id = p.order_id;

-- 86. Display food items with restaurant location
select f.food_name, r.location
from Food_Items f
join Restaurants r
on f.restaurant_id = r.restaurant_id;

-- 87. Find total sales by each restaurant
select r.restaurant_name, SUM(o.total_amount) as total_sales
from Restaurants r
join Food_Items f on r.restaurant_id = f.restaurant_id
join Order_Details od on f.food_id = od.food_id
join Orders o on od.order_id = o.order_id
group by r.restaurant_name;

-- 88. Display customers who ordered Veg food
select distinct c.customer_name
from Customers c
join Orders o on c.customer_id = o.customer_id
JOIN Order_Details od on o.order_id = od.order_id
join Food_Items f on od.food_id = f.food_id
where f.category_id = 301;

-- 89. Display customer name, food name, and quantity
select c.customer_name, f.food_name, od.quantity
from Customers c
join Orders o on c.customer_id = o.customer_id
join Order_Details od on o.order_id = od.order_id
join Food_Items f on od.food_id = f.food_id;

-- 90. Display payment details with customer names
select c.customer_name, p.payment_method, p.payment_status
from Customers c
join Orders o on c.customer_id = o.customer_id
join Payments p on o.order_id = p.order_id;

-- 91. Find average order amount
select avg(total_amount) as average_order
from Orders;

-- 92. Find customers who placed more than one order
select customer_id, COUNT(order_id) as total_orders
from Orders
group by customer_id
having COUNT(order_id) > 1;

-- 93. Find the total quantity ordered
select SUM(quantity) as total_quantity
from Order_Details;

-- 94. Display all pending payments
select * from Payments
where payment_status = 'Pending';

-- 95. Display all delivered orders
select * from Delivery
where delivery_status = 'Delivered';

-- 96. Find customers from Chennai
select * from Customers
where address = 'Chennai';

-- 97. Display all restaurants in Chennai
select* from Restaurants
where location = 'Chennai';

-- 98. Display the most expensive food item
select food_name, price
from Food_Items
order by price desc
limit 1;

-- 99. Display the cheapest food item
select food_name, price
from Food_Items
order by price asc
limit 1;


-- 100. Display total number of orders
select COUNT(*) as total_orders
from Orders;