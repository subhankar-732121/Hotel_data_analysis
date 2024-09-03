/*******************************insert the hotel data******************************** */

INSERT INTO Hotel (Hotel_no, Name, Address) VALUES
(1, 'Seaview', 'Mumbai'),
(2, 'Dolphin', 'Goa'),
(3, 'Royal Palace', 'Delhi'),
(4, 'Mountain Retreat', 'Shimla'),
(5, 'City Inn', 'Bangalore'),
(6, 'Beachside Resort', 'Goa'),
(7, 'Lakeside Hotel', 'Udaipur'),
(8, 'Grand Plaza', 'Kolkata'),
(9, 'Sunset Boulevard', 'Pondicherry'),
(10, 'Desert Mirage', 'Jaisalmer'),
(11, 'Urban Stay', 'Hyderabad'),
(12, 'Oceanside', 'Chennai'),
(13, 'Forest Lodge', 'Manali'),
(14, 'Summit Heights', 'Ooty'),
(15, 'Park View', 'Delhi');

/*******************************insert the room data******************************/
INSERT INTO Room (Room_no, Hotel_no, Type, Charge) VALUES
(101, 1, 'Single', 800),
(102, 1, 'Double', 1200),
(201, 2, 'Single', 900),
(202, 2, 'Double', 1500),
(301, 3, 'Suite', 5000),
(302, 3, 'Single', 1000),
(401, 4, 'Double', 2000),
(402, 4, 'Suite', 4500),
(501, 5, 'Single', 950),
(502, 5, 'Double', 1300),
(601, 6, 'Suite', 5500),
(602, 6, 'Single', 950),
(701, 7, 'Double', 1600),
(702, 7, 'Suite', 4800),
(801, 8, 'Single', 850);
/*****************************************insert the Guest******************************/
INSERT INTO Guest (Guest_no, Hotel_no, Name, Address) VALUES
(1, 1, 'John Doe', 'New York'),
(2, 2, 'Jane Smith', 'London'),
(3, 3, 'Robert Brown', 'Sydney'),
(4, 4, 'Emily Davis', 'Toronto'),
(5, 5, 'Michael Wilson', 'Paris'),
(6, 6, 'Sophia Johnson', 'Berlin'),
(7, 7, 'James Lee', 'Tokyo'),
(8, 8, 'Olivia Taylor', 'Melbourne'),
(9, 9, 'William Harris', 'Dubai'),
(10, 10, 'Isabella White', 'Singapore'),
(11, 11, 'David Clark', 'Rome'),
(12, 12, 'Ava Lewis', 'Madrid'),
(13, 13, 'Mia Walker', 'Bangkok'),
(14, 14, 'Ethan Hall', 'Hong Kong'),
(15, 15, 'Amelia Young', 'Delhi');

/*****************************************insert booking table*********************************/
INSERT INTO Booking (Hotel_no, Room_no, Guest_no, Date_from, Date_to) VALUES
(1, 101, 1, '2024-09-01', '2024-09-05'),
(2, 201, 2, '2024-08-28', '2024-09-03'),
(3, 301, 3, '2024-09-02', '2024-09-07'),
(4, 401, 4, '2024-09-01', '2024-09-05'),
(5, 501, 5, '2024-09-03', '2024-09-10'),
(6, 601, 6, '2024-09-01', '2024-09-06'),
(7, 701, 7, '2024-09-02', '2024-09-07'),
(8, 801, 8, '2024-09-01', '2024-09-04'),
(2, 202, 9, '2024-08-30', '2024-09-05'), 
(2, 202, 10, '2024-09-01', '2024-09-06'),  
(2, 202, 11, '2024-08-31', '2024-09-05'),  
(3, 302, 12, '2024-09-02', '2024-09-08'), 
(3, 302, 13, '2024-09-01', '2024-09-05'),  
(4, 402, 14, '2024-09-03', '2024-09-09'),  
(5, 502, 15, '2024-09-02', '2024-09-07');  
