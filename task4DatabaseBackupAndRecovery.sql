-- Step-by-Step Guide for MySQL Backup and Recovery

-- Step 1: Create a Sample Database and Tables
CREATE DATABASE IF NOT EXISTS sample_db;
USE sample_db;

-- Create a sample table
CREATE TABLE IF NOT EXISTS employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(100) NOT NULL,
    salary DECIMAL(10,2) NOT NULL
);

-- Insert sample data
INSERT INTO employees (name, position, salary) VALUES
('Alice', 'Manager', 75000.00),
('Bob', 'Developer', 60000.00),
('Charlie', 'Designer', 55000.00);

-- Step 2: Backup the Database
-- This command will export the database structure and data into a SQL file.
-- Open Command Prompt and run:
-- "C:\Program Files\MySQL\MySQL Server 8.0\bin\mysqldump.exe" -u root -p sample_db > C:\backup\sample_db_backup.sql

-- Step 3: Simulating a Failure (Optional)
-- To test recovery, you can drop the database
DROP DATABASE IF EXISTS sample_db;

-- Step 4: Restore the Database
-- This command will restore the database from the backup file.
-- Open Command Prompt and run:
-- "C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe" -u root -p sample_db < C:\backup\sample_db_backup.sql

-- Step 5: Verify the Restoration
-- After restoring, you can check if the data is restored by running:
SELECT * FROM sample_db.employees;
