
create database demo;
use demo;

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    manager_id INT
);

INSERT INTO Employees (employee_id, employee_name, manager_id) VALUES
(1, 'Alice', 3),
(2, 'Bob', 3),
(3, 'Charlie', 4),
(4, 'David', 5),
(5, 'Eve', 5),
(6, 'Frank', 5),
(7, 'Grace', 5),
(8, 'Hannah', 5),
(9, 'Ivan', 5),
(10, 'Jack', 5),
(11, 'Karen', 4),
(12, 'Leo', 4),
(13, 'Mike', 5),
(14, 'Nina', 5),
(15, 'Olivia', 5);


select 
e.employee_name as mangaer_name ,
count(emp.employee_id) as report_count 
from employees emp
join employees e 
on emp.manager_id = e.employee_id 
group by e.employee_name
having 
count(emp.employee_id) >= 7 ;
