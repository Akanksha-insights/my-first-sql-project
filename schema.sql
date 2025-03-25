-- Drop existing tables if any
DROP TABLE IF EXISTS Salaries, Performance, Attendance, Employees, Departments;

-- Departments table
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(100)
);

-- Employees table
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    hire_date DATE,
    department_id INT,
    manager_id INT,
    job_title VARCHAR(100),
    salary DECIMAL(10,2),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (manager_id) REFERENCES Employees(employee_id)
);

-- Attendance table
CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY,
    employee_id INT,
    date DATE,
    status VARCHAR(10),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

-- Performance table
CREATE TABLE Performance (
    review_id INT PRIMARY KEY,
    employee_id INT,
    review_date DATE,
    rating INT,
    comments TEXT,
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

-- Salaries table
CREATE TABLE Salaries (
    salary_id INT PRIMARY KEY,
    employee_id INT,
    effective_date DATE,
    salary DECIMAL(10,2),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);
