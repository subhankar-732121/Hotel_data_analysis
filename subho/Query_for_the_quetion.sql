select * from hotel;
select * from room;
select * from booking;
select * from guest;

/****** (1). List all the rooms that have charge below 1000 per night along with the corresponding hotel*/
SELECT Room.Room_no, Hotel.Name 
FROM Room
JOIN Hotel ON Room.Hotel_no = Hotel.Hotel_no
WHERE Room.Charge < 1000;


/****************       (2). Display the name of the guest along with the corresponding room number currently staying in
hotel ‘Seaview’***********************/

SELECT Guest.Name, Booking.Room_no 
FROM Guest
JOIN Booking ON Guest.Guest_no = Booking.Guest_no AND Guest.Hotel_no = Booking.Hotel_no
JOIN Hotel ON Hotel.Hotel_no = Guest.Hotel_no
WHERE Hotel.Name = 'Seaview'
AND Booking.Date_from <= CURDATE() AND Booking.Date_to >= CURDATE();


/****************************** 3.Display how many rooms are there in each hotel:*************************/

SELECT Hotel.Name, COUNT(Room.Room_no) AS Number_of_Rooms
FROM Room
JOIN Hotel ON Room.Hotel_no = Hotel.Hotel_no
GROUP BY Hotel.Name;
/******************** ( 4) .Display the average charge of each hotel:******************/
SELECT Hotel.Name, AVG(Room.Charge) AS Average_Charge
FROM Room
JOIN Hotel ON Room.Hotel_no = Hotel.Hotel_no
GROUP BY Hotel.Name;


/**********(5). Display number of guest present in each hotel.******************/

SELECT Hotel.Name, COUNT(DISTINCT Guest.Guest_no) AS Number_of_Guests
FROM Guest
JOIN Booking ON Guest.Guest_no = Booking.Guest_no AND Guest.Hotel_no = Booking.Hotel_no
JOIN Hotel ON Hotel.Hotel_no = Guest.Hotel_no
WHERE Booking.Date_from <= CURDATE() AND Booking.Date_to >= CURDATE()
GROUP BY Hotel.Name;

/*************(6). Which hotel has maximum charge?********************/
SELECT hotel.Hotel_no ,hotel.Name
FROM Room
JOIN Hotel ON Room.Hotel_no = Hotel.Hotel_no
ORDER BY Room.Charge DESC
LIMIT 1;
/************* (7). Display hotel name where maximum number of guests are there.***********************/
SELECT Hotel.Name, Hotel.Address 
FROM Guest
JOIN Booking ON Guest.Guest_no = Booking.Guest_no AND Guest.Hotel_no = Booking.Hotel_no
JOIN Hotel ON Hotel.Hotel_no = Guest.Hotel_no
WHERE Booking.Date_from <= CURDATE() AND Booking.Date_to >= CURDATE()
GROUP BY Hotel.Name, Hotel.Address
ORDER BY COUNT(DISTINCT Guest.Guest_no) DESC
LIMIT 1;
/***********thats all *******************/



