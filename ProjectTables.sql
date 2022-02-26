--SELECT * FROM USER_TABLES;
DROP TABLE Pilot_Table;
DROP TABLE Flight_Marshal_Table;
DROP TABLE Flight_Attendant_Table;
DROP TABLE Employee_Schedule_Table;
DROP TABLE Employee_Table;
DROP TABLE Ticket_Table;
DROP TABLE Review_Table;
DROP TABLE Flight_Table;
DROP TABLE Plane_Table;
DROP TABLE Phone_Number_Table;
DROP TABLE Customer_Table;

CREATE TABLE Customer_Table (
    Customer_ID INT NOT NULL,
    First_Name VARCHAR(20) NOT NULL,
    Last_Name VARCHAR(20) NOT NULL,
    Email_Address VARCHAR(30),
    Rewards_Member CHAR(1) NOT NULL 
        CHECK (Rewards_Member IN ('T','F')),
    CONSTRAINT Customer_PK PRIMARY KEY (Customer_ID)
);

CREATE TABLE Phone_Number_Table (
    Customer_ID INT NOT NULL,
    Telephone_Number VARCHAR(20) NOT NULL,
    CONSTRAINT Phone_Number_PK PRIMARY KEY (Customer_ID, Telephone_Number),
    CONSTRAINT Phone_Number_FK FOREIGN KEY (Customer_ID) 
        REFERENCES Customer_Table(Customer_ID)
);

CREATE TABLE Plane_Table (
    Plane_ID INT NOT NULL,
    Plane_Model VARCHAR(20),
    Plane_Capacity INT,
    Age INT,
    --max digits in number (precision) is 10, we want 2 decimal places (scale)
    Fuel_Economy NUMBER(10, 2), 
    CONSTRAINT Plane_PK PRIMARY KEY (Plane_ID)
);

CREATE TABLE Flight_Table (
    Flight_Number INT NOT NULL,
    Plane_ID INT NOT NULL,
    Seats_Occupied INT,
    Origin VARCHAR(20) NOT NULL,
    Destination VARCHAR(20) NOT NULL,
    --Determined Distance should NOT go in separate table, non-key attributes 
    --Origin and Destination not unique or primary keys.
    Distance NUMBER(10, 2), 
    Departure_Time TIMESTAMP, -- format is 'YYYY-MM-DD HH(24):MI:SS.FF'
    ETA TIMESTAMP,
    Fuel_Consumption NUMBER(10, 2),
    CONSTRAINT Flight_PK PRIMARY KEY (Flight_Number),
    CONSTRAINT Flight_FK FOREIGN KEY (Plane_ID) REFERENCES Plane_Table(Plane_ID)
);

CREATE TABLE Review_Table (
    Flight_Number INT NOT NULL,
    Customer_ID INT NOT NULL,
    Star_Review INT NOT NULL,
    CONSTRAINT Review_PK PRIMARY KEY (Flight_Number, Customer_ID),
    CONSTRAINT Review_FK2 FOREIGN KEY (Flight_Number) 
        REFERENCES Flight_Table(Flight_Number),
    CONSTRAINT Review_FK1 FOREIGN KEY (Customer_ID) 
        REFERENCES Customer_Table(Customer_ID)
);

CREATE TABLE Ticket_Table (
    Ticket_Number INT NOT NULL,
    Customer_ID INT NOT NULL,
    Flight_Number INT NOT NULL,
    Luggage CHAR(1) CHECK (Luggage IN ('T','F')),
    Wifi CHAR(1) CHECK (Wifi IN ('T', 'F')),
    Food CHAR(1) CHECK (Food IN ('T', 'F')),
    CONSTRAINT Ticket_PK PRIMARY KEY (Ticket_Number),
    CONSTRAINT Ticket_FK1 FOREIGN KEY (Customer_ID) 
        REFERENCES Customer_Table(Customer_ID),
    CONSTRAINT Ticket_FK2 FOREIGN KEY (Flight_Number) 
        REFERENCES Flight_Table(Flight_Number)
);

CREATE TABLE Employee_Table (
    Employee_ID INT NOT NULL,
    First_Name VARCHAR(20) NOT NULL,
    Last_Name VARCHAR(20) NOT NULL,
    Salary NUMBER(10, 2),
    Hours_Week INT,
    Employee_Type VARCHAR(10) 
        CHECK (Employee_Type IN ('Attendant','Marshal', 'Pilot')),
    CONSTRAINT Employee_PK PRIMARY KEY (Employee_ID)
);

CREATE TABLE Employee_Schedule_Table (
    Flight_Number INT NOT NULL,
    Employee_ID INT NOT NULL,
    CONSTRAINT Employee_Schedule_PK PRIMARY KEY (Flight_Number, Employee_ID),
    CONSTRAINT Employee_Schedule_FK1 FOREIGN KEY (Flight_Number) 
        REFERENCES Flight_Table(Flight_Number),
    CONSTRAINT Employee_Schedule_FK2 FOREIGN KEY (Employee_ID) 
        REFERENCES Employee_Table(Employee_ID)
);

CREATE TABLE Flight_Attendant_Table (
    Employee_ID INT NOT NULL,
    Flight_Miles INT,
    CONSTRAINT Flight_Attendant_PK PRIMARY KEY (Employee_ID),
    CONSTRAINT Flight_Attendant_FK FOREIGN KEY (Employee_ID)
        REFERENCES Employee_Table(Employee_ID)
);

CREATE TABLE Flight_Marshal_Table (
    Employee_ID INT NOT NULL,
    Badge_Number INT NOT NULL,
    CONSTRAINT Flight_Marshal_PK PRIMARY KEY (Employee_ID),
    CONSTRAINT Flight_Marshal_FK FOREIGN KEY (Employee_ID)
        REFERENCES Employee_Table(Employee_ID)
);

CREATE TABLE Pilot_Table (
    Employee_ID INT NOT NULL,
    License_Number INT NOT NULL,
    Flight_Miles INT,
    CONSTRAINT Pilot_PK PRIMARY KEY (Employee_ID),
    CONSTRAINT Pilot_FK FOREIGN KEY (Employee_ID)
        REFERENCES Employee_Table(Employee_ID)
);