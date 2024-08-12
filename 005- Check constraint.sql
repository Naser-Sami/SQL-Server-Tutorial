
--Check Constraint


SELECT * FROM TBLGender
SELECT * FROM TBLPerson


ALTER TABLE TBLPerson
ADD Age INT


INSERT INTO TBLPerson
(ID, Name, Email, GenderID, Address, Age)
VALUES
(8, 'Tim', 'ti@t.com', 1, 'UK', 30)


INSERT INTO TBLPerson
(ID, Name, Email, GenderID, Address, Age)
VALUES
(10, 'Rana', 'r@r.com', 2, 'UK', 28)


--General formula for adding check constraint in SQL Server

--ALTER TABLE		{TABLE_NAME}
--ADD CONSTRAINT	{CONSTRINT_NAME} 
--CHECK				(BOOLEAN_EXPRESSION)

ALTER TABLE			TBLPerson
ADD CONSTRAINT		CK_TBLPerson_Age
CHECK				(Age > 0 And Age < 150)

--To Drop the Check Constraint:
--ALTER TABLE {TABLE_NAME}
--DROP CONSTRAINT {CONSTRAINT_NAME}

ALTER TABLE TBLPerson
DROP CONSTRAINT CK_TBLPerson_Age