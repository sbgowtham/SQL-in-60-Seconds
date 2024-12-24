CREATE TABLE uber_rides (
    ride_id INT PRIMARY KEY,
    ride_date DATE NOT NULL,
    ride_time TIME NOT NULL,
    city VARCHAR(50) NOT NULL
);

INSERT INTO uber_rides (ride_id, ride_date, ride_time, city) VALUES
(1, '2024-12-01', '10:30:00', 'New York'),
(2, '2024-12-01', '15:45:00', 'San Francisco'),
(3, '2024-12-02', '09:15:00', 'Chicago'),
(4, '2024-12-02', '22:00:00', 'New York'),
(5, '2024-12-03', '11:30:00', 'Los Angeles'),
(6, '2024-12-01', '18:20:00', 'Chicago'),
(7, '2024-12-03', '14:10:00', 'San Francisco'),
(8, '2024-12-02', '08:00:00', 'New York'),
(9, '2024-12-01', '12:45:00', 'Los Angeles'),
(10, '2024-12-02', '19:30:00', 'San Francisco');

SELECT 
    DAYNAME(ride_date) AS day_of_week, 
    COUNT(*) AS total_rides
FROM 
    uber_rides
GROUP BY 
    DAYNAME(ride_date)
ORDER BY 
    total_rides DESC
LIMIT 1;
