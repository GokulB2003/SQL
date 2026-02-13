# MySQL Database Practice – Employee Table

This project demonstrates basic **MySQL database operations** including:
- Database creation
- Table creation
- Altering table structure
- Inserting records
- Viewing data
- Truncating tables

---
CREATE TABLE employee (
    id INT(9),
    name VARCHAR(20),
    salary INT(4)
);

2. Table Creation
CREATE TABLE employee (
    id INT(9),
    name VARCHAR(20),
    salary INT(4)
);


View table structure:

DESC employee;

3. Alter Table Operations
Add a Column:
ALTER TABLE employee ADD COLUMN contact INT(10) AFTER salary;

Add Multiple Columns
ALTER TABLE employee 
ADD email VARCHAR(40),
ADD address VARCHAR(30);

Modify Column Datatype:
ALTER TABLE employee MODIFY COLUMN salary VARCHAR(40);
ALTER TABLE employee MODIFY COLUMN salary INT(10);

Drop a Column:
ALTER TABLE employee DROP address;

Rename a Column:
ALTER TABLE employee RENAME COLUMN email TO address;

4. Viewing Table Structure:
DESC employee;

5. Insert Operations:
Insert All Values
INSERT INTO employee 
VALUES (10, "saagr", 2000, 928477, "warje");

Insert Selected Columns:
INSERT INTO employee (id, name)
VALUES (11, "mangu");

6. Select Data:
SELECT * FROM employee;


Sample Output:

+------+-------+--------+---------+---------+
| id   | name  | salary | contact | address |
+------+-------+--------+---------+---------+
| 10   | saagr | 2000   | 928477  | warje   |
| 11   | mangu | NULL   | NULL    | NULL    |
+------+-------+--------+---------+---------+

7. Truncate Table

Remove all records but keep table structure:

TRUNCATE employee;


Verify:

SELECT * FROM employee;


Output:

Empty set
