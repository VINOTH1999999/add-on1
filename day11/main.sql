| student_id | name    | subject | marks |
+------------+---------+---------+-------+
|          1 | Abhinav | Math    |    88 |
|          1 | Abhinav | Science |    92 |
|          2 | anu     | Math    |    76 |
|          2 | anu     | Science |    84 |
|          3 | nikash  | Math    |    91 |
+------------+---------+---------+-------+
5 rows in set (0.00 sec)
// this main task is an another continuation of task1
mysql> CREATE TABLE Courses (
    ->     course_id INT PRIMARY KEY,
    ->     course_name VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.47 sec)

mysql>
mysql> -- Add course_id to Marks table
mysql> ALTER TABLE Marks ADD course_id INT;
Query OK, 0 rows affected (0.80 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE Marks ADD FOREIGN KEY (course_id) REFERENCES Courses(course_id);
Query OK, 5 rows affected (1.91 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Courses VALUES
    -> (1, 'Mathematics'),
    -> (2, 'Science');
Query OK, 2 rows affected (0.07 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> UPDATE Marks SET course_id = 1 WHERE subject = 'Math';
Query OK, 3 rows affected (0.09 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql> UPDATE Marks SET course_id = 2 WHERE subject = 'Science';
Query OK, 2 rows affected (0.09 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> SELECT s.name, c.course_name, m.marks
    -> FROM stud s JOIN Marks m ON s.student_id = m.student_id
    -> JOIN Courses c ON m.course_id = c.course_id
    -> WHERE m.marks > 85;
+---------+-------------+-------+
| name    | course_name | marks |
+---------+-------------+-------+
| Abhinav | Mathematics |    88 |
| nikash  | Mathematics |    91 |
| Abhinav | Science     |    92 |
+---------+-------------+-------+
3 rows in set (0.06 sec)