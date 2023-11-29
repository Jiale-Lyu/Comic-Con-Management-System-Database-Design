USE ComicConManagement;

--Inserting data into expo table
INSERT INTO expo (expo_id, expo_name, expo_location, expo_description, expo_start_datetime, expo_end_datetime)
VALUES
	(1, 'New York Comic Con', 'Javits Center, New York, NY', 'The East Coast''s largest pop culture convention.', '2023-10-05 10:00:00', '2023-10-08 17:00:00'),
	(2, 'San Diego Comic-Con', 'San Diego Convention Center, San Diego, CA', 'The biggest Comic-Con, known for major announcements in comics and media.', '2023-07-20 09:00:00', '2023-07-23 19:00:00'),
	(3, 'Chicago Comic & Entertainment Expo', 'McCormick Place, Chicago, IL', 'A celebration of comics, culture, and entertainment in the Windy City.', '2023-03-25 10:00:00', '2023-03-27 17:00:00'),
	(4, 'Emerald City Comic Con', 'Washington State Convention Center, Seattle, WA', 'Seattle''s premier comic book and pop culture convention.', '2023-08-17 09:30:00', '2023-08-20 17:00:00'),
	(5, 'Dallas Comic Show', 'Irving Convention Center, Dallas, TX', 'A family-friendly event in the heart of Dallas.', '2023-05-06 10:00:00', '2023-05-07 17:00:00'),
	(6, 'Atlanta Comic Con', 'Georgia World Congress Center, Atlanta, GA', 'Bringing together fans of comics, gaming, and culture in Atlanta.', '2023-07-15 09:00:00', '2023-07-17 18:00:00'),
	(7, 'Denver Pop Culture Con', 'Colorado Convention Center, Denver, CO', 'A 3-day speculative fiction fan extravaganza.', '2023-11-24 09:00:00', '2023-11-26 19:00:00'),
	(8, 'Phoenix Fan Fusion', 'Phoenix Convention Center, Phoenix, AZ', 'Arizona''s largest comic and entertainment convention.', '2023-05-27 09:00:00', '2023-05-29 18:00:00'),
	(9, 'Los Angeles Comic Con', 'Los Angeles Convention Center, Los Angeles, CA', 'L.A.''s biggest and greatest comics, gaming, sci-fi, horror, and pop culture event.', '2023-12-02 09:30:00', '2023-12-04 17:00:00'),
	(10, 'Silicon Valley Comic Con', 'San Jose Convention Center, San Jose, CA', 'Where technology and pop culture meet.', '2023-08-26 10:00:00', '2023-08-28 16:00:00');

--Inserting data into attendee table   
INSERT INTO attendee (attendee_id, attendee_name, attendee_email, attendee_dob)
VALUES
	(1, 'John Doe', 'john.doe@example.com', '1990-05-15'),
	(2, 'Jane Smith', 'jane.smith@example.com', '1985-08-22'),
	(3, 'Bob Johnson', 'bob.johnson@example.com', '1992-02-10'),
	(4, 'Alice Johnson', 'alice.johnson@example.com', '1988-11-30'),
	(5, 'Charlie Brown', 'charlie.brown@example.com', '1995-07-18'),
	(6, 'Eva Martinez', 'eva.martinez@example.com', '1983-04-25'),
	(7, 'Michael Wang', 'michael.wang@example.com', '1998-09-03'),
	(8, 'Olivia Turner', 'olivia.turner@example.com', '1991-06-12'),
	(9, 'David Lee', 'david.lee@example.com', '1997-03-08'),
	(10, 'Sophia Garcia', 'sophia.garcia@example.com', '1989-12-14'),
	(11, 'Gagan Jain', 'gagan.jain@example.com', '1989-12-14'),
    (12, 'Emily Harris', 'emily.harris@example.com', '1993-03-21'),
    (13, 'Daniel Kim', 'daniel.kim@example.com', '1995-05-19'),
    (14, 'Nora Jones', 'nora.jones@example.com', '1986-07-02'),
    (15, 'Samuel Wilson', 'samuel.wilson@example.com', '1984-02-28'),
    (16, 'Isabella Brown', 'isabella.brown@example.com', '1992-10-30'),
    (17, 'Christopher Davis', 'christopher.davis@example.com', '1991-01-15'),
    (18, 'Angela Miller', 'angela.miller@example.com', '1987-09-23'),
    (19, 'Brandon Martinez', 'brandon.martinez@example.com', '1983-12-10'),
    (20, 'Grace Thomas', 'grace.thomas@example.com', '1996-08-05'),
    (21, 'Alexander Garcia', 'alexander.garcia@example.com', '1990-06-17'),
    (22, 'Mia Lee', 'mia.lee@example.com', '1994-04-22'),
    (23, 'Liam Young', 'liam.young@example.com', '1989-11-11'),
    (24, 'Zoe Hernandez', 'zoe.hernandez@example.com', '1997-02-03'),
    (25, 'Ethan Anderson', 'ethan.anderson@example.com', '1985-10-27');

--Inserting data into ticket table
INSERT INTO ticket (ticket_id, expo_id, attendee_id, ticket_type, ticket_price) VALUES 
    (1, 1, 1, 'Single Day', 50.00),
    (2, 1, 2, 'Super-fan', 100.00),
    (3, 1, 3, 'Double Day', 80.00),

    (4, 2, 4, 'Single Day', 60.00),
    (5, 2, 5, 'Super-fan', 110.00),
    (6, 2, 6, 'Double Day', 90.00),

    (7, 3, 7, 'Single Day', 55.00),
    (8, 3, 8, 'Super-fan', 105.00),
    (9, 3, 9, 'Double Day', 85.00),
	(10, 3, 10, 'Single Day', 50.00),
    
	(11, 4, 11, 'Super-fan', 100.00),
    (12, 4, 12, 'Double Day', 80.00),

    (13, 5, 13, 'Single Day', 60.00),
    (14, 5, 14, 'Super-fan', 110.00),
    (15, 5, 15, 'Double Day', 90.00),

    (16, 6, 16, 'Single Day', 55.00),
    (17, 6, 17, 'Super-fan', 105.00),

    (18, 7, 18, 'Double Day', 85.00),
    (19, 7, 19, 'Single Day', 50.00),
    (20, 7, 20, 'Super-fan', 100.00),
    (21, 7, 21, 'Double Day', 80.00),

    (22, 8, 22, 'Single Day', 20.00),
    (23, 8, 23, 'Super-fan', 50.00),
    (24, 8, 24, 'Double Day', 35.00),

    (25, 9, 25, 'Single Day', 25.00),
    (26, 9, 1, 'Super-fan', 55.00),
    (27, 9, 2, 'Double Day', 40.00),

    (28, 10, 8, 'Single Day', 22.00),
    (29, 10, 9, 'Super-fan', 60.00),
    (30, 10, 3, 'Double Day', 45.00),

	(31, 1, 7, 'Double Day', 80.00),
    (32, 1, 2, 'Super-fan', 100.00),
    (33, 1, 14, 'Double Day', 80.00);
   

--Inserting data into payment table
INSERT INTO payment (payment_id, attendee_id, payment_amount, payment_method, payment_date)
VALUES
	(1, 1, 50.00, 'Credit Card', '2023-01-15'),
	(2, 2, 25.00, 'Cash', '2023-02-20'),
	(3, 3, 75.00, 'PayPal', '2023-03-10'),
	(4, 4, 30.00, 'Credit Card', '2023-04-05'),
	(5, 5, 40.00, 'Cash', '2023-05-12'),
	(6, 6, 60.00, 'PayPal', '2023-06-18'),
	(7,7, 25.00, 'Credit Card', '2023-07-25'),
	(8, 8, 55.00, 'Cash', '2023-08-30'),
	(9, 9, 70.00, 'PayPal', '2023-09-08'),
	(10, 10, 45.00, 'Credit Card', '2023-10-14'),
	(11, 11, 80.00, 'Cash', '2023-11-20'),
	(12, 12, 35.00, 'Credit Card', '2023-01-20'),
    (13, 13, 30.00, 'Cash', '2023-02-25'),
    (14, 14, 65.00, 'PayPal', '2023-03-15'),
    (15, 15, 55.00, 'Credit Card', '2023-04-10'),
    (16, 16, 45.00, 'Cash', '2023-05-15'),
    (17, 17, 50.00, 'PayPal', '2023-06-20'),
    (18, 18, 60.00, 'Credit Card', '2023-07-26'),
    (19, 19, 40.00, 'Cash', '2023-08-31'),
    (20, 20, 70.00, 'PayPal', '2023-09-09'),
    (21, 21, 85.00, 'Credit Card', '2023-10-15'),
    (22, 22, 20.00, 'Cash', '2023-11-21'),
    (23, 23, 95.00, 'PayPal', '2023-12-05'),
    (24, 24, 60.00, 'Credit Card', '2023-12-10'),
    (25, 25, 55.00, 'Cash', '2023-12-15');

 
--inserting data into stall table
INSERT INTO stall (stall_id, expo_id, booth_number, stall_size) VALUES 
    -- Expo 1 stalls
    (1, 1, 'A101', 'small'),
    (2, 1, 'B102', 'medium'),
    (3, 1, 'D103', 'large'),
    (4, 1, 'B104', 'small'),
    (5, 1, 'A105', 'medium'),
    (6, 1, 'C106', 'large'),
    (7, 1, 'A107', 'small'),
    (8, 1, 'B101', 'small'),
    (9, 1, 'B102', 'medium'),
    (10, 1, 'B103', 'large'),
    (11, 1, 'A104', 'small'),
    (12, 1, 'C105', 'medium'),
    (13, 1, 'E106', 'large'),
    (14, 1, 'B107', 'small'),
    (15, 1, 'B108', 'medium'),

    -- Expo 2 stalls
    (16, 2, 'C101', 'small'),
    (17, 2, 'C102', 'medium'),
    (18, 2, 'A103', 'large'),
    (19, 2, 'C104', 'small'),
    (20, 2, 'C105', 'medium'),
    (21, 2, 'B106', 'large'),
    (22, 2, 'D107', 'small'),
    (23, 2, 'C108', 'medium'),
    (24, 2, 'A109', 'large'),
    (25, 2, 'D101', 'small'),
    (26, 2, 'A102', 'medium'),
    (27, 2, 'D103', 'large'),
    (28, 2, 'C104', 'small'),
    (29, 2, 'D105', 'medium'),
    (30, 2, 'A106', 'large'),

    -- Expo 3 stalls
    (31, 3, 'D107', 'small'),
	(32, 3, 'D108', 'medium'),

    -- Expo 4 stalls
    (33, 4, 'D109', 'large'),
    (34, 4, 'A108', 'small'),
    (35, 4, 'A109', 'medium'),
    (36, 4, 'A110', 'large'),

    -- Expo 5 stalls
    (37, 5, 'B109', 'small'),
    (38, 5, 'B110', 'medium'),
    (39, 5, 'C110', 'large'),
    (40, 5, 'D110', 'small'),

    -- Expo 6 stalls
    (41, 6, 'A111', 'small'),
    (42, 6, 'A112', 'medium'),
    (43, 6, 'B111', 'large'),

    -- Expo 7 stalls
    (44, 7, 'B112', 'small'),
    (45, 7, 'C111', 'medium'),
    (46, 7, 'C112', 'large'),
    (47, 7, 'D111', 'small'),

    -- Expo 8 stalls
    (48, 8, 'D112', 'medium'),
    (49, 8, 'A113', 'large'),
    (50, 8, 'A114', 'small'),
    (51, 8, 'B113', 'medium'),

    -- Expo 9 stalls
    (52, 9, 'B114', 'large'),
    (53, 9, 'C113', 'small'),
    (54, 9, 'C114', 'medium'),
    (55, 9, 'D113', 'large'),
    (56, 9, 'D114', 'small'),

    -- Expo 10 stalls
    (57, 10, 'A115', 'medium'),
    (58, 10, 'A116', 'large'),
    (59, 10, 'B115', 'small'),
    (60, 10, 'B116', 'medium');


--inserting data into staff table
INSERT INTO staff (staff_id, stall_id, staff_name, staff_email) VALUES 
(1, 1, 'John Doe', 'john.doe@example.com'),
(2, 1, 'Jane Smith', 'jane.smith@example.com'),
(3, 2, 'Emily Johnson', 'emily.johnson@example.com'),
(4, 3, 'Michael Brown', 'michael.brown@example.com'),
(5, 3, 'Sarah Davis', 'sarah.davis@example.com'),
(6, 4, 'William Taylor', 'william.taylor@example.com'),
(7, 4, 'Emma Thomas', 'emma.thomas@example.com'),
(8, 5, 'Lucas Anderson', 'lucas.anderson@example.com'),
(9, 6, 'Mia Hernandez', 'mia.hernandez@example.com'),
(10, 6, 'Noah Moore', 'noah.moore@example.com'),
(11, 7, 'Ava Martin', 'ava.martin@example.com'),
(12, 8, 'Olivia Lee', 'olivia.lee@example.com'),
(13, 8, 'Ethan Perez', 'ethan.perez@example.com'),
(14, 9, 'Charlotte Walker', 'charlotte.walker@example.com'),
(15, 10, 'Alexander Hall', 'alexander.hall@example.com'),
(16, 10, 'Amelia Young', 'amelia.young@example.com'),
(17, 11, 'Harper King', 'harper.king@example.com'),
(18, 12, 'Evelyn Wright', 'evelyn.wright@example.com'),
(19, 12, 'James Scott', 'james.scott@example.com'),
(20, 13, 'Abigail Adams', 'abigail.adams@example.com'),
(21, 14, 'Benjamin Green', 'benjamin.green@example.com'),
(22, 14, 'Lily Baker', 'lily.baker@example.com'),
(23, 15, 'Zoe Nelson', 'zoe.nelson@example.com'),
(24, 16, 'Logan Carter', 'logan.carter@example.com'),
(25, 16, 'Avery Mitchell', 'avery.mitchell@example.com'),
(26, 17, 'Elijah Roberts', 'elijah.roberts@example.com'),
(27, 18, 'Chloe Campbell', 'chloe.campbell@example.com'),
(28, 18, 'Daniel Lee', 'daniel.lee@example.com'),
(29, 19, 'Grace Parker', 'grace.parker@example.com'),
(30, 20, 'Jack Turner', 'jack.turner@example.com'),
(31, 20, 'Sophie Phillips', 'sophie.phillips@example.com'),
(32, 21, 'Victoria Clark', 'victoria.clark@example.com'),
(33, 21, 'Aiden Lewis', 'aiden.lewis@example.com'),
(34, 22, 'Gabriella Robinson', 'gabriella.robinson@example.com'),
(35, 23, 'Joseph Kim', 'joseph.kim@example.com'),
(36, 23, 'Brooklyn Hill', 'brooklyn.hill@example.com'),
(37, 24, 'Samuel Lee', 'samuel.lee@example.com'),
(38, 25, 'Hailey Martinez', 'hailey.martinez@example.com'),
(39, 25, 'David Young', 'david.young@example.com'),
(40, 26, 'Nathan Allen', 'nathan.allen@example.com'),
(41, 27, 'Penelope King', 'penelope.king@example.com'),
(42, 27, 'Carter Wright', 'carter.wright@example.com'),
(43, 28, 'Layla Scott', 'layla.scott@example.com'),
(44, 29, 'Anthony Johnson', 'anthony.johnson@example.com'),
(45, 29, 'Scarlett Baker', 'scarlett.baker@example.com'),
(46, 30, 'Julian Torres', 'julian.torres@example.com'),
(47, 31, 'Maya Evans', 'maya.evans@example.com'),
(48, 31, 'Lucas Martinez', 'lucas.martinez@example.com'),
(49, 32, 'Camila Nelson', 'camila.nelson@example.com'),
(50, 33, 'Andrew Collins', 'andrew.collins@example.com'),
(51, 33, 'Eliana Ramirez', 'eliana.ramirez@example.com'),
(52, 34, 'Charlotte Rivera', 'charlotte.rivera@example.com'),
(53, 35, 'Henry Martinez', 'henry.martinez@example.com'),
(54, 35, 'Zoey Edwards', 'zoey.edwards@example.com'),
(55, 36, 'Evelyn Murphy', 'evelyn.murphy@example.com'),
(56, 37, 'Ryan Gonzalez', 'ryan.gonzalez@example.com'),
(57, 37, 'Leah Thompson', 'leah.thompson@example.com'),
(58, 38, 'Madeline Perez', 'madeline.perez@example.com'),
(59, 39, 'Joshua Garcia', 'joshua.garcia@example.com'),
(60, 39, 'Audrey Lee', 'audrey.lee@example.com'),
(61, 40, 'Isabella Walker', 'isabella.walker@example.com');

--inserting data into inventory table
INSERT INTO inventory (inventory_id, stall_id, item_description, item_quantity) VALUES 
	(1, 1, 'Smartphone Case - Black', 100),
	(2, 2, 'Laptop Backpack - 15-inch', 150),
	(3, 3, 'Wireless Bluetooth Earbuds', 200),
	(4, 4, 'Stainless Steel Water Bottle', 250),
	(5, 5, 'LED Desk Lamp - Adjustable', 300),
	(6, 6, 'Home Theater Sound System', 350),
	(7, 7, 'Digital Camera - 20MP', 400),
	(8, 8, 'Coffee Maker - Programmable', 450),
	(9, 9, 'Fitness Tracker Watch', 500),
	(10, 10, 'Smart TV - 55-inch 4K', 550),
	(11, 11, 'Electric Kettle - Fast Boiling', 60),
    (12, 12, 'Gaming Mouse - Wireless', 120),
    (13, 13, 'Portable Bluetooth Speaker', 180),
    (14, 14, 'Ergonomic Office Chair', 240),
    (15, 15, 'Wireless Phone Charger', 300),
    (16, 16, 'Tablet - 10-inch Screen', 360),
    (17, 17, 'Noise-Cancelling Headphones', 420),
    (18, 18, 'Electric Toothbrush', 480),
    (19, 19, 'Gaming Keyboard - Mechanical', 540),
    (20, 20, 'Action Camera - Waterproof', 600),
    (21, 21, 'Smartwatch - Latest Model', 110),
    (22, 22, 'VR Headset - Immersive Experience', 170),
    (23, 23, 'E-Reader - High-Resolution', 230),
    (24, 24, 'Drone with Camera - HD', 290),
    (25, 25, 'Fitness Yoga Mat', 350),
    (26, 26, 'Compact Binoculars', 410),
    (27, 27, 'Handheld Game Console', 470),
    (28, 28, 'Robotic Vacuum Cleaner', 530),
    (29, 29, 'Smart Indoor Garden Kit', 590),
    (30, 30, 'Electric Skateboard', 650),
    (31, 31, 'Travel Pillow - Memory Foam', 100),
    (32, 32, 'Outdoor Camping Tent', 160),
    (33, 33, 'Wireless Security Camera', 220),
    (34, 34, 'Book Reader Light', 280),
    (35, 35, 'Digital Drawing Tablet', 340),
    (36, 36, 'Bluetooth Record Player', 400),
    (37, 37, 'Smart Lock - Keyless Entry', 460),
    (38, 38, 'Digital Food Scale', 520),
    (39, 39, 'Weather Station - Wireless', 580),
    (40, 40, 'Solar-Powered Charger', 640);
 
--Inserting data into panel table
INSERT INTO panel (panel_id, expo_id, panel_start_time, panel_end_time) VALUES 
    (1, 1, '2023-07-01 10:00:00', '2023-07-01 11:00:00'),
    (2, 1, '2023-07-01 12:00:00', '2023-07-01 15:00:00'),
    (3, 1, '2023-07-01 14:00:00', '2023-07-01 15:00:00'),
    (4, 1, '2023-07-01 16:00:00', '2023-07-01 17:20:00'),
    (5, 1, '2023-07-01 18:00:00', '2023-07-01 19:00:00'),
    (6, 2, '2023-07-02 10:00:00', '2023-07-02 19:00:00'),
    (7, 2, '2023-07-02 12:00:00', '2023-07-02 13:00:00'),
    (8, 2, '2023-07-02 14:00:00', '2023-07-02 17:00:00'),
    (9, 2, '2023-07-02 16:00:00', '2023-07-02 17:50:00'),
    (10, 2, '2023-07-02 18:00:00', '2023-07-02 19:00:00'),
	(11, 3, '2023-07-03 10:00:00', '2023-07-03 11:40:00'),
    (12, 4, '2023-07-04 10:00:00', '2023-07-04 11:50:00'),
    (13, 5, '2023-07-05 10:00:00', '2023-07-05 11:50:00'),
    (14, 6, '2023-07-06 10:00:00', '2023-07-06 11:55:00'),
    (15, 7, '2023-07-07 10:00:00', '2023-07-07 11:00:00'),
    (16, 8, '2023-07-08 10:00:00', '2023-07-08 11:00:00'),
    (17, 9, '2023-07-09 10:00:00', '2023-07-09 11:00:00'),
    (18, 10, '2023-07-10 10:00:00', '2023-07-10 11:00:00'),
    (19, 1, '2023-07-01 20:00:00', '2023-07-01 21:00:00'),
    (20, 1, '2023-07-01 22:00:00', '2023-07-01 23:00:00'),
    (21, 2, '2023-07-02 20:00:00', '2023-07-02 21:00:00'),
    (22, 3, '2023-07-03 12:00:00', '2023-07-03 13:00:00'),
    (23, 3, '2023-07-03 14:00:00', '2023-07-03 15:00:00'),
    (24, 4, '2023-07-04 12:00:00', '2023-07-04 13:00:00'),
    (25, 5, '2023-07-05 12:00:00', '2023-07-05 13:00:00'),
    (26, 6, '2023-07-06 12:00:00', '2023-07-06 14:20:00'),
    (27, 6, '2023-07-06 14:00:00', '2023-07-06 15:00:00'),
    (28, 6, '2023-07-06 16:00:00', '2023-07-06 17:00:00'),
    (29, 7, '2023-07-07 12:00:00', '2023-07-07 13:00:00'),
    (30, 8, '2023-07-08 12:00:00', '2023-07-08 13:00:00'),
    (31, 9, '2023-07-09 12:00:00', '2023-07-09 13:00:00'),
    (32, 10, '2023-07-10 12:00:00', '2023-07-10 13:00:00'),
    (33, 10, '2023-07-10 14:00:00', '2023-07-10 15:00:00'),
    (34, 8, '2023-07-08 14:00:00', '2023-07-08 15:00:00'),
    (35, 8, '2023-07-08 16:00:00', '2023-07-08 17:00:00'),
    (36, 8, '2023-07-08 18:00:00', '2023-07-08 19:00:00');


--Inserting data into artist table
INSERT INTO artist (artist_id, panel_id, artist_name, genre, artist_email, artist_phone) VALUES 
	(1, 1, 'Evelyn Hart', 'Superhero', 'evelyn.hart@example.com', '123-456-7890'),
	(2, 2, 'Leo Goodman', 'Fantasy', 'leo.goodman@example.com', '123-456-7891'),
	(3, 3, 'Adrianne Low', 'Science Fiction', 'adrianne.low@example.com', '123-456-7892'),
	(4, 4, 'Marcus Reid', 'Horror', 'marcus.reid@example.com', '123-456-7893'),
	(5, 5, 'Tanya Burke', 'Mystery', 'tanya.burke@example.com', '123-456-7894'),
	(6, 6, 'Samuel Tate', 'Thriller', 'samuel.tate@example.com', '123-456-7895'),
	(7, 7, 'Christina Yang', 'Romance', 'christina.yang@example.com', '123-456-7896'),
	(8, 8, 'Oscar Dunn', 'Adventure', 'oscar.dunn@example.com', '123-456-7897'),
	(9, 9, 'Sophia Miles', 'Slice of Life', 'sophia.miles@example.com', '123-456-7898'),
	(10, 10, 'Lucas Grant', 'Historical', 'lucas.grant@example.com', '123-456-7899'),
	(11, 1, 'Anna Rivera', 'Superhero', 'anna.rivera@example.com', '234-567-8901'),
    (12, 2, 'Peter Johnson', 'Fantasy', 'peter.johnson@example.com', '345-678-9012'),
    (13, 3, 'Sarah Miller', 'Science Fiction', 'sarah.miller@example.com', '456-789-0123'),
    (14, 4, 'Thomas Hall', 'Horror', 'thomas.hall@example.com', '567-890-1234'),
    (15, 5, 'Emily White', 'Mystery', 'emily.white@example.com', '678-901-2345'),
    (16, 6, 'David Clark', 'Thriller', 'david.clark@example.com', '789-012-3456'),
    (17, 7, 'Rachel Green', 'Romance', 'rachel.green@example.com', '890-123-4567'),
    (18, 8, 'Nathan Brooks', 'Adventure', 'nathan.brooks@example.com', '901-234-5678'),
    (19, 9, 'Jessica Fox', 'Slice of Life', 'jessica.fox@example.com', '012-345-6789'),
    (20, 10, 'Amelia Brown', 'Historical', 'amelia.brown@example.com', '123-456-7890'),
    (21, 11, 'Benjamin Wright', 'Superhero', 'benjamin.wright@example.com', '234-567-8901'),
    (22, 11, 'Katie Johnson', 'Superhero', 'katie.johnson@example.com', '345-678-9012'),
    (23, 12, 'Michael Smith', 'Fantasy', 'michael.smith@example.com', '456-789-0123'),
    (24, 13, 'Sophie Davis', 'Science Fiction', 'sophie.davis@example.com', '567-890-1234'),
    (25, 13, 'Oliver Taylor', 'Science Fiction', 'oliver.taylor@example.com', '678-901-2345'),
    (26, 14, 'Megan Lewis', 'Horror', 'megan.lewis@example.com', '789-012-3456'),
    (27, 15, 'Ryan Martin', 'Mystery', 'ryan.martin@example.com', '890-123-4567'),
    (28, 16, 'Isla Allen', 'Thriller', 'isla.allen@example.com', '901-234-5678'),
    (29, 17, 'Aaron Scott', 'Romance', 'aaron.scott@example.com', '012-345-6789'),
    (30, 18, 'Charlotte Hall', 'Adventure', 'charlotte.hall@example.com', '123-456-7890');
    

--inserting data into sponsor_role table
INSERT INTO sponsor_role (role_id, role_name)
VALUES
('R01', 'Platinum Sponsor'),
('R02', 'Gold Sponsor'),
('R03', 'Silver Sponsor'),
('R04', 'Community Partner'),
('R05', 'Technology Partner'),
('R06', 'Media Partner'),
('R07', 'Educational Partner'),
('R08', 'Exhibition Sponsor'),
('R09', 'Event Sponsor'),
('R10', 'Main Stage Sponsor');

--Inserting data into sponsor table
INSERT INTO sponsor (sponsor_id, role_id, expo_id, sponsor_name, sponsor_description)
VALUES
('S001', 'R01', 1, 'Wayne Enterprises', 'Leading technology innovator and major sponsor of comic events.'),
('S002', 'R04', 1, 'Queen Consolidated', 'Pioneers in clean energy and enthusiastic supporters of cultural expos.'),
('S003', 'R03', 1, 'LuthorCorp', 'International conglomerate with a key interest in metahuman studies.'),
('S004', 'R06', 1, 'Stark Industries', 'Advanced technology and weapons developer, frequent expo headliner.'),
('S005', 'R02', 1, 'Pym Technologies', 'Nanotech and biochem trailblazers, bringing the future to today.'),

('S006', 'R01', 2, 'Oscorp', 'Leading chemical suppliers, supporting innovation in science and technology.'),
('S007', 'R10', 2, 'Rand Enterprises', 'Multinational corporation dedicated to bettering the world through commerce.'),
('S008', 'R03', 2, 'Roxxon Energy', 'A powerhouse in the energy sector, investing in tomorrow¡¯s energy today.'),
('S009', 'R05', 2, 'Kord Industries', 'An industry leader in technological research and development.'),
('S010', 'R02', 2, 'Palmer Technologies', 'Focused on breakthroughs in advanced tech and expanding human potential.'),
('S011', 'R02', 2, 'Daly Planet', 'The first name in news, bringing the stories of tomorrow to today¡¯s readers.'),

('S012', 'R02', 3, 'Moira Industries', 'Innovators in the field of environmental sustainability and eco-friendly technologies.'),
('S013', 'R03', 3, 'Frost International', 'A cool-headed company leading the way in medical and cryogenic research.'),
('S014', 'R01', 3, 'Jitters Coffee', 'Serving up the hottest brews and coolest events as a proud expo sponsor.'),

('S015', 'R08', 4, 'Big Belly Burger', 'Feeding the masses with the best burgers in town at every major expo.'),
('S016', 'R04', 4, 'Acme Corp', 'From rockets to anvils, Acme is the name in outlandish products and a proud sponsor of innovation.'),
('S017', 'R02', 4, 'Nakatomi Trading', 'Global trading firm and enthusiastic participant in international expos.'),
('S018', 'R09', 4, 'Tyrell Corporation', 'Advancing robotics and artificial intelligence to the edge of possibility.'),
('S019', 'R01', 4, 'Bl¨¹dhaven Shipping', 'Ensuring secure transport and logistics services, now entering the expo scene.'),
('S020', 'R02', 4, 'Fisk Enterprises', 'A corporation with its hands in city development and a major backer of cultural events.'),

('S021', 'R01', 5, 'ZiffCorp', 'Tech media giant and a leading sponsor of tech expos.'),
('S022', 'R02', 5, 'Planet Express', 'Intergalactic delivery service and regular feature at space-themed expos.'),
('S023', 'R10', 5, 'MomCorp', 'Friendly face of corporate robotics, making life easier for all.'),
('S024', 'R01', 5, 'Weyland-Yutani', 'Building better worlds and now contributing to the expo world.'),

('S025', 'R05', 6, 'Vehicon Motors', 'Automotive pioneers at the cutting edge, driving into the future of expos.'),
('S026', 'R07', 6, 'Soylent Corp', 'Revolutionizing food technology and sharing their vision at expos.'),
('S027', 'R02', 6, 'Initech', 'Software solutions provider, coding the way to a better tomorrow.'),
('S028', 'R03', 6, 'Cyberdyne Systems', 'Creating cybernetic and defense solutions for a new age.'),
('S029', 'R01', 6, 'Globex Corporation', 'An international conglomerate with a hand in every pie, including expos.'),
('S030', 'R04', 6, 'CHOAM', 'Controlling the flow of spice and ideas across expos galaxy-wide.'),

('S031', 'R01', 7, 'VersaLife', 'Biotech firm working on the cutting edge of human enhancement.'),
('S032', 'R02', 7, 'Wayne Biotech', 'Advancing medical science and proud sponsors of health and science expos.'),

('S033', 'R03', 8, 'Isotopes', 'Sports team stepping out to sponsor community events and expos.'),
('S034', 'R01', 8, 'Clampett Oil', 'Fueling cars and ideas, now fueling the expo experience.'),
('S035', 'R09', 8, 'The Android¡¯s Dungeon', 'Comic book store turned sponsor, bringing fantasy to life.'),
('S036', 'R06', 8, 'Duff Brewing Company', 'Brewers of everyone¡¯s favorite beer, now hosting the best expo stands.'),
('S037', 'R08', 8, 'Vulcan Science Academy', 'From theoretical science to practical applications, they¡¯re now exploring expos.'),
('S038', 'R04', 8, 'Warnerstock Industries', 'A multinational corporation with a heart for the arts.'),
('S039', 'R01', 8, 'Hammock Complex', 'Experts in relaxation, bringing comfort to expos everywhere.'),
('S040', 'R02', 8, 'Krusty Krab', 'The best fast food under the sea, now over at the expo.'),

('S041', 'R01', 9, 'Sirius Cybernetics Corporation', 'Makers of genuinely people-oriented robots.'),
('S042', 'R02', 9, 'Spacely Sprockets', 'The future of sprocket technology and a key player in space expos.'),
('S043', 'R03', 9, 'Cackleburger', 'The chicken burger chain that¡¯s taking over the fast-food world and expo food courts.'),
('S044', 'R07', 9, 'Primatech Paper Co.', 'Your ordinary paper company with an extraordinary interest in expos.'),

('S045', 'R02', 10, 'Ollivander¡¯s Wand Shop', 'Providing magical experiences and products to wizarding expos.'),
('S046', 'R01', 10, 'Wonka Industries', 'Imagination and sweets meet technology at the expo.'),
('S047', 'R05', 10, 'The Daily Bugle', 'The first in news and now sponsoring the latest in expos.'),
('S048', 'R03', 10, 'BiffCo Enterprises', 'A company looking towards the future and the past in the expo world.'),
('S049', 'R08', 10, 'Hooli', 'Tech company known for innovation and for sponsoring leading tech expos.'),
('S050', 'R10', 10, 'Pied Piper', 'Compression experts expanding their presence into expos.');