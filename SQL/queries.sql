SELECT 
    t.name AS theatre_name,
    m.title AS movie_title,
    m.language,
    m.rating,
    s.screen_name,
    sh.show_id,
    sh.show_date,
    sh.start_time,
    sh.end_time,
    sh.price
FROM shows sh
JOIN screens s ON sh.screen_id = s.screen_id
JOIN theatres t ON s.theatre_id = t.theatre_id
JOIN movies m ON sh.movie_id = m.movie_id
WHERE t.theatre_id = 1 
  AND sh.show_date = '2026-10-01'
ORDER BY m.title, sh.start_time;
