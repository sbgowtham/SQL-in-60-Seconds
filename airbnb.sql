%%sql
CREATE TABLE EmployeeSales (
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    SalesAmount DECIMAL(10, 2)
);

INSERT INTO EmployeeSales (EmployeeID, EmployeeName, SalesAmount) VALUES
(1, 'Alice', 10000),
(2, 'Bob', 8500),
(3, 'Charlie', 7500),
(4, 'David', 6000),
(5, 'Eva', 11000),
(6, 'Frank', 4500),
(7, 'Grace', 3000),
(8, 'Hank', 4000),
(9, 'Ivy', 8000),
(10, 'Jack', 9500);



SELECT EmployeeID, EmployeeName, SalesAmount,
       NTILE(4) OVER (ORDER BY SalesAmount DESC) AS PerformanceGroup
FROM EmployeeSales;
