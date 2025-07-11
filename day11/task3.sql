mysql> CREATE TABLE Customers (
    ->     customer_id INT PRIMARY KEY,
    ->     customer_name VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.72 sec)

mysql> CREATE TABLE Orders (
    ->     order_id INT PRIMARY KEY,
    ->     customer_id INT,
    ->     order_amount DECIMAL(10,2),
    ->     order_date DATE,
    ->     FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
    -> );CREATE TABLE Orders (
Query OK, 0 rows affected (0.44 sec)

mysql> INSERT INTO Customers VALUES
    -> (1, 'John'),
    -> (2, 'Meera'),
    -> (3, 'Ravi');
Query OK, 3 rows affected (0.19 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql>
mysql> INSERT INTO Orders VALUES
    -> (101, 1, 250.00, '2025-06-01'),
    -> (102, 2, 450.50, '2025-06-02'),
    -> (103, 1, 120.00, '2025-06-03');
Query OK, 3 rows affected (0.08 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT Orders.order_id, Customers.customer_name, Orders.order_amount, Orders.order_date
    -> FROM Orders
    -> JOIN Customers ON Orders.customer_id = Customers.customer_id;
+----------+---------------+--------------+------------+
| order_id | customer_name | order_amount | order_date |
+----------+---------------+--------------+------------+
|      101 | John          |       250.00 | 2025-06-01 |
|      102 | Meera         |       450.50 | 2025-06-02 |
|      103 | John          |       120.00 | 2025-06-03 |
+----------+---------------+--------------+------------+
3 rows in set (0.00 sec)