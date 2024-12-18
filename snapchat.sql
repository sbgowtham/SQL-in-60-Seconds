
CREATE TABLE daily_snaps (
  user_name VARCHAR(50),
  snap_date DATE,
  snap_count INT
);

INSERT INTO daily_snaps (user_name, snap_date, snap_count) VALUES
('Arun', '2024-12-01', 5),
('Arun', '2024-12-02', 7),
('Arun', '2024-12-03', 10),
('Bala', '2024-12-01', 2),
('Bala', '2024-12-02', 2),
('Bala', '2024-12-03', 5),
('Bala', '2024-12-04', 1);


SELECT
  user_name,
  snap_date,
  snap_count,

  snap_count - LAG(snap_count, 1, 0) 
OVER (PARTITION BY user_name ORDER BY snap_date) 
AS daily_change

FROM daily_snaps
ORDER BY user_name, snap_date;
