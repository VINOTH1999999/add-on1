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
MariaDB [task]> select course_name,max(salary) from student group by  course_name;
+-------------+-------------+
| course_name | max(salary) |
+-------------+-------------+
| BSC aids    |       72220 |
| bsc Cs      |       70030 |
| BSC IT      |       63630 |
+-------------+-------------+
3 rows in set (0.000 sec)

MariaDB [task]> select course_name,min(salary) from student group by  course_name;
+-------------+-------------+
| course_name | min(salary) |
+-------------+-------------+
| BSC aids    |       27770 |
| bsc Cs      |       42200 |
| BSC IT      |       26660 |
+-------------+-------------+
3 rows in set (0.000 sec)
