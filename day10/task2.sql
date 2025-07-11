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

MariaDB [task]> alter table student add column dept_id int;
Query OK, 0 rows affected (0.036 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [task]> select * from payment;
+---------+-----------+--------+
| dept_id | dept_name | salary |
+---------+-----------+--------+
|    2025 | BSC IT    |  50000 |
|    2026 | BSC Cs    |  40000 |
|    2027 | Bsc aids  |  10000 |
+---------+-----------+--------+
3 rows in set (0.000 sec)

MariaDB [task]> select * from student;
+-----------+-------------+---------+
| stud_name | course_name | dept_id |
+-----------+-------------+---------+
| abhinav   | BSC IT      |    NULL |
| nikash    | bsc Cs      |    NULL |
| suba      | BSC aids    |    NULL |
| sanjay    | Bsc IT      |    NULL |
| anujha    | Bsc IT      |    NULL |
| prabhu    | Bsc Cs      |    NULL |
| sona      | Bsc aids    |    NULL |
| sanjay    | Bsc aids    |    NULL |
+-----------+-------------+---------+
8 rows in set (0.000 sec)

MariaDB [task]> update student set dept_id=2025 where course_name='BSC IT';
Query OK, 3 rows affected (0.040 sec)
Rows matched: 3  Changed: 3  Warnings: 0

MariaDB [task]> select * from student;
+-----------+-------------+---------+
| stud_name | course_name | dept_id |
+-----------+-------------+---------+
| abhinav   | BSC IT      |    2025 |
| nikash    | bsc Cs      |    NULL |
| suba      | BSC aids    |    NULL |
| sanjay    | Bsc IT      |    2025 |
| anujha    | Bsc IT      |    2025 |
| prabhu    | Bsc Cs      |    NULL |
| sona      | Bsc aids    |    NULL |
| sanjay    | Bsc aids    |    NULL |
+-----------+-------------+---------+
8 rows in set (0.000 sec)

MariaDB [task]> update student set dept_id=2026 where course_name='BSC Cs';
Query OK, 2 rows affected (0.042 sec)
Rows matched: 2  Changed: 2  Warnings: 0

MariaDB [task]> select * from student;
+-----------+-------------+---------+
| stud_name | course_name | dept_id |
+-----------+-------------+---------+
| abhinav   | BSC IT      |    2025 |
| nikash    | bsc Cs      |    2026 |
| suba      | BSC aids    |    NULL |
| sanjay    | Bsc IT      |    2025 |
| anujha    | Bsc IT      |    2025 |
| prabhu    | Bsc Cs      |    2026 |
| sona      | Bsc aids    |    NULL |
| sanjay    | Bsc aids    |    NULL |
+-----------+-------------+---------+
8 rows in set (0.000 sec)

MariaDB [task]> update student set dept_id=2027 where course_name='BSC aids';
Query OK, 3 rows affected (0.033 sec)
Rows matched: 3  Changed: 3  Warnings: 0

MariaDB [task]> select * from student;
+-----------+-------------+---------+
| stud_name | course_name | dept_id |
+-----------+-------------+---------+
| abhinav   | BSC IT      |    2025 |
| nikash    | bsc Cs      |    2026 |
| suba      | BSC aids    |    2027 |
| sanjay    | Bsc IT      |    2025 |
| anujha    | Bsc IT      |    2025 |
| prabhu    | Bsc Cs      |    2026 |
| sona      | Bsc aids    |    2027 |
| sanjay    | Bsc aids    |    2027 |
+-----------+-------------+---------+
8 rows in set (0.000 sec)

MariaDB [task]> alter table student add column reg_no int first;
Query OK, 0 rows affected (0.018 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [task]> select * from student;
+--------+-----------+-------------+---------+
| reg_no | stud_name | course_name | dept_id |
+--------+-----------+-------------+---------+
|   NULL | abhinav   | BSC IT      |    2025 |
|   NULL | nikash    | bsc Cs      |    2026 |
|   NULL | suba      | BSC aids    |    2027 |
|   NULL | sanjay    | Bsc IT      |    2025 |
|   NULL | anujha    | Bsc IT      |    2025 |
|   NULL | prabhu    | Bsc Cs      |    2026 |
|   NULL | sona      | Bsc aids    |    2027 |
|   NULL | sanjay    | Bsc aids    |    2027 |
+--------+-----------+-------------+---------+
8 rows in set (0.000 sec)

MariaDB [task]> update student set reg_no=1 where stud_name='abhinav';
Query OK, 1 row affected (0.035 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [task]> update student set reg_no=2 where stud_name='nikash';
Query OK, 1 row affected (0.005 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [task]> update student set reg_no=3 where stud_name='suba';
Query OK, 1 row affected (0.030 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [task]> update student set reg_no=4 where stud_name='sanjay' and course_name='Bsc IT';
Query OK, 1 row affected (0.004 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [task]> update student set reg_no=5 where stud_name='anujha';
Query OK, 1 row affected (0.049 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [task]> update student set reg_no=6 where stud_name='prabhu';
Query OK, 1 row affected (0.004 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [task]> update student set reg_no=7 where stud_name='sona';
Query OK, 1 row affected (0.043 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [task]> update student set reg_no=7 where stud_name='sanjay' and course_name='Bsc aids';
Query OK, 1 row affected (0.035 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [task]> select * from student;
+--------+-----------+-------------+---------+
| reg_no | stud_name | course_name | dept_id |
+--------+-----------+-------------+---------+
|      1 | abhinav   | BSC IT      |    2025 |
|      2 | nikash    | bsc Cs      |    2026 |
|      3 | suba      | BSC aids    |    2027 |
|      4 | sanjay    | Bsc IT      |    2025 |
|      5 | anujha    | Bsc IT      |    2025 |
|      6 | prabhu    | Bsc Cs      |    2026 |
|      7 | sona      | Bsc aids    |    2027 |
|      7 | sanjay    | Bsc aids    |    2027 |
+--------+-----------+-------------+---------+
8 rows in set (0.000 sec)

MariaDB [task]> update student set reg_no=8 where stud_name='sanjay' and course_name='Bsc aids';
Query OK, 1 row affected (0.045 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [task]> select * from student;
+--------+-----------+-------------+---------+
| reg_no | stud_name | course_name | dept_id |
+--------+-----------+-------------+---------+
|      1 | abhinav   | BSC IT      |    2025 |
|      2 | nikash    | bsc Cs      |    2026 |
|      3 | suba      | BSC aids    |    2027 |
|      4 | sanjay    | Bsc IT      |    2025 |
|      5 | anujha    | Bsc IT      |    2025 |
|      6 | prabhu    | Bsc Cs      |    2026 |
|      7 | sona      | Bsc aids    |    2027 |
|      8 | sanjay    | Bsc aids    |    2027 |
+--------+-----------+-------------+---------+
8 rows in set (0.000 sec)


MariaDB [task]> alter table student add column salary int first;
Query OK, 0 rows affected (0.056 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [task]> update student set salary=40000 where reg_no=1;
Query OK, 1 row affected (0.006 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [task]> update student set salary=42200 where reg_no=2;
Query OK, 1 row affected (0.028 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [task]> update student set salary=27770 where reg_no=3;
Query OK, 1 row affected (0.047 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [task]> update student set salary=26660 where reg_no=4;
Query OK, 1 row affected (0.028 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [task]> update student set salary=63630 where reg_no=5;
Query OK, 1 row affected (0.050 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [task]> update student set salary=70030 where reg_no=6;
Query OK, 1 row affected (0.023 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [task]> update student set salary=72030 where reg_no=7;
Query OK, 1 row affected (0.011 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [task]> update student set salary=72220 where reg_no=8;
Query OK, 1 row affected (0.036 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [task]> select avg(salary) from student where course_name='BSC IT';
+-------------+
| avg(salary) |
+-------------+
|  43430.0000 |
+-------------+
1 row in set (0.000 sec)

MariaDB [task]> select avg(salary) from student where course_name='Bsc Cs';
+-------------+
| avg(salary) |
+-------------+
|  56115.0000 |
+-------------+
1 row in set (0.000 sec)

MariaDB [task]> select avg(salary) from student where course_name='Bsc aids';// without group method
+-------------+
| avg(salary) |
+-------------+
|  57340.0000 |
+-------------+
1 row in set (0.000 sec)

MariaDB [task]> select course_name,avg(salary) from student group by  course_name;
+-------------+-------------+
| course_name | avg(salary) |
+-------------+-------------+
| BSC aids    |  57340.0000 |
| bsc Cs      |  56115.0000 |
| BSC IT      |  43430.0000 |
+-------------+-------------+