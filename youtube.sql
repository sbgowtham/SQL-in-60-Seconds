
CREATE TABLE videos (
  video_id INT,
  video_title VARCHAR(255),
  views INT,
  upload_date DATE
);

INSERT INTO videos (video_id, video_title, views, upload_date) VALUES
(1, 'How to Cook Perfect Rice', 150000, '2024-12-01'),
(2, 'Top 10 Coding Tips', 500000, '2024-12-02'),
(3, 'Amazing Street Food Tour', 300000, '2024-12-03'),
(4, 'Yoga for Beginners', 450000, '2024-12-04'),
(5, 'Travel Hacks for Cheap Flights', 600000, '2024-12-05');


SELECT
  video_title,
  views,
  RANK() OVER (ORDER BY views DESC) 
AS rank_view
FROM videos;
