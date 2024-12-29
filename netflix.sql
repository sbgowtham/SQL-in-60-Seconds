-- Create the Cinema Table
CREATE TABLE Cinema (
    id INT PRIMARY KEY,
    movie VARCHAR(255),
    description VARCHAR(255),
    rating FLOAT
);
-- Insert Data into Cinema Table
INSERT INTO Cinema (id, movie, description, rating) VALUES
(1, 'The Dark Knight', 'thrilling', 9.0),
(2, 'The Hangover', 'comedy', 7.7),
(3, 'Inception', 'mind-bending', 8.8),
(4, 'Titanic', 'romantic', 7.8),
(5, 'Avengers: Endgame', 'epic action', 8.4),
(6, 'The Matrix', 'sci-fi action', 8.7),
(7, 'The Godfather', 'classic crime drama', 9.2),
(8, 'Cars', 'animated comedy', 6.8),
(9, 'The Lion King', 'animated drama', 8.5),
(10, 'Interstellar', 'epic space drama', 8.6);

SELECT *
FROM Cinema
WHERE
  MOD(id, 2) = 1  ;
