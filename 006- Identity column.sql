

--CREATE TABLE {TABLE_NAME}
--(
--	{COLUMN_NAME} int Identity (1, 1) Primary Key,
--	{COLUMN_NAME} nvarchar(20)
--  ...
--)


SET IDENTITY_INSERT TBLPerson ON


--If you deleted all the rows in a table, and you want to reset the identity column value,
--use DBCC CHECKIDENT command.
--DBCC CHECKIDENT('{TABLE_NAME}', RESEED, 0)


SELECT * FROM TBLGender
SELECT * FROM TBLPerson

DBCC CHECKIDENT('TBLPerson', RESEED, 0)
SET IDENTITY_INSERT TBLPerson ON

DELETE FROM TBLPerson

--DROP TABLE TBLPerson

--ID , Name, Email, GenderID, Address, Age
CREATE TABLE TBLPerson (
	ID			INT IDENTITY (1,1) PRIMARY KEY,
	NAME		VARCHAR(55),
	Email		VARCHAR(255),
	GenderID	INT,
	Address		VARCHAR(55),
	Age			INT
);

INSERT INTO TBLPerson 
	(NAME, Email, GenderID, Address, Age)
	VALUES
	('Sara', 's@s.com', 2, 'Amman', 23)

SELECT * FROM TBLPerson