-- Departments
INSERT INTO Departments VALUES
(1, 'Engineering', 'New York'),
(2, 'HR', 'Chicago'),
(3, 'Marketing', 'San Francisco'),
(4, 'Finance', 'Boston');

-- Employees
INSERT INTO Employees VALUES
(101, 'Alice Johnson', 'alice.j@example.com', '1234567890', '2020-01-15', 1, NULL, 'Engineering Manager', 95000.00),
(102, 'Bob Smith', 'bob.s@example.com', '1234567891', '2021-03-10', 1, 101, 'Software Engineer', 75000.00),
(103, 'Carol White', 'carol.w@example.com', '1234567892', '2022-07-21', 2, NULL, 'HR Manager', 80000.00),
(104, 'David Lee', 'david.l@example.com', '1234567893', '2019-11-01', 3, NULL, 'Marketing Lead', 78000.00),
(105, 'Eva Green', 'eva.g@example.com', '1234567894', '2023-05-01', 4, NULL, 'Financial Analyst', 72000.00);

-- Attendance
INSERT INTO Attendance VALUES
(1, 102, '2025-03-01', 'Present'),
(2, 102, '2025-03-02', 'Absent'),
(3, 103, '2025-03-01', 'Present'),
(4, 104, '2025-03-01', 'Leave'),
(5, 105, '2025-03-01', 'Present');

-- Performance
INSERT INTO Performance VALUES
(1, 102, '2025-01-31', 4, 'Consistent and reliable'),
(2, 103, '2025-01-31', 5, 'Great team leader'),
(3, 104, '2025-01-31', 3, 'Needs improvement in communication'),
(4, 105, '2025-01-31', 5, 'Outstanding new hire');

-- Salaries
INSERT INTO Salaries VALUES
(1, 102, '2023-01-01', 70000.00),
(2, 102, '2024-01-01', 75000.00),
(3, 105, '2023-05-01', 72000.00);
