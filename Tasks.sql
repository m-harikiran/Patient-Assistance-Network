--Inserting records into Person Table
INSERT INTO PERSON VALUES (111111111, 'TOM', '10/15/1993', 'AMERICAN', 'MALE', 'FOTBALL PLAYER', 'NORMAN', 'TOM@GMAIL.COM', '(111) 111-1111', '(111) 111-1111', '(111) 111-1111', 1, NULL )
INSERT INTO PERSON VALUES (222222222, 'BOB', '1/3/1994', 'ASIAN', 'MALE', 'ENGINEER', 'NEW YORK', 'BOB@GMAIL.COM', '(222) 222-2222', '(222) 222-2222', '(222) 222-2222', 1, NULL )
INSERT INTO PERSON VALUES (333333333, 'POTTER', '3/9/1995', 'LATINO', 'MALE', 'ACTOR', 'CALIFORNIA', 'POTTER@GMAIL.COM', '(333) 333-3333', '(333) 333-3333', '(333) 333-3333', 0, NULL )
INSERT INTO PERSON VALUES (444444444, 'ABD', '6/19/1996', 'AFRICAN', 'MALE', 'CRICKETER', 'SOUTH AFRICA', 'ABD@GMAIL.COM', '(444) 4444-4444', '(444) 4444-4444', '(444) 4444-4444', 1, NULL )
INSERT INTO PERSON VALUES (555555555, 'MAJA', '9/24/1997', 'EUROPEAN', 'FEMALE', 'ACTIVIST', 'CANADA', 'MAJA@GMAIL.COM', '(555) 555-5555', '(555) 555-5555', '(555) 555-5555', 0, NULL )
INSERT INTO PERSON VALUES (666666666, 'VIRAT', '12/31/2000', 'SOUTH ASIAN', 'MALE', 'CRICKETER', 'NORMAN', 'VIRAT@GMAIL.COM', '(666) 666-6666', '(666) 666-6666', '(666) 666-6666', 1, NULL )
INSERT INTO PERSON VALUES (777777777, 'JAMES', '10/21/1990', 'ASIAN', 'MALE', 'CRICKETER', 'NORMAN', 'JAMES@GMAIL.COM', '(666) 666-6666', '(666) 666-6666', '(666) 666-6666', 1, NULL )
INSERT INTO PERSON VALUES (888888888, 'ANDERSON', '4/30/1989', 'AUSTRALIAN', 'MALE', 'CRICKETER', 'SYDNEY', 'JAMES@GMAIL.COM', '(666) 666-6666', '(666) 666-6666', '(666) 666-6666', 1, NULL )
INSERT INTO PERSON VALUES (999999999, 'WARNER', '10/21/1986', 'AUSTRALIAN', 'MALE', 'CRICKETER', 'MEL', 'WARNER@GMAIL.COM', '(666) 666-6666', '(666) 666-6666', '(666) 666-6666', 0, NULL )


--Inserting records into Insurance Policy Table
INSERT INTO INSURANCE_POLICY VALUES (1234, 111111111, 123, 'OKC', 'LIFE')
INSERT INTO INSURANCE_POLICY VALUES (1235, 111111111, 123, 'OKC', 'HEALTH')
INSERT INTO INSURANCE_POLICY VALUES (1236, 222222222, 122, 'TEXAS', 'AUTO')
INSERT INTO INSURANCE_POLICY VALUES (1237, 333333333, 112, 'TEXAS', 'AUTO')

--Inserting records into Needs Table
INSERT INTO NEEDS VALUES (111111111, 'TRANSPORTATION', 4)
INSERT INTO NEEDS VALUES (222222222, 'TRANSPORTATION', 5)
INSERT INTO NEEDS VALUES (333333333, 'TRANSPORTATION', 3)
INSERT INTO NEEDS VALUES (444444444, 'TRANSPORTATION', 6)

--Query 1
-- Insert rows into table 'TEAMS'
INSERT INTO TEAMS VALUES ('SRH', 'TYPE1', '8/14/2010')
INSERT INTO TEAMS VALUES ('MI', 'TYPE2', '6/10/2008')
INSERT INTO TEAMS VALUES ('CSK', 'TYPE3', '7/14/2008')
INSERT INTO TEAMS VALUES ('DC', 'TYPE4', '7/26/2015')
INSERT INTO TEAMS VALUES ('RCB', 'TYPE5', '9/3/2012')
INSERT INTO TEAMS VALUES ('RR', 'TYPE6', '5/3/2010')
INSERT INTO TEAMS VALUES ('KKR', 'TYPE7', '9/20/2009')


--Query 2
-- Insert rows into table 'CLIENT'
INSERT INTO CLIENT VALUES (111111111, 'ANTONY', 'JOHN', '(777) 777-7777', '(888) 888-8888', '2/1/2001')
INSERT INTO CLIENT VALUES (222222222, 'BRAD', 'SAMEERA', '(999) 999-9999', '(123) 456-7890', '4/10/2002')
INSERT INTO CLIENT VALUES (333333333, 'BEN', 'KEVIN', '(213) 456-7890', '(321) 456-7890', '5/22/2003')

-- Insert rows into table 'CARES' to associate CLIENTS with TEAMS
INSERT INTO CARES VALUES(111111111, 'SRH', 1 )
INSERT INTO CARES VALUES(111111111, 'MI', 1 )
INSERT INTO CARES VALUES(222222222, 'SRH', 1 )
INSERT INTO CARES VALUES(333333333, 'DC', 1 )


--Query 3
-- Insert rows into table 'VOLUNTEER'
INSERT INTO VOLUNTEER VALUES (444444444, '10/22/2010', '12/23/2010', 'NORMAN')
INSERT INTO VOLUNTEER VALUES (222222222, '12/23/2010', '1/5/2011', 'OKC')
INSERT INTO VOLUNTEER VALUES (555555555, '1/18/2019', '3/23/2019', 'ENID')

-- Insert rows into table 'SERVES' to associate VOLUNTEER with TEAMS
INSERT INTO SERVES VALUES(444444444, 'SRH', 1 )
INSERT INTO SERVES VALUES(444444444, 'MI', 1 )
INSERT INTO SERVES VALUES(222222222, 'SRH', 1 )


--Query 4
-- Insert rows into table 'WORK' to record hours worked by a volunteer for a particular team for a month
INSERT INTO WORK VALUES ('SRH', 444444444, 'JAN', 10)
INSERT INTO WORK VALUES ('MI', 444444444, 'FEB', 10)
INSERT INTO WORK VALUES ('SRH', 222222222, 'JAN', 10)


-- Query 5
--Insert rows into table 'EMPLOYEE'
INSERT INTO EMPLOYEE VALUES (444444444, 100000.50, 'SINGLE', '12/23/2010')
INSERT INTO EMPLOYEE VALUES (111111111, 200000, 'MARRIED','1/5/2011')
INSERT INTO EMPLOYEE VALUES (666666666, 75000, 'MARRIED', '3/23/2019')

--Insert rows into table 'REPORTS' to associate EMPLOYEE with TEAMS
INSERT INTO REPORTS VALUES ('SRH', 444444444, '10/21/2019', 'REPORTING STATUS OF TEAM SRH TO 444444444')
INSERT INTO REPORTS VALUES ('MI', 444444444, '11/29/2019', 'REPORTING STATUS OF TEAM MI TO 444444444')
INSERT INTO REPORTS VALUES ('DC', 111111111, '11/29/2019', 'REPORTING STATUS OF TEAM DC TO 111111111')


--Query 6
--Insert rows into table 'EXPENSES' to record expenses charged by an Employee
INSERT INTO EXPENSES VALUES (444444444, '10/22/2019', 10.5, 'EXP1')
INSERT INTO EXPENSES VALUES (444444444, '10/22/2019', 20.99, 'EXP2')
INSERT INTO EXPENSES VALUES (111111111, '10/21/2019', 100.00, 'EXP3')
INSERT INTO EXPENSES VALUES (111111111, '12/21/2019', 200.00, 'EXP4')
INSERT INTO EXPENSES VALUES (777777777, '1/22/2018', 2000.00, 'EXP5')


--Query 7
--Insert rows into table 'ORGANIZATION'
INSERT INTO ORGANIZATION VALUES ('GOOGLE', '(123) 412-2412', 'CALIFORNIA', 'SUMIT')
INSERT INTO ORGANIZATION VALUES ('AMAZON', '(123) 412-2412', 'SEATTLE', 'DAVID')

--Insert rows into table 'BUSINESS' if ORGANIZATION is a Business
INSERT INTO BUSINESS VALUES ('GOOGLE', 'SOFTWARE', '15000', 'WWW.GOOGLE.COM')

--Insert rows into table 'CHURCH' if ORGANIZATION is a Church
INSERT INTO CHURCH VALUES ('AMAZON', 'CHRISTIAN') 

--Insert rows into table 'SPONSOR' to associate ORGANIZATION with TEAMS
INSERT INTO SPONSOR VALUES ('SRH', 'GOOGLE')
INSERT INTO SPONSOR VALUES ('MI', 'GOOGLE')
INSERT INTO SPONSOR VALUES ('SRH', 'AMAZON')


--Query 8
--Insert rows into table 'DONOR'
INSERT INTO DONOR VALUES (444444444, 0)
INSERT INTO DONOR VALUES (555555555, 1)
--Insert rows into table 'DONOR_DONATIONS' to record donations made by donor
INSERT INTO DONOR_DONATIONS VALUES (444444444, '11/20/2019', 5000, 'Campaign Name', 'Type1')
INSERT INTO DONOR_DONATIONS VALUES (444444444, '11/20/2018', 10000, 'Campaign Name1', 'Type2')
INSERT INTO DONOR_DONATIONS VALUES (555555555, '11/20/2019', 5000, 'Campaign Name1', 'Type2')
--Insert rows into table 'DONOR_DONATIONS_CHECK' if donor made donation using Check
INSERT INTO DONOR_DONATIONS_CHECK VALUES (444444444, '11/20/2019', 5000, 'Campaign Name', 'Type1', 123456)
--Insert rows into table 'DONOR_DONATIONS_CHECK' if donor made donation using Card
INSERT INTO DONOR_DONATIONS_CARD VALUES (444444444, '11/20/2018', 10000, 'Campaign Name1', 'Type2', 2222444488880000, 'VISA', '12/2022')
INSERT INTO DONOR_DONATIONS_CARD VALUES (555555555, '11/20/2019', 5000, 'Campaign Name1', 'Type2', 2222444488880000, 'VISA', '12/2022')


--Query 9
--Insert rows into table 'ORGANIZATION'
INSERT INTO ORGANIZATION VALUES ('IBM', '(123) 412-2411', 'SEATTLE', 'LYNDSEY')

--Insert rows into table 'BUSINESS' if ORGANIZATION is a Business
INSERT INTO BUSINESS VALUES ('IBM', 'SOFTWARE', '20000', 'WWW.IBM.COM')

--Insert rows into table 'CHURCH' if ORGANIZATION is a Church
--INSERT INTO CHURCH VALUES ('FACEBOOK', 'HINDU') 

--Insert rows into table 'ORG_DONATIONS' to record donations made by an Organization
INSERT INTO ORG_DONATIONS VALUES ('IBM', '11/20/2019', 150000, 'Campaign Name4', 'Type1', 1)
INSERT INTO ORG_DONATIONS VALUES ('IBM', '11/20/2018', 200000, 'Campaign Name12', 'Type2', 0)

--Insert rows into table 'ORG_DONATIONS_CHECK' if an Organization made donation using Check
INSERT INTO ORG_DONATIONS_CHECK VALUES ('IBM', '11/20/2019', 150000, 'Campaign Name4', 'Type1', 123456)

--Insert rows into table 'ORG_DONATIONS_CARD' if an Organization made donation using Card
INSERT INTO ORG_DONATIONS_CARD VALUES ('IBM', '11/20/2018', 200000, 'Campaign Name12', 'Type2', 2222444488880000, 'VISA', '12/2022')

--Query 10
--Retrieving Doctor Name and Phone number of a Client
SELECT DOC_NAME, DOC_PH FROM CLIENT WHERE SSN = 111111111
SELECT DOC_NAME, DOC_PH FROM CLIENT WHERE SSN = 222222222

--Query 11
--Retrieving Employee SSN and Total Expenses for a particular period
SELECT SSN, SUM(AMOUNT) 'TOTAL_EXPENSES' FROM EXPENSES WHERE DATE BETWEEN '9/1/2019' AND '10/31/2019' GROUP BY SSN ORDER BY TOTAL_EXPENSES DESC
SELECT SSN, SUM(AMOUNT) 'TOTAL_EXPENSES' FROM EXPENSES WHERE DATE BETWEEN '1/1/2018' AND '12/31/2019' GROUP BY SSN ORDER BY TOTAL_EXPENSES DESC

--12
--Retrieving Volunteers that are members of a teams that support particular Client
SELECT DISTINCT SSN FROM SERVES WHERE NAME IN (SELECT DISTINCT NAME FROM CARES WHERE SSN = 111111111)
SELECT DISTINCT SSN FROM SERVES WHERE NAME IN (SELECT DISTINCT NAME FROM CARES WHERE SSN = 444444444)

--Query 13

-- Create a new view called 'QUERY13' to implent query 13
-- Drop the view if it already exists
IF EXISTS (
SELECT *
    FROM sys.views
    JOIN sys.schemas
    ON sys.views.schema_id = sys.schemas.schema_id
    WHERE sys.views.name = N'QUERY13'
)
DROP VIEW QUERY13
GO
-- Create the view in the specified schema
CREATE VIEW QUERY13
AS
    -- body of the view
   SELECT DISTINCT P.NAME, P.ADDRESS, P.EMAIL, P.HOME_PH, P.CELL_PH, P.WORK_PH FROM PERSON P, CARES C, SPONSOR S 
    WHERE P.SSN = C.SSN  AND C.NAME = S.TEAM_NAME AND S.ORG_NAME   BETWEEN   'B%' AND 'K%'
GO

--Retrieving  Names and Contact information of the clients
SELECT * FROM QUERY13 ORDER BY NAME

--Query 14
-- Create a new view called 'QUERY14' to implement query 14
-- Drop the view if it already exists
IF EXISTS (
SELECT *
    FROM sys.views
    JOIN sys.schemas
    ON sys.views.schema_id = sys.schemas.schema_id
    WHERE sys.views.name = N'QUERY14'
)
DROP VIEW QUERY14
GO
-- Create the view in the specified schema
CREATE VIEW QUERY14
AS
    -- body of the view
    SELECT P.NAME, B.TOTAL_AMOUNT, B.ANONYMOUS FROM PERSON P, 
    (SELECT D.SSN, SUM(DD.AMOUNT) 'TOTAL_AMOUNT', D.ANONYMOUS FROM DONOR D, DONOR_DONATIONS DD,  EMPLOYEE E 
        WHERE  D.SSN = E.SSN AND D.SSN = DD.SSN GROUP BY D.SSN, D.ANONYMOUS ) B 
    WHERE P.SSN =  B.SSN
GO

--Retrieving Names and Total Amount Donated by Donars who are also Employees
SELECT * FROM QUERY14 ORDER BY TOTAL_AMOUNT

--Query 15
--Retrieving Names of team that were formed after a date
SELECT NAME FROM TEAMS WHERE FORMATION_DATE > '05/03/2010'


--Query 16
-- Create a new stored procedure called 'UpdateEmpSalary' to increase salary by 10%
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_NAME = N'UpdateEmpSalary'
)
DROP PROCEDURE UpdateEmpSalary
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE UpdateEmpSalary
AS
    UPDATE EMPLOYEE
    SET SALARY = SALARY + SALARY*0.1
    WHERE SSN IN (SELECT SSN FROM REPORTS   GROUP BY SSN HAVING COUNT(*) > 1)

GO
-- example to execute the stored procedure we just created
EXECUTE UpdateEmpSalary 
GO

--Query 17
-- Create a new stored procedure called 'DeleteClient' to delete Clients who do not have Health Insurance and Importance Value for Transportation is < 5
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_NAME = N'DeleteClient'
)
DROP PROCEDURE DeleteClient
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE DeleteClient
AS
    DELETE FROM CLIENT
    WHERE SSN NOT IN (
    SELECT DISTINCT SSN FROM INSURANCE_POLICY WHERE POLICY_TYPE ='HEALTH'
    UNION
    SELECT DISTINCT SSN FROM NEEDS WHERE NEED_TYPE = 'TRANSPORTATION' AND IMPORTANCE >= 5)

GO
-- example to execute the stored procedure we just created
EXECUTE DeleteClient 
GO


--Error Checking 
INSERT INTO TEAMS VALUES ('SRH', 'TYPE2', '8/14/2011') -- Primary Key Constraint error
INSERT INTO TEAMS VALUES ('THUNDERS', NULL , '8/14/2011') -- Null Constraint Error
INSERT INTO CLIENT VALUES(123, 'DOC NAME', 'ATT NAME', '(xxx) xxx-xxxx', '(xxx) xxx-xxxx', '1/12/2012' ) -- Foreign Key Constraint Error
INSERT INTO TEAMS VALUES ('THUNDERS', 'BASKETBALL' , '13/20/2010') -- Data Type Conversion Error