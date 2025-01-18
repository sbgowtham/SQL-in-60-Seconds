

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    gender VARCHAR(10),
    age INT
);

CREATE TABLE Interests (
    user_id INT,
    interest VARCHAR(100)
);

INSERT INTO Users (user_id, name, gender, age)
VALUES 
(1, 'Aditi', 'Female', 25),
(2, 'Ravi', 'Male', 28),
(3, 'Vikram', 'Male', 30),
(4, 'Priya', 'Female', 24),
(5, 'Rajesh', 'Male', 27);


INSERT INTO Interests (user_id, interest)
VALUES
(1, 'Hiking'),
(1, 'Music'),
(2, 'Movies'),
(2, 'Hiking'),
(3, 'Cooking'),
(3, 'Music'),
(4, 'Yoga'),
(4, 'Traveling');


SELECT u1.name AS user_name, u1.age, u1.gender, i1.interest, i2.interest AS alice_interest
FROM users u1
JOIN Interests i1 ON u1.user_id = i1.user_id
JOIN Interests i2 ON i1.interest = i2.interest 
WHERE u1.user_id != 1 
AND i2.user_id = 1;    
