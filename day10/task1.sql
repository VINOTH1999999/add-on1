MariaDB [(none)]> create database task;
Query OK, 1 row affected (0.002 sec)

MariaDB [(none)]> use task;
Database changed

MariaDB [task]> select * from student; // table created 
+-----------+-------------+
| stud_name | course_name |
+-----------+-------------+
| abhinav   | BSC IT      |
| nikash    | bsc Cs      |
| suba      | BSC aids    |
| sanjay    | Bsc IT      |
| anujha    | Bsc IT      |
| prabhu    | Bsc Cs      |
| sona      | Bsc aids    |
| sanjay    | Bsc aids    |
+-----------+-------------+
8 rows in set (0.000 sec)

MariaDB [task]> select count(*) from student where course_name='IT';
+----------+
| count(*) |
+----------+
|        0 |
+----------+
1 row in set (0.000 sec)

MariaDB [task]> select count(*) from student where course_name='BSC IT';
+----------+
| count(*) |
+----------+
|        3 |
+----------+
1 row in set (0.000 sec)

MariaDB [task]> create table payment(
    -> dept_id int,
    -> dept_name varchar(30),
    -> salary int);
Query OK, 0 rows affected (0.050 sec)

MariaDB [task]> desc payment;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_id   | int(11)     | YES  |     | NULL    |       |
| dept_name | varchar(30) | YES  |     | NULL    |       |
| salary    | int(11)     | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.024 sec)

MariaDB [task]> insert into payment values(2025,'BSC IT',50000),(2026,'BSC Cs',40000),(2027,'Bsc aids',10000);
Query OK, 3 rows affected (0.006 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [task]> select * from payment;
+---------+-----------+--------+
| dept_id | dept_name | salary |
+---------+-----------+--------+
|    2025 | BSC IT    |  50000 |
|    2026 | BSC Cs    |  40000 |
|    2027 | Bsc aids  |  10000 |
+---------+-----------+--------+
3 rows in set (0.000 sec)
