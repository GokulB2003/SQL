
# 📘 SQL DDL (Data Definition Language)

## 🔹 What is DDL?

**DDL (Data Definition Language)** is used to define and manage the structure of database objects such as:

* Tables
* Databases
* Indexes
* Constraints

DDL commands affect the structure of the database, not the data itself.

---

# 📌 DDL Commands

| Command    | Description                      | Example                                 |
| ---------- | -------------------------------- | --------------------------------------- |
| `CREATE`   | Creates a new database object    | `CREATE TABLE employees (...);`         |
| `ALTER`    | Modifies an existing object      | `ALTER TABLE employees ADD salary INT;` |
| `DROP`     | Deletes an object permanently    | `DROP TABLE employees;`                 |
| `TRUNCATE` | Removes all records from a table | `TRUNCATE TABLE employees;`             |
| `RENAME`   | Renames a database object        | `RENAME TABLE employees TO staff;`      |

---

# 🏗️ 1️⃣ CREATE

## 🔹 Create Database

```sql
CREATE DATABASE company_db;
```

## 🔹 Create Table

```sql
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);
```

---

# 🔄 2️⃣ ALTER

## 🔹 Add Column

```sql
ALTER TABLE employees
ADD email VARCHAR(100);
```

## 🔹 Modify Column

```sql
ALTER TABLE employees
MODIFY salary DECIMAL(10,2);
```

## 🔹 Drop Column

```sql
ALTER TABLE employees
DROP COLUMN email;
```

---

# ❌ 3️⃣ DROP

## 🔹 Drop Table

```sql
DROP TABLE employees;
```

## 🔹 Drop Database

```sql
DROP DATABASE company_db;
```

⚠️ This permanently deletes the structure and data.

---

# 🧹 4️⃣ TRUNCATE

```sql
TRUNCATE TABLE employees;
```

### Difference Between DELETE and TRUNCATE

| DELETE                              | TRUNCATE                      |
| ----------------------------------- | ----------------------------- |
| Removes selected rows               | Removes all rows              |
| Can use `WHERE`                     | Cannot use `WHERE`            |
| Can be rolled back (in transaction) | Usually cannot be rolled back |
| Slower                              | Faster                        |

---

# 🔁 5️⃣ RENAME

```sql
RENAME TABLE employees TO staff;
```

---

# 🛡️ Constraints in DDL

Constraints enforce rules on table data.

| Constraint    | Description                     |
| ------------- | ------------------------------- |
| `PRIMARY KEY` | Uniquely identifies each record |
| `FOREIGN KEY` | Links two tables                |
| `UNIQUE`      | Ensures unique values           |
| `NOT NULL`    | Prevents NULL values            |
| `CHECK`       | Validates condition             |
| `DEFAULT`     | Sets default value              |

---


