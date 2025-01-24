CREATE TABLE triangles (
    x INT,
    y INT,
    z INT,
    PRIMARY KEY (x, y, z)
);
INSERT INTO triangles (x, y, z) VALUES (3, 4, 5);  
INSERT INTO triangles (x, y, z) VALUES (1, 2, 3); 
INSERT INTO triangles (x, y, z) VALUES (5, 10, 12);

SELECT x, y, z
FROM triangles
WHERE (x + y > z)
  AND (x + z > y)
  AND (y + z > x);
