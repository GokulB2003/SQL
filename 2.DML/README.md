
# 🔹 What is DML?

**DML (Data Manipulation Language)** is used to manage data inside database tables.

---

# 📌 DML Commands

| Command  | Description                   | Example                                               |
| -------- | ----------------------------- | ----------------------------------------------------- |
| `INSERT` | Adds new records into a table | `INSERT INTO employees VALUES (1,'John','IT',50000);` |
| `SELECT` | Retrieves data from a table   | `SELECT * FROM employees;`                            |
| `UPDATE` | Modifies existing records     | `UPDATE employees SET salary=55000 WHERE id=1;`       |
| `DELETE` | Removes records from a table  | `DELETE FROM employees WHERE id=1;`                   |

---

# 🧾 Sample Table: `employees`

| id | name  | department | salary |
| -- | ----- | ---------- | ------ |
| 1  | John  | IT         | 50000  |
| 2  | Sarah | HR         | 40000  |
| 3  | Mike  | IT         | 60000  |
| 4  | Emma  | Finance    | 55000  |
| 5  | David | HR         | 45000  |

---

# 🔹 DML Examples

## 1️⃣ INSERT

```sql
INSERT INTO employees (id, name, department, salary)
VALUES (6, 'Alex', 'IT', 52000);
```

---

## 2️⃣ SELECT

```sql
SELECT * FROM employees;
```

---

## 3️⃣ UPDATE

```sql
UPDATE employees
SET salary = 58000
WHERE name = 'John';
```

---

## 4️⃣ DELETE

```sql
DELETE FROM employees
WHERE id = 6;
```

---

# 📊 SQL Aggregate Functions

Aggregate functions perform calculations on multiple rows and return a single value.

---

# 📌 List of Aggregate Functions

| Function  | Description                   | Example                              |
| --------- | ----------------------------- | ------------------------------------ |
| `COUNT()` | Returns the number of rows    | `SELECT COUNT(*) FROM employees;`    |
| `SUM()`   | Returns total sum of a column | `SELECT SUM(salary) FROM employees;` |
| `AVG()`   | Returns average value         | `SELECT AVG(salary) FROM employees;` |
| `MIN()`   | Returns minimum value         | `SELECT MIN(salary) FROM employees;` |
| `MAX()`   | Returns maximum value         | `SELECT MAX(salary) FROM employees;` |

---

# 🔹 Aggregate Examples

## 1️⃣ COUNT

```sql
SELECT COUNT(*) FROM employees;
```

---

## 2️⃣ SUM

```sql
SELECT SUM(salary) FROM employees;
```

---

## 3️⃣ AVG

```sql
SELECT AVG(salary) FROM employees;
```

---

## 4️⃣ MIN

```sql
SELECT MIN(salary) FROM employees;
```

---

## 5️⃣ MAX

```sql
SELECT MAX(salary) FROM employees;
```

---

# 🔹 GROUP BY Example

```sql
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;
```

### Output

| department | total_salary |
| ---------- | ------------ |
| IT         | 110000       |
| HR         | 85000        |
| Finance    | 55000        |

---

# 🔹 HAVING Example

```sql
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 45000;
```

---

