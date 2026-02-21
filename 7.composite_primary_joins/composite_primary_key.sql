

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| abc                |
| billing            |
| college            |
| information_schema |
| j2025              |
| mydb               |
| mysql              |
| onlineexamdb       |
| performance_schema |
| pp                 |
| pp50               |
| practice           |
| sys                |
| team               |
| temp               |
| voice_tasks        |
+--------------------+
16 rows in set (0.79 sec)

mysql> use j2025;
Database changed
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| abc                |
| billing            |
| college            |
| information_schema |
| j2025              |
| mydb               |
| mysql              |
| onlineexamdb       |
| performance_schema |
| pp                 |
| pp50               |
| practice           |
| sys                |
| team               |
| temp               |
| voice_tasks        |
+--------------------+
16 rows in set (0.00 sec)

mysql> show tables;
+-----------------+
| Tables_in_j2025 |
+-----------------+
| employee        |
| project         |
+-----------------+
2 rows in set (0.02 sec)

mysql> use onlineExamDb
Database changed
mysql> create table Student(student_id int primary key,student_name varchar(100),email varchar(100),gender varchar(10),city varchar(50),resistration_date Date);
Query OK, 0 rows affected (0.08 sec)

mysql> create table subject(subject_id int primary key,sublect_name varchar(100),total_marks int);
Query OK, 0 rows affected (0.06 sec)

mysql> create table ExamSchedule(exam_id int primary key,subject_id int,exam_date Date,duration_minutes int,foreign key(subject_id) references Subject(subject_id));
Query OK, 0 rows affected (0.06 sec)

mysql> desc ExamSchedule;
+------------------+------+------+-----+---------+-------+
| Field            | Type | Null | Key | Default | Extra |
+------------------+------+------+-----+---------+-------+
| exam_id          | int  | NO   | PRI | NULL    |       |
| subject_id       | int  | YES  | MUL | NULL    |       |
| exam_date        | date | YES  |     | NULL    |       |
| duration_minutes | int  | YES  |     | NULL    |       |
+------------------+------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> create table Question(question_id int primary key,question_text varchar(500),difficulty_level varchar(20),marks int);
Query OK, 0 rows affected (0.03 sec)

mysql> create table SubjectQuestion(subject_id int,question_id int,primary key(subject_id,question_id),foreign key(subject_id) references Subject(subject_id),foreign key(question_id) references question(question_id));
Query OK, 0 rows affected (0.12 sec)

mysql> create table Result(result_id int primary key,student_id int,exam_id int,marks_obtained int,result_status varchar(20),foreign key(student_id) references ExamSchedule(exam_id));
Query OK, 0 rows affected (0.09 sec)

mysql> insert into Studen values(1, 'Rahul Sharma', 'rahul@gmail.com', 'Male', 'Delhi', '2024-01-10')
    -> ;
ERROR 1146 (42S02): Table 'onlineexamdb.studen' doesn't exist
mysql> insert into Student values(1, 'Rahul Sharma', 'rahul@gmail.com', 'Male', 'Delhi', '2024-01-10'),
    -> (2, 'Priya Mehta', 'priya@gmail.com', 'Female', 'Mumbai', '2024-02-15'),
    -> (3, 'Amit Verma', 'amit@gmail.com', 'Male', 'Bangalore', '2024-03-05'),
    -> (4, 'Sneha Reddy', 'sneha@gmail.com', 'Female', 'Hyderabad', '2024-01-20'),
    -> (5, 'Arjun Singh', 'arjun@gmail.com', 'Male', 'Chennai', '2024-02-01');
Query OK, 5 rows affected (0.04 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from Student;
+------------+--------------+-----------------+--------+-----------+-------------------+
| student_id | student_name | email           | gender | city      | resistration_date |
+------------+--------------+-----------------+--------+-----------+-------------------+
|          1 | Rahul Sharma | rahul@gmail.com | Male   | Delhi     | 2024-01-10        |
|          2 | Priya Mehta  | priya@gmail.com | Female | Mumbai    | 2024-02-15        |
|          3 | Amit Verma   | amit@gmail.com  | Male   | Bangalore | 2024-03-05        |
|          4 | Sneha Reddy  | sneha@gmail.com | Female | Hyderabad | 2024-01-20        |
|          5 | Arjun Singh  | arjun@gmail.com | Male   | Chennai   | 2024-02-01        |
+------------+--------------+-----------------+--------+-----------+-------------------+
5 rows in set (0.00 sec)

mysql> insert into Subject(101, 'Mathematics', 100),
    -> (102, 'Physics', 100),
    -> (103, 'Chemistry', 100),
    -> (104, 'English', 100);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '101, 'Mathematics', 100),
(102, 'Physics', 100),
(103, 'Chemistry', 100),
(104, ' at line 1
mysql> insert into Subject values(101, 'Mathematics', 100),
    -> (102, 'Physics', 100),
    -> (103, 'Chemistry', 100),
    -> (104, 'English', 100);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select *from Sublject;
ERROR 1146 (42S02): Table 'onlineexamdb.sublject' doesn't exist
mysql> select *from Subject;
+------------+--------------+-------------+
| subject_id | sublect_name | total_marks |
+------------+--------------+-------------+
|        101 | Mathematics  |         100 |
|        102 | Physics      |         100 |
|        103 | Chemistry    |         100 |
|        104 | English      |         100 |
+------------+--------------+-------------+
4 rows in set (0.00 sec)

mysql> desc ExamSchedule;
+------------------+------+------+-----+---------+-------+
| Field            | Type | Null | Key | Default | Extra |
+------------------+------+------+-----+---------+-------+
| exam_id          | int  | NO   | PRI | NULL    |       |
| subject_id       | int  | YES  | MUL | NULL    |       |
| exam_date        | date | YES  |     | NULL    |       |
| duration_minutes | int  | YES  |     | NULL    |       |
+------------------+------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> insert into ExamSchedule values (201, 101, '2024-05-10', 120),
    -> (202, 102, '2024-05-12', 120),
    -> (203, 103, '2024-05-14', 120),
    -> (204,104,'2024-05-16',90);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select *from ExamSchedule;
+---------+------------+------------+------------------+
| exam_id | subject_id | exam_date  | duration_minutes |
+---------+------------+------------+------------------+
|     201 |        101 | 2024-05-10 |              120 |
|     202 |        102 | 2024-05-12 |              120 |
|     203 |        103 | 2024-05-14 |              120 |
|     204 |        104 | 2024-05-16 |               90 |
+---------+------------+------------+------------------+
4 rows in set (0.00 sec)

mysql> insert into Question values (1, 'What is 2 + 2?', 'Easy', 5),
    -> (2, 'Explain Newton’s First Law.', 'Medium', 10),
    -> (3, 'Balance the chemical equation H2 + O2 → H2O.', 'Medium', 10),
    -> (4, 'Write an essay on Climate Change.', 'Hard', 15),
    -> (5, 'Integrate x^2 dx.', 'Hard', 15);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from Question;
+-------------+----------------------------------------------+------------------+-------+
| question_id | question_text                                | difficulty_level | marks |
+-------------+----------------------------------------------+------------------+-------+
|           1 | What is 2 + 2?                               | Easy             |     5 |
|           2 | Explain Newton?s First Law.                  | Medium           |    10 |
|           3 | Balance the chemical equation H2 + O2 ? H2O. | Medium           |    10 |
|           4 | Write an essay on Climate Change.            | Hard             |    15 |
|           5 | Integrate x^2 dx.                            | Hard             |    15 |
+-------------+----------------------------------------------+------------------+-------+
5 rows in set (0.00 sec)

mysql> insert into Result values(1, 1, 201, 85, 'Pass'),
    -> (2, 2, 201, 78, 'Pass'),
    -> (3, 3, 202, 65, 'Pass'),
    -> (4, 4, 203, 45, 'Fail'),
    -> (5, 5, 204, 88, 'Pass'),
    -> (6, 1, 202, 72, 'Pass'),
    -> (7, 2, 203, 90, 'Pass');
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`onlineexamdb`.`result`, CONSTRAINT `result_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `examschedule` (`exam_id`))
mysql> desc Result;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| result_id      | int         | NO   | PRI | NULL    |       |
| student_id     | int         | YES  | MUL | NULL    |       |
| exam_id        | int         | YES  |     | NULL    |       |
| marks_obtained | int         | YES  |     | NULL    |       |
| result_status  | varchar(20) | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> insert into Result values(1,1,201,85,'pass'),
    -> (2, 2, 201, 78, 'Pass'),
    -> (3, 3, 202, 65, 'Pass'),
    -> (4, 4, 203, 45, 'Fail'),
    -> (5, 5, 204, 88, 'Pass'),
    -> (6, 1, 202, 72, 'Pass'),
    -> (7, 2, 203, 90, 'Pass');
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`onlineexamdb`.`result`, CONSTRAINT `result_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `examschedule` (`exam_id`))
mysql> insert into Result values(1,1,201,85,'pass');
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`onlineexamdb`.`result`, CONSTRAINT `result_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `examschedule` (`exam_id`))
mysql> drop table Result;
Query OK, 0 rows affected (0.08 sec)

mysql> create table Result(result_id int primary key,student_id int,exam_id int,marks_obtained int,result_status varchar(20),foreign key (student_id) references student(student_id),foreign key (exam_id) references ExamSchedule(exam_id));
Query OK, 0 rows affected (0.10 sec)

mysql> desc Result;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| result_id      | int         | NO   | PRI | NULL    |       |
| student_id     | int         | YES  | MUL | NULL    |       |
| exam_id        | int         | YES  | MUL | NULL    |       |
| marks_obtained | int         | YES  |     | NULL    |       |
| result_status  | varchar(20) | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> insert into Result values(1,1,201,85,'pass');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Result values(2, 2, 201, 78, 'Pass'),
    -> (3, 3, 202, 65, 'Pass'),
    -> (4, 4, 203, 45, 'Fail'),
    -> (5, 5, 204, 88, 'Pass'),
    -> (6, 1, 202, 72, 'Pass'),
    -> (7, 2, 203, 90, 'Pass');
Query OK, 6 rows affected (0.01 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> select *from Result;
+-----------+------------+---------+----------------+---------------+
| result_id | student_id | exam_id | marks_obtained | result_status |
+-----------+------------+---------+----------------+---------------+
|         1 |          1 |     201 |             85 | pass          |
|         2 |          2 |     201 |             78 | Pass          |
|         3 |          3 |     202 |             65 | Pass          |
|         4 |          4 |     203 |             45 | Fail          |
|         5 |          5 |     204 |             88 | Pass          |
|         6 |          1 |     202 |             72 | Pass          |
|         7 |          2 |     203 |             90 | Pass          |
+-----------+------------+---------+----------------+---------------+
7 rows in set (0.00 sec)
