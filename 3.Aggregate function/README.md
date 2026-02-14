

# 📊 SQL Aggregate Functions

Aggregate functions in SQL perform calculations on multiple rows of a table’s column and return a single value.

They are commonly used with the `GROUP BY` clause.

---

## 📌 List of SQL Aggregate Functions

| Function  | Description                                   | Example                              |
| --------- | --------------------------------------------- | ------------------------------------ |
| `COUNT()` | Returns the number of rows                    | `SELECT COUNT(*) FROM employees;`    |
| `SUM()`   | Returns the total sum of a numeric column     | `SELECT SUM(salary) FROM employees;` |
| `AVG()`   | Returns the average value of a numeric column | `SELECT AVG(salary) FROM employees;` |
| `MIN()`   | Returns the minimum value                     | `SELECT MIN(salary) FROM employees;` |
| `MAX()`   | Returns the maximum value                     | `SELECT MAX(salary) FROM employees;` |

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

# 🔹 Examples

## 1️⃣ COUNT()

```sql
SELECT COUNT(*) FROM employees;
```

**Output:**

| COUNT(*) |
| -------- |
| 5        |

---

## 2️⃣ SUM()

```sql
SELECT SUM(salary) FROM employees;
```

**Output:**

| SUM(salary) |
| ----------- |
| 250000      |

---

## 3️⃣ AVG()

```sql
SELECT AVG(salary) FROM employees;
```

**Output:**

| AVG(salary) |
| ----------- |
| 50000       |

---

## 4️⃣ MIN()

```sql
SELECT MIN(salary) FROM employees;
```

**Output:**

| MIN(salary) |
| ----------- |
| 40000       |

---

## 5️⃣ MAX()

```sql
SELECT MAX(salary) FROM employees;
```

**Output:**

| MAX(salary) |
| ----------- |
| 60000       |

---

# 🔹 Using GROUP BY with Aggregate Functions

```sql
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;
```

**Output:**

| department | total_salary |
| ---------- | ------------ |
| IT         | 110000       |
| HR         | 85000        |
| Finance    | 55000        |

---

# 🔹 Using HAVING Clause

The `HAVING` clause is used to filter grouped results.

```sql
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 45000;
```

---

# 📝 Important Notes

* Aggregate functions ignore `NULL` values (except `COUNT(*)`).
* They are often used with `GROUP BY`.
* `WHERE` filters rows before grouping.
* `HAVING` filters groups after aggregation.

---

# ✅ Conclusion

SQL Aggregate Functions are essential for data analysis, reporting, and summarizing data efficiently.

---

If you want, I can also provide:

* 📘 MySQL-specific version
* 📙 PostgreSQL version
* 📗 Interview-focused notes
* 📊 Practice problems with solutions

