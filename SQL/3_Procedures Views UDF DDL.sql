USE ComicConManagement;

--------------------------------------------------------------------------
--Procedure 1
CREATE PROCEDURE GetStallDetails
    @p_stall_id INT
AS
BEGIN
    DECLARE @staff_names NVARCHAR(MAX);
    DECLARE @item_details NVARCHAR(MAX);

    -- Retrieve staff names for the stall
    SELECT @staff_names = COALESCE(@staff_names + ', ', '') + staff_name
    FROM staff
    WHERE stall_id = @p_stall_id;

    SELECT @item_details = COALESCE(@item_details + ', ', '') + CONCAT(item_description, ' (', item_quantity, ' in stock)')
    FROM inventory
    WHERE stall_id = @p_stall_id;

    -- Display the results
    SELECT
        @p_stall_id AS stall_id,
        @staff_names AS staff,
        @item_details AS inventory;
END;

-- execution of stored procedure
exec GetStallDetails 1;

--Procedure 2
Create PROCEDURE GetTotalRevenue
AS
BEGIN
SELECT
    e.expo_name,
    COALESCE(SUM(t.ticket_price), 0) AS total_revenue_in_$
FROM
    expo e
LEFT JOIN
    ticket t ON e.expo_id = t.expo_id
GROUP BY
    e.expo_name;
END

-- execution of stored procedure
Exec GetTotalRevenue 


--Procedure 3
CREATE PROCEDURE UpdateSponsorRole
    @sponsorId VARCHAR(255),
    @newRoleId VARCHAR(255)
AS
BEGIN
    UPDATE sponsor
    SET role_id = @newRoleId
    WHERE sponsor_id = @sponsorId;
END;

-- execution of stored procedure
EXEC UpdateSponsorRole 
    @sponsorId = 'S050',
    @newRoleId = 'R09';

SELECT * FROM sponsor
WHERE sponsor_id = 'S050';


--Procedure 4
CREATE PROCEDURE GetAttendeeDetails
    @AttendeeID INT,
    @OutputName VARCHAR(255) OUTPUT,
    @OutputEmail VARCHAR(255) OUTPUT
AS
BEGIN
    SELECT @OutputName = attendee_name, @OutputEmail = attendee_email
    FROM Attendee
    WHERE attendee_id = @AttendeeID;
END;

-- execution of stored procedure

DECLARE @AttendeeID INT = 1; -- Replace with the desired AttendeeID
DECLARE @OutputName VARCHAR(255);
DECLARE @OutputEmail VARCHAR(255);

EXEC GetAttendeeDetails
    @AttendeeID = @AttendeeID,
    @OutputName = @OutputName OUTPUT,
    @OutputEmail = @OutputEmail OUTPUT;

-- Display the output
PRINT 'Name: ' + ISNULL(@OutputName, 'N/A');
PRINT 'Email: ' + ISNULL(@OutputEmail, 'N/A');


--Procedure 5

CREATE PROCEDURE GetPaymentDetails
    @Payment_ID INT,
    @OutputAmount DECIMAL(10, 2) OUTPUT,
    @OutputMethod VARCHAR(50) OUTPUT,
    @OutputDate DATE OUTPUT
AS
BEGIN
    SELECT @OutputAmount = Payment_Amount, @OutputMethod = CAST(DECRYPTBYPASSPHRASE('ComicConManagement', Payment_Method) AS VARCHAR(50)) , 
    @OutputDate = Payment_Date
    FROM Payment
    WHERE Payment_ID = @Payment_ID;
END;

-- execution of stored procedure

DECLARE @Payment_ID INT = 2; 
DECLARE @OutputAmount DECIMAL(10, 2);
DECLARE @OutputMethod VARCHAR(50);
DECLARE @OutputDate DATE;

EXEC GetPaymentDetails

    @Payment_ID = @Payment_ID,
    @OutputAmount = @OutputAmount OUTPUT,
    @OutputMethod = @OutputMethod OUTPUT,
    @OutputDate = @OutputDate OUTPUT;

-- Display the output
PRINT 'Amount: ' + CONVERT(VARCHAR(30),@OutputAmount);
PRINT 'Method: ' + ISNULL(@OutputMethod, 'N/A');
PRINT 'Date: ' + CONVERT(VARCHAR(10), @OutputDate, 120);


--------------------------------------------------------------------------
-- User Defined Functions(UDF)


-- Function 1: Total Revenue from Ticket Sales for a Particular Expo
CREATE FUNCTION TotalRevenueFromTickets(@expoId INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @totalRevenue DECIMAL(10,2);
    SELECT @totalRevenue = SUM(ticket_price) 
    FROM ticket 
    WHERE expo_id = @expoId;
    RETURN ISNULL(@totalRevenue, 0);
END;

-- execution of UDF
SELECT dbo.TotalRevenueFromTickets(1) AS TotalRevenue; -- Replace 1 with the desired expo_id



-- Function 2: Determine the Age of an Attendee
CREATE FUNCTION GetAttendeeAge(@attendeeId INT)
RETURNS INT
AS
BEGIN
    DECLARE @dob DATE;
    DECLARE @age INT;
    SELECT @dob = attendee_dob FROM attendee WHERE attendee_id = @attendeeId;
    SET @age = DATEDIFF(YEAR, @dob, GETDATE());
    IF (MONTH(@dob) > MONTH(GETDATE())) OR (MONTH(@dob) = MONTH(GETDATE()) AND DAY(@dob) > DAY(GETDATE()))
        SET @age = @age - 1;
    RETURN @age;
END;

-- execution of UDF
SELECT dbo.GetAttendeeAge(1) AS AttendeeAge; -- Replace 1 with the desired attendee_id


-- Function 3: Calculate the Average Ticket Price Across All Expos
CREATE FUNCTION AverageTicketPrice()
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @avgPrice DECIMAL(10,2);
    SELECT @avgPrice = AVG(ticket_price) FROM ticket;
    RETURN @avgPrice;
END;

-- execution of UDF
SELECT dbo.AverageTicketPrice() AS AvgTicketPrice;


-----------------------------------------------------------------------

--View 1
CREATE VIEW SponsorDetails AS
SELECT s.sponsor_name, sr.role_name, e.expo_name
FROM sponsor s
JOIN sponsor_role sr ON s.role_id = sr.role_id
JOIN expo e ON s.expo_id = e.expo_id;

SELECT * FROM SponsorDetails;

--View 2
CREATE VIEW PaymentView AS
SELECT Payment_ID , Payment_Amount , 
CAST(DECRYPTBYPASSPHRASE('ComicConManagement', Payment_Method) AS VARCHAR(50)) AS Decrypted_Payment_Method, 
Payment_Date 
FROM Payment;

SELECT * FROM PaymentView 

--View 3
CREATE VIEW PanelArtistReport AS
SELECT 
    p.panel_id,
    p.expo_id,
    p.panel_start_time,
    p.panel_end_time,
    a.artist_name,
    a.genre
FROM 
    panel p
JOIN 
    artist a ON p.panel_id = a.panel_id
    
SELECT * FROM PanelArtistReport 


--View 4
CREATE VIEW view_stall_staff_aggregated AS
SELECT 
    s.stall_id,
    s.booth_number,
    s.stall_size,
    s.expo_id,
    COUNT(st.staff_id) AS total_staff,
    STRING_AGG(st.staff_name, ', ') AS staff_names
FROM 
    stall s
LEFT JOIN 
    staff st ON s.stall_id = st.stall_id
GROUP BY 
    s.stall_id, s.booth_number, s.stall_size, s.expo_id;
   
SELECT * FROM view_stall_staff_aggregated 
 
 --View 5
 
CREATE VIEW expo_ticket_count AS
SELECT
    e.expo_name,
    COUNT(t.ticket_id) AS ticket_count
FROM
    expo e
JOIN
    ticket t ON e.expo_id = t.expo_id
GROUP BY
    e.expo_name;
   
SELECT * FROM expo_ticket_count;


--View 6
CREATE VIEW PanelDetails AS
SELECT p.panel_id, p.expo_id, e.expo_name, p.panel_start_time, p.panel_end_time, a.artist_name
FROM panel p
JOIN expo e ON p.expo_id = e.expo_id
LEFT JOIN artist a ON p.panel_id = a.panel_id;

SELECT * FROM PanelDetails;


--View 7
CREATE VIEW vw_sponsor_count AS
SELECT
    COUNT(sponsor_id) AS sponsor_count
FROM
    sponsor;

SELECT * FROM vw_sponsor_count

--------------------------------------------------------------------------

--UDFS computed column
--UDF1
CREATE FUNCTION dbo.CalculateExpoDurationHours (
    @startDateTime DATETIME,
    @endDateTime DATETIME
)
RETURNS INT
AS
BEGIN
    DECLARE @durationHours INT;

    SET @durationHours = DATEDIFF(HOUR, @startDateTime, @endDateTime);

    RETURN @durationHours;
END;


CREATE PROCEDURE AddDurationHoursColumnToExpoTable
AS
BEGIN
    -- Add the duration_hours column to the expo table
    ALTER TABLE expo
    ADD duration_hours AS dbo.CalculateExpoDurationHours(expo_start_datetime, expo_end_datetime);
END;

--executing the procedure that calls the UDF
EXEC AddDurationHoursColumnToExpoTable;

SELECT * FROM expo e 



--UDF2
CREATE FUNCTION GetPanelDuration(@start_time DATETIME, @end_time DATETIME)
RETURNS INT
AS
BEGIN
    RETURN DATEDIFF(MINUTE, @start_time, @end_time);
END


--Then, add a computed column to the panel table using this function.
ALTER TABLE panel
ADD duration_minutes AS dbo.GetPanelDuration(panel_start_time, panel_end_time);
SELECT * FROM panel;

--------------------------------------------------------------------------
--Triggers

--Trigger1
CREATE TABLE log_table (
    log_id INT IDENTITY(1,1) PRIMARY KEY,
    event_message TEXT,
    event_timestamp DATETIME DEFAULT GETDATE()
);
-- Creating a DML trigger for the 'stall' table

CREATE TRIGGER before_stall_insert
ON stall
AFTER INSERT
AS
BEGIN
    -- Insert a log entry
    INSERT INTO log_table (event_message)
    SELECT 'New stall inserted with ID: ' + CAST(stall_id AS VARCHAR(50))
    FROM inserted;
END;

-- Inserting a new row into the 'stall' table
INSERT INTO stall (stall_id, expo_id, booth_number, stall_size)
VALUES (61, 1, 'F104', 'large');

-- Checking log entries
SELECT * FROM log_table;



--Trigger 2
CREATE TRIGGER EnsureUniqueEmail
ON artist
AFTER INSERT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted i WHERE EXISTS (
        SELECT 1 FROM artist a WHERE CAST(DECRYPTBYPASSPHRASE('ComicConManagement', a.artist_email) AS VARCHAR(50)) = i.artist_email AND a.artist_id <> i.artist_id
    ))
    BEGIN
        RAISERROR ('Duplicate email detected.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END

-- Add a new record
INSERT INTO artist (artist_id, panel_id, artist_name, genre, artist_email, artist_phone)
VALUES (31, 1, 'New Artist', 'New Genre', 'new.email@example.com', '123-456-7890');

-- Add a new record with this email already exists in the artist table
INSERT INTO artist (artist_id, panel_id, artist_name, genre, artist_email, artist_phone)
VALUES (32, 3, 'Newer Artist', 'Newer Genre', 'new.email@example.com', '123-456-7890');

--------------------------------------------------------------------------
-- Non clustered indexes
-- Non-clustered Index for Attendee on Email column
CREATE NONCLUSTERED INDEX IX_Attendee_Email
ON Attendee (attendee_email);

-- Non-clustered Index for Artist on Genre column
CREATE NONCLUSTERED INDEX IX_Artist_Genre
ON Artist (Genre);

-- Non-clustered Index for Panel on DateAndTime column
CREATE NONCLUSTERED INDEX IX_Panel_DateAndTime
ON panel (panel_start_time)

-- Non-clustered Index for Inventory on Price column
CREATE NONCLUSTERED INDEX IX_Inventory_Price
ON Inventory (item_quantity);

-- Non-clustered Index for Ticket on Type column
CREATE NONCLUSTERED INDEX IX_Ticket_Type
ON Ticket (ticket_Type);

-- Index on sponsor Table for Role ID and Expo ID
CREATE NONCLUSTERED INDEX IX_sponsor_role_expo 
ON sponsor(role_id, expo_id);


--------------------------------------------------------------------------

-- Column Data Encryption

-- 1. Encryption

SELECT * FROM payment
--ENCRYPTION of payment method
ALTER TABLE Payment
ADD Encrypted_Payment_Method VARBINARY(MAX);

-- Encrypt the existing values in Payment_Method
UPDATE Payment
SET Encrypted_Payment_Method = ENCRYPTBYPASSPHRASE('ComicConManagement', Payment_method);

-- Drop the original Payment_Method column
ALTER TABLE Payment
DROP COLUMN Payment_Method;

-- Rename the Encrypted_Payment_Method column to Payment_Method
EXEC sp_rename 'Payment.Encrypted_Payment_Method', 'Payment_Method', 'COLUMN';



-- 2. Decryption

-- To decrypt the Payment_Method column, you can use the following query
SELECT 
  	Payment_ID,
    Attendee_ID,
    CAST(DECRYPTBYPASSPHRASE('ComicConManagement', Payment_Method) AS VARCHAR(50)) AS Decrypted_Payment_Method,
    Payment_Amount,
    Payment_Date
FROM Payment;