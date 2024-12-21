
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    order_info JSON
);



INSERT INTO Orders (order_id, order_info) VALUES
(1, '{"name": "Alice", "address": "123 Street, Bangalore", "status": "Shipped", "amount": 1000}'),
(2, '{"name": "Bob", "address": "456 Avenue, Delhi", "status": "Delivered", "amount": 1500}'),
(3, '{"name": "Charlie", "address": "789 Road, Mumbai", "status": "Pending", "amount": 2000}');



SELECT 
order_info->>'$.status' AS OrderStatus,
order_info->>'$.name' AS CustomerName,
order_info->>'$.address' AS ShippingAddress,

CAST(order_info->>'$.amount' 
AS DECIMAL(10, 2)) * 1.10 AS TotalAmountWithTax

FROM Orders;
