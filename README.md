# sql-food-ordering-system
# Online Food Ordering System – SQL Project

##  Project Overview

The **Online Food Ordering System** is a SQL database project designed to manage customers, restaurants, food items, orders, payments, deliveries, and reviews.

This project demonstrates how a relational database can be used to store, manage, and retrieve data efficiently using **MySQL**.

## Objectives

* Manage customer information.
* Store restaurant and food item details.
* Manage food categories.
* Track customer orders.
* Manage order details and quantities.
* Track payment information.
* Manage delivery persons and delivery status.
* Store customer reviews and ratings.
* Practice SQL queries and database concepts.

## Technologies Used

* **Database:** MySQL
* **Language:** SQL
* **Platform:** MySQL Workbench
* **Version Control:** Git & GitHub

## Database Tables

The project contains **10 tables**:

1. `Customers` – Stores customer details.
2. `Restaurants` – Stores restaurant information.
3. `Categories` – Stores food categories.
4. `Food_Items` – Stores food items and prices.
5. `Orders` – Stores customer order information.
6. `Order_Details` – Stores items included in each order.
7. `Payments` – Stores payment details.
8. `Delivery_Person` – Stores delivery partner details.
9. `Delivery` – Stores delivery information and status.
10. `Reviews` – Stores customer ratings and reviews.

## Database Relationships

* Customers → Orders
* Restaurants → Food_Items
* Categories → Food_Items
* Orders → Order_Details
* Food_Items → Order_Details
* Orders → Payments
* Orders → Delivery
* Delivery_Person → Delivery
* Customers → Reviews
* Food_Items → Reviews

## SQL Concepts Covered

### Basic SQL

* `CREATE DATABASE`
* `CREATE TABLE`
* `INSERT`
* `SELECT`
* `UPDATE`
* `DELETE`

### Data Definition

* `ALTER TABLE`
* Add column
* Modify column
* Rename column
* Drop column

### Filtering & Sorting

* `WHERE`
* `AND`
* `OR`
* `LIKE`
* `BETWEEN`
* `IN`
* `NOT IN`
* `ORDER BY`
* `LIMIT`

### Aggregate Functions

* `COUNT()`
* `SUM()`
* `AVG()`
* `MIN()`
* `MAX()`

### Grouping

* `GROUP BY`
* `HAVING`

### Joins

* `INNER JOIN`
* `LEFT JOIN`
* `RIGHT JOIN`
* Multiple-table joins

### String Functions

* `UPPER()`
* `LOWER()`
* `LENGTH()`
* `CONCAT()`
* `SUBSTRING()`
* `REPLACE()`
* `TRIM()`

### Mathematical Functions

* `ROUND()`
* `CEIL()`
* `FLOOR()`
* `MOD()`
* `POWER()`
* `SQRT()`

### Advanced SQL

* Subqueries
* Views
* Window Functions
* Triggers
* Cardinality
* Primary Keys
* Foreign Keys

## How to Run the Project

### Step 1: Clone the repository

```bash
git clone YOUR_GITHUB_REPOSITORY_URL
```

### Step 2: Open MySQL Workbench

Open the SQL files from this repository in **MySQL Workbench**.

### Step 3: Create the database

```sql
CREATE DATABASE OnlineFoodOrdering;
USE OnlineFoodOrdering;
```

### Step 4: Create the tables

Run the table creation queries in the correct order.

### Step 5: Insert the data

Run the `INSERT` queries to populate the tables.

### Step 6: Execute SQL queries

Run the project queries to perform data retrieval, analysis, joins, aggregation, and other SQL operations.

## Project Structure

```text
Online-Food-Ordering-System/
│
├── README.md
├── database.sql
├── table_creation.sql
├── insert_data.sql
└── queries.sql
```

## Project Highlights

* 10 relational tables
* Sample data for database testing
* 100+ SQL queries
* CRUD operations
* Joins and aggregate functions
* String and mathematical functions
* Window functions
* Views
* Triggers
* Primary Key and Foreign Key relationships

## Conclusion

The **Online Food Ordering System** provides practical experience in designing and working with a relational database using MySQL. The project demonstrates fundamental as well as advanced SQL concepts required for database management and SQL development.
