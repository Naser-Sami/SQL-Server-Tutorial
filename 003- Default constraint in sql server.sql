
--Default constraint in sql server

SELECT * FROM TBLGender
SELECT * FROM TBLPerson

INSERT INTO TBLGender
(ID, Gender)
VALUES
(3, 'Unknown')

INSERT INTO TBLPerson 
(ID, Name, Email)
VALUES
(3, 'Omar', 'o@o.com')


--Altering an existing column to add a default constraint:

--ALTER TABLE {TABLE_NAME}
--ADD CONSTRAINT {CONSTRINT_NAME}
--DEFAULT {DEFAULT_VALUE} 
--FOR {EXISTING_COLUMN_NAME}

ALTER TABLE TBLPerson
ADD CONSTRAINT DF_TBLPerson_GenderId
DEFAULT 3
FOR GenderId


INSERT INTO TBLPerson 
(ID, Name, Email)
VALUES
(4, 'Ali', 'a@a.com')


INSERT INTO TBLPerson
(ID, Name, Email, GenderID)
VALUES
(5, 'Sara', 's@s.com', 2)


INSERT INTO TBLPerson
(ID, Name, Email, GenderID)
VALUES
(6, 'Mohammad', 'm@m.com', NULL)


INSERT INTO TBLPerson
(ID, Name, Email, Address)
VALUES
(7, 'Tala', 't@t.com', 'Amman')


--Adding a new column, with default value, to an existing table:

--ALTER TABLE {TABLE_NAME}
--ADD {COLUMN_NAME}{DATA_TYPE}{NULL | NOT NULL}
--CONSTRAINT {CONSTRAINT_NAME} 
--DEFAULT {DEFAULT_VALUE}

ALTER TABLE TBLPerson
ADD Address VARCHAR(255) NOT NULL
CONSTRAINT DF_TBLPerson_Email
DEFAULT 'not found'

--Dropping a constraint:

--ALTER TABLE {TABLE_NAEM}
--DROP CONSTRAINT {CONSTRAINT_NAME}

