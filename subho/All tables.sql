CREATE TABLE Hotel (
    Hotel_no INT PRIMARY KEY,
    Name VARCHAR(255),
    Address VARCHAR(255)
);
CREATE TABLE Room (
    Room_no INT PRIMARY KEY,
    Hotel_no INT,
    Type VARCHAR(50),
    Charge DECIMAL(10, 2),
    FOREIGN KEY (Hotel_no) REFERENCES Hotel(Hotel_no)
);

CREATE TABLE Guest (
    Guest_no INT PRIMARY KEY,
    Hotel_no INT,
    Name VARCHAR(255),
    Address VARCHAR(255),
    FOREIGN KEY (Hotel_no) REFERENCES Hotel(Hotel_no)
);


CREATE TABLE Booking (
    Hotel_no INT,
    Room_no INT,
    Guest_no INT,
    Date_from DATE,
    Date_to DATE,
    PRIMARY KEY (Hotel_no, Room_no, Guest_no),
    FOREIGN KEY (Hotel_no) REFERENCES Hotel(Hotel_no),
    FOREIGN KEY (Room_no) REFERENCES Room(Room_no),
    FOREIGN KEY (Guest_no) REFERENCES Guest(Guest_no)
);
