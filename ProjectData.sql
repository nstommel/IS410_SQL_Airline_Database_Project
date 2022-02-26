DELETE FROM Pilot_Table;
DELETE FROM Flight_Marshal_Table;
DELETE FROM Flight_Attendant_Table;
DELETE FROM Employee_Schedule_Table;
DELETE FROM Employee_Table;
DELETE FROM Ticket_Table;
DELETE FROM Review_Table;
DELETE FROM Flight_Table;
DELETE FROM Plane_Table;
DELETE FROM Phone_Number_Table;
DELETE FROM Customer_Table;

--Insert Customer entries into Customer_Table  
--Format: Customer_ID, First_Name, Last_Name, Email_Address, Rewards_Member
INSERT INTO Customer_Table VALUES(1, 'Laurence', 'Slater', 'lslater@gmail.com', 'T');
INSERT INTO Customer_Table VALUES(2, 'Leigh', 'Curry', 'lcurry@yahoo.com', 'F');
INSERT INTO Customer_Table VALUES(3, 'Elena', 'Freeman', 'efreeman@outlook.com', 'T');
INSERT INTO Customer_Table VALUES(4, 'Tracy', 'Nelson', 'tnelson@aol.com', 'F');
INSERT INTO Customer_Table VALUES(5, 'Megan', 'Estrada', 'mestrada@gmail.com', 'F');
INSERT INTO Customer_Table VALUES(6, 'Alex', 'Cole', 'acole@yahoo.com', 'T');
INSERT INTO Customer_Table VALUES(7, 'Frank', 'Obrien', 'fobrien@outlook.com', 'F');
INSERT INTO Customer_Table VALUES(8, 'Serena', 'Terry', 'sterry@aol.com', 'T');
INSERT INTO Customer_Table VALUES(9, 'Judy', 'Blair', 'jblair@gmail.com', 'T');
INSERT INTO Customer_Table VALUES(10, 'Fred', 'Robertson', 'frobertson@yahoo.com', 'F');
INSERT INTO Customer_Table VALUES(11, 'James', 'Miller', 'fmiller@yahoo.com', 'F');

--SELECT * FROM Customer_Table;

--Insert Phone Number entries into Phone_Number_Table
--Format: Customer_ID, Phone_Number
INSERT INTO Phone_Number_Table VALUES(1, '314-373-8763');
INSERT INTO Phone_Number_Table VALUES(1, '262-833-3277');
INSERT INTO Phone_Number_Table VALUES(2, '316-352-2197');
INSERT INTO Phone_Number_Table VALUES(3, '419-956-3252');
INSERT INTO Phone_Number_Table VALUES(3, '762-245-1884');
INSERT INTO Phone_Number_Table VALUES(4, '774-414-5184');
INSERT INTO Phone_Number_Table VALUES(5, '509-773-8365');
INSERT INTO Phone_Number_Table VALUES(5, '515-893-1045');
INSERT INTO Phone_Number_Table VALUES(6, '253-948-6021');
INSERT INTO Phone_Number_Table VALUES(7, '727-860-2460');
INSERT INTO Phone_Number_Table VALUES(7, '254-624-6078');
INSERT INTO Phone_Number_Table VALUES(8, '434-308-1694');
INSERT INTO Phone_Number_Table VALUES(9, '412-849-6895');
INSERT INTO Phone_Number_Table VALUES(9, '570-865-1217');
INSERT INTO Phone_Number_Table VALUES(10, '207-373-1953');

--SELECT * FROM Phone_Number_Table;

--Insert Plane entries into Plane_Table
--Data from https://en.wikipedia.org/wiki/Fuel_economy_in_aircraft
--Format: Plane_ID, Plane_Model, Plane_Capacity, Age, Fuel_Economy (in mpg per seat)
INSERT INTO Plane_Table VALUES(1, 'Airbus A319', 124, 8, 80);
INSERT INTO Plane_Table VALUES(2, 'Airbus A319', 124, 10, 80);
INSERT INTO Plane_Table VALUES(3, 'Boeing 737 Max-7', 140, 5, 121);
INSERT INTO Plane_Table VALUES(4, 'Boeing 737 Max-7', 140, 6, 121);
INSERT INTO Plane_Table VALUES(5, 'Boeing 737 Max-7', 140, 4, 121);
INSERT INTO Plane_Table VALUES(6, 'Airbus A220-300', 135, 7, 127);
INSERT INTO Plane_Table VALUES(7, 'Airbus A220-300', 135, 9, 127);
INSERT INTO Plane_Table VALUES(8, 'Airbus A340-300', 262, 15, 79);
INSERT INTO Plane_Table VALUES(9, 'Boeing 787-8', 238, 10, 88);
INSERT INTO Plane_Table VALUES(10, 'Boeing 787-8', 238, 11, 88);

--SELECT * FROM Plane_Table;

--Insert Flight entries into Flight_Table
--Data from https://www.airfarewatchdog.com/blog/44259160/these-are-the-10-busiest-air-routes-in-the-u-s/
--Format: Flight_Number, Plane_ID, Seats_Occupied, Origin, Destination, Distance, 
--Departure_Time, ETA, Fuel_Consumption
INSERT INTO Flight_Table VALUES(1, 2, 120, 'Atlanta', 'New York City', 866.20, 
    TIMESTAMP '2021-4-3 11:30:00.00 EST', TIMESTAMP '2021-4-3 13:45:00.00 EST', 8100);
INSERT INTO Flight_Table VALUES(2, 10, 234, 'Los Angeles', 'New York City', 2789.4,
    TIMESTAMP '2021-4-2 8:00:00.00 EST', TIMESTAMP '2021-4-2 13:11:00.00 EST', 18660);
INSERT INTO Flight_Table VALUES(3, 7, 127, 'Atlanta', 'Miami', 639.8,
    TIMESTAMP '2021-4-4 14:30:00.00 EST', TIMESTAMP '2021-4-4 16:20:00.00 EST', 6600); 
INSERT INTO Flight_Table VALUES(4, 5, 139, 'Denver', 'Los Angeles', 1016.7,
    TIMESTAMP '2021-4-3 7:00:00.00 EST', TIMESTAMP '2021-4-3 9:33:00.00 EST', 9180);
INSERT INTO Flight_Table VALUES(5, 3, 122, 'Los Angeles', 'Seattle', 1135.1,
    TIMESTAMP '2021-4-2 14:30:00.00 EST', TIMESTAMP '2021-4-2 17:22:00.00 EST', 10320);
INSERT INTO Flight_Table VALUES(6, 9, 231, 'Atlanta', 'Orlando', 441.6,
    TIMESTAMP '2021-4-4 9:00:00.00 EST', TIMESTAMP '2021-4-4 10:25:00.00 EST', 5100);
INSERT INTO Flight_Table VALUES(7, 8, 228, 'New York', 'Chicago', 790.5,
    TIMESTAMP '2021-4-3 10:30:00.00 EST', TIMESTAMP '2021-4-3 12:59:00.00 EST', 8940);
INSERT INTO Flight_Table VALUES(8, 4, 137, 'Los Angeles', 'San Francisco', 381.9,
    TIMESTAMP '2021-4-4 7:00:00.00 EST', TIMESTAMP '2021-4-4 8:17:00.00 EST', 4620);
INSERT INTO Flight_Table VALUES(9, 6, 126, 'Las Vegas', 'Los Angeles', 270.3,
    TIMESTAMP '2021-4-2 14:30:00.00 EST', TIMESTAMP '2021-4-2 15:43:00.00 EST', 4380);
INSERT INTO Flight_Table VALUES(10, 1, 124, 'Los Angeles', 'Seattle', 1135.1,
    TIMESTAMP '2021-4-2 15:00:00.00 EST', TIMESTAMP '2021-4-2 17:52:00.00 EST', 10320);

--SELECT * FROM Flight_Table;

--Insert Review entries into Review_Table
--Data from https://www.kaggle.com/crowdflower/twitter-airline-sentiment?select=Tweets.csv
--Format: Flight_Number, Customer_ID, Star_Review
INSERT INTO Review_Table VALUES(1, 8, 3);
INSERT INTO Review_Table VALUES(2, 2, 3);
INSERT INTO Review_Table VALUES(3, 10, 2);
INSERT INTO Review_Table VALUES(4, 6, 1);
INSERT INTO Review_Table VALUES(5, 4, 5);
INSERT INTO Review_Table VALUES(6, 1, 3);
INSERT INTO Review_Table VALUES(7, 3, 5);
INSERT INTO Review_Table VALUES(8, 5, 2);
INSERT INTO Review_Table VALUES(9, 7, 3);
INSERT INTO Review_Table VALUES(10, 9, 2);

--SELECT * FROM Review_Table;

--Insert Ticket entries into Ticket_Table
--Format: Ticket_Number, Customer_ID, Flight_Number, Luggage, Wifi, Food
INSERT INTO Ticket_Table VALUES(1, 8, 1, 'T', 'F', 'F');
INSERT INTO Ticket_Table VALUES(2, 2, 2, 'T', 'T', 'F');
INSERT INTO Ticket_Table VALUES(3, 10, 3, 'T', 'T', 'T');
INSERT INTO Ticket_Table VALUES(4, 6, 4, 'F', 'T', 'F');
INSERT INTO Ticket_Table VALUES(5, 4, 5, 'F', 'T', 'T');
INSERT INTO Ticket_Table VALUES(6, 1, 6, 'T', 'T', 'T');
INSERT INTO Ticket_Table VALUES(7, 3, 7, 'F', 'F', 'T');
INSERT INTO Ticket_Table VALUES(8, 5, 8, 'T', 'F', 'T');
INSERT INTO Ticket_Table VALUES(9, 7, 9, 'T', 'T', 'T');
INSERT INTO Ticket_Table VALUES(10, 9, 10, 'F', 'F', 'F');
INSERT INTO Ticket_Table VALUES(11, 10, 8, 'T', 'F', 'F');

--SELECT * FROM Ticket_Table;

--Insert Employee entries into Employee_Table
--Data from https://www.salary.com/research/salary/alternate/airline-pilot-salary
--Format: Employee_ID, First_Name, Last_Name, Salary, Hours_week, Employee_Type
INSERT INTO Employee_Table VALUES(1, 'Osman', 'Thorne', 80230, 34, 'Attendant');
INSERT INTO Employee_Table VALUES(2, 'Krystian', 'Ruiz', 157258, 20, 'Pilot');
INSERT INTO Employee_Table VALUES(3, 'Arandeep', 'Mcconnell', 89147, 39, 'Attendant');
INSERT INTO Employee_Table VALUES(4, 'Earl', 'Huerta', 93886, 33, 'Attendant');
INSERT INTO Employee_Table VALUES(5, 'Tomos', 'Braun', 127901, 25, 'Marshal');
INSERT INTO Employee_Table VALUES(6, 'Tilly-Mae', 'Wilder', 81408, 21, 'Marshal');
INSERT INTO Employee_Table VALUES(7, 'Ridwan', 'Alcock', 155440, 9, 'Pilot');
INSERT INTO Employee_Table VALUES(8, 'Tobias', 'Goodman', 132241, 13, 'Pilot');
INSERT INTO Employee_Table VALUES(9, 'Eleanor', 'Thorpe', 82340, 26, 'Marshal');
INSERT INTO Employee_Table VALUES(10, 'Doug', 'Miller', 34768, 35, 'Attendant');

--SELECT * FROM Employee_Table;

--Insert Flight and Employee entries into Employee_Schedule_Table
--Format: Flight_Number, Employee_ID
INSERT INTO Employee_Schedule_Table VALUES(1, 7);
INSERT INTO Employee_Schedule_Table VALUES(2, 3);
INSERT INTO Employee_Schedule_Table VALUES(3, 9);
INSERT INTO Employee_Schedule_Table VALUES(4, 10);
INSERT INTO Employee_Schedule_Table VALUES(5, 8);
INSERT INTO Employee_Schedule_Table VALUES(6, 4);
INSERT INTO Employee_Schedule_Table VALUES(7, 6);
INSERT INTO Employee_Schedule_Table VALUES(8, 5);
INSERT INTO Employee_Schedule_Table VALUES(9, 1);
INSERT INTO Employee_Schedule_Table VALUES(10, 2);

--SELECT * FROM Employee_Schedule_Table;

--Insert Flight Attendant entries into Flight_Attendant_Table
--Data from https://www.flyertalk.com/forum/united-airlines-mileageplus/1447393-there-chance-i-fly-more-year-than-ux-flight-attendant.html
--Format: Employee_ID, Flight_Miles
INSERT INTO Flight_Attendant_Table VALUES(1, 176262);
INSERT INTO Flight_Attendant_Table VALUES(3, 122402);
INSERT INTO Flight_Attendant_Table VALUES(4, 182312);

--SELECT * FROM Flight_Attendant_Table;

--Insert Flight Marshal entries into Flight_Marshal_Table
--Format: Employee_ID, Badge_Number
INSERT INTO Flight_Marshal_Table VALUES(5, 1);
INSERT INTO Flight_Marshal_Table VALUES(6, 2);
INSERT INTO Flight_Marshal_Table VALUES(9, 3);

--SELECT * FROM Flight_Marshal_Table;

--Insert Pilot entries into Pilot_Table
--Data from https://www.airliners.net/forum/viewtopic.php?t=162863#:~:text=A%20more%20realistic%20figure%20is,miles%20per%20year%20in%20flight.
--Format: Employee_ID, License_Number, Flight_Miles
INSERT INTO Pilot_Table VALUES(2, 1, 243061);
INSERT INTO Pilot_Table VALUES(7, 2, 275247);
INSERT INTO Pilot_Table VALUES(8, 3, 365271);

--SELECT * FROM Pilot_Table;