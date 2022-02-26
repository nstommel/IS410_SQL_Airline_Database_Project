--Increase Employee 7's salary by $10,000
UPDATE Employee_Table SET Salary = Salary + 10000 WHERE Employee_ID = 7;
SELECT * FROM Employee_Table;

--Change Customer 4's status as a Rewards Member to True.
UPDATE Customer_Table SET Rewards_Member = 'T' WHERE Customer_ID = 4;
SELECT * FROM Customer_Table;

--Find the minimum salary for an employee of the airline.
SELECT Employee_ID, First_Name, Last_Name, Salary
FROM Employee_Table
WHERE Salary = (SELECT MIN(Salary) FROM Employee_Table);

--Count the number of rewards and non-rewards member customers. (Group By)
SELECT Rewards_Member, COUNT(*)
FROM Customer_Table
GROUP BY Rewards_Member;

--Find the average salary for each type of airline employee. (Group By)
SELECT Employee_Type, AVG(Salary)
FROM Employee_Table
GROUP BY Employee_Type;

--Identify the names of Boeing plane models that consist of more than two units 
--in operation. (Group By, Having)
SELECT Plane_Model, COUNT(*)
FROM Plane_Table
WHERE Plane_Model LIKE '%Boeing%'
GROUP BY Plane_Model
HAVING COUNT(*) > 2;

--Identify the minimum hours per week worked by each employee type in descending
--order (Group By, Order By)
SELECT Employee_Type, MIN(Hours_Week)
FROM Employee_Table
GROUP BY Employee_Type
ORDER BY MIN(Hours_Week) DESC;

--Identify the names of customers for each ticket, and those who do not have 
--a ticket. Returns rows in the customer table even if they have no ticket.
--(Left Outer Join)
SELECT First_Name, Last_Name, Ticket_Number
FROM Customer_Table, Ticket_Table
WHERE Ticket_Table.Customer_ID (+) = Customer_Table.Customer_ID
ORDER BY Ticket_Number;

--Identify customers who have tickets to flights departing from Los Angeles. 
--(Natural Join, Multitable Join) 
SELECT C.Customer_ID, C.First_Name, C.Last_Name
FROM Customer_Table C, Ticket_Table T, Flight_Table F
WHERE T.Customer_ID = C.Customer_ID
AND T.Flight_Number = F.Flight_Number
AND Origin = 'Los Angeles';

--Identify email addresses of customers that left a review of less than 3 stars
--to contact them. (Natural Join)
SELECT Star_Review, Flight_Number, Email_Address
FROM Customer_Table C, Review_Table R
WHERE R.Customer_ID = C.Customer_ID
AND Star_Review < 3;

--Return flight numbers and departure times for flights that depart after 
--Flight 7. (Self Join)
SELECT F2.Flight_Number, F2.Departure_Time
FROM Flight_Table F1, Flight_Table F2
WHERE F1.Flight_Number = 7 AND F2.Departure_Time > F1.Departure_Time;
