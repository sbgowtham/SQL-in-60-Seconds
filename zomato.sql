CREATE TABLE orders (
    order_id INT,
    customer_name VARCHAR(50),
    order_amount DECIMAL(10, 2),
    payment_status VARCHAR(10)
);
INSERT INTO orders (order_id, customer_name, order_amount, payment_status) VALUES
(1, 'Alice', 150.00, 'Paid'),
(2, 'Bob', 75.00, 'Paid'),
(3, 'Charlie', 200.00, 'Pending'),
(4, 'David', 50.00, 'Paid');

SELECT 
    order_id,
    customer_name,
    order_amount,
    payment_status,
    CASE 
        WHEN order_amount > 100 AND payment_status = 'Paid' THEN 'Eligible for Discount'
        ELSE 'Not Eligible for Discount'
    END AS discount_status
FROM orders;
