-- Creating the 'friends' table
CREATE TABLE friends (
  user_name VARCHAR(50),
  friend_name VARCHAR(50)
);

-- Inserting sample data with Tamil Nadu names
INSERT INTO friends (user_name, friend_name) VALUES
('Arun', 'Bala'),   -- Arun is friends with Bala
('Arun', 'Karthik'), -- Arun is friends with Karthik
('Bala', 'Karthik'), -- Bala is friends with Karthik
('Bala', 'Dinesh'),  -- Bala is friends with Dinesh
('Karthik', 'Dinesh'),-- Karthik is friends with Dinesh
('Dinesh', 'Ravi');   -- Dinesh is friends with Ravi


-- Finding mutual friends between Arun and Bala
SELECT f1.user_name AS mutual_friend
FROM friends f1
JOIN friends f2 ON f1.friend_name = f2.friend_name
WHERE f1.user_name != f2.user_name
  AND f1.user_name = 'Arun'  -- Friends of Arun
  AND f2.user_name = 'Bala'; -- Friends of Bala
