
--Cascading referential integrity constraint
--https://www.youtube.com/watch?v=uo7tGttePY0&list=PL4cyC4G0M1RQ_Rm52cQ4CcOJ_T_HXeMB4&index=5


--Here are the options when setting up Cascading referential integrity constraints:

--No Action:	This is the default behaviour. An error is raised and the DELETE or UPDATE is rolled back if we attempt to delete or update a row whose key is referenced with existing rows in other tables.
--Cascade:		Specifies that all rows containing those foreign keys are removed  if we attempt to delete or update a row with a key that is referenced by existing rows in other tables.
--Set NULL:		Specifies that all rows containing those foreign keys are set to NULL if we attempt to delete or update a row with a key that is referenced by existing rows in other tables.
--Set Default:  Specifies that all rows containing those foreign keys are set to a default value if an attempt is made to delete or update a row with a key referenced by existing rows in other tables.

SELECT * FROM TBLGender
SELECT * FROM TBLPerson


DELETE FROM TBLGender 
WHERE ID = 3


ALTER TABLE			TBLPerson
ADD FOREIGN KEY		(GenderId) 
REFERENCES			TBLGender(ID)
ON DELETE CASCADE
ON UPDATE SET NULL;


-- To modify an existing foreign key constraint in SQL, you'll first need to drop the existing foreign key and then add a new one with the updated actions. 
-- SQL doesn't allow direct modification of a foreign key constraint, so this two-step process is necessary.
ALTER TABLE		TBLPerson
DROP CONSTRAINT FK__TBLPerson__Gende__3D5E1FD2;
