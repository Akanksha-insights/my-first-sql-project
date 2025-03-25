-- Employees per Department
SELECT d.name AS department, COUNT(e.employee_id) AS total_employees
FROM Departments d
LEFT JOIN Employees e ON d.department_id = e.department_id
GROUP BY d.name;

-- Average Salary by Department
SELECT d.name AS department, AVG(e.salary) AS avg_salary
FROM Departments d
JOIN Employees e ON d.department_id = e.department_id
GROUP BY d.name;

-- Daily Attendance Summary
SELECT date, status, COUNT(*) AS total
FROM Attendance
GROUP BY date, status
ORDER BY date;

-- Top Performers (Rating ≥ 4)
SELECT e.name, p.rating, p.comments
FROM Performance p
JOIN Employees e ON p.employee_id = e.employee_id
WHERE p.rating >= 4;

-- Employees with Raises
SELECT employee_id, MIN(salary) AS old_salary, MAX(salary) AS new_salary
FROM Salaries
GROUP BY employee_id
HAVING MAX(salary) > MIN(salary);
