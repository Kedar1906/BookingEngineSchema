-- Insert Sample User
INSERT INTO users (full_name, email, phone_number) VALUES 
('Rahul Sharma', 'rahul@example.com', '9876543210');

-- Insert Sample Movie
INSERT INTO movies (title, language, genre, duration_minutes, rating) VALUES 
('Inception', 'English', 'Sci-Fi', 148, 'UA');

-- Insert Sample Theatre & Screen
INSERT INTO theatres (name, city, location, total_screens) VALUES 
('PVR Koramangala', 'Bangalore', 'Forum Mall, Koramangala', 2);

INSERT INTO screens (theatre_id, screen_name, total_seats) VALUES 
(1, 'Screen 1', 2);

-- Insert Sample Seats
INSERT INTO seats (screen_id, seat_row, seat_number, seat_type) VALUES 
(1, 'A', 1, 'VIP'),
(1, 'A', 2, 'VIP');

-- Insert Sample Show
INSERT INTO shows (movie_id, screen_id, show_date, start_time, end_time, price) VALUES 
(1, 1, '2026-10-01', '18:30:00', '21:00:00', 350.00);

-- Initialize Show Seats Status
INSERT INTO show_seats (show_id, seat_id, status) VALUES 
(1, 1, 'AVAILABLE'),
(1, 2, 'AVAILABLE');
