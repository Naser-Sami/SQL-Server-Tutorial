
SELECT * FROM TBLPerson


SELECT ID FROM TBLPerson


SELECT DISTINCT Name, Address FROM TBLPerson


INSERT INTO TBLPerson 
	(NAME, Email, GenderID, Address, Age)
VALUES 
	('Olka', 'olka.olka.com', 1, 'New York', 29)


SELECT * FROM TBLPerson WHERE Address = 'London'
SELECT * FROM TBLPerson WHERE Address <> 'London'		--not equal <>
SELECT * FROM TBLPerson WHERE Address != 'London'		--not equal !=
SELECT * FROM TBLPerson WHERE Address LIKE '%Lond%'


SELECT * FROM TBLPerson
WHERE Age = 20 or Age = 23 or Age = 29


SELECT * FROM TBLPerson
WHERE Age IN(20, 23, 29)


SELECT * FROM TBLPerson
WHERE Age BETWEEN 20 AND 25



SELECT * FROM TBLPerson 
WHERE Email LIKE '%@%'

SELECT * FROM TBLPerson 
WHERE Email NOT LIKE '%@%'


SELECT * FROM TBLPerson 
WHERE Email LIKE '_@_%'


SELECT * FROM TBLPerson 
WHERE Email LIKE '_@_.com'


SELECT * FROM TBLPerson 
WHERE Name LIKE '[MST]%'


SELECT * FROM TBLPerson 
WHERE Name LIKE '[^MST]%'


SELECT * FROM TBLPerson 
WHERE 
	( Address = 'London' OR Address = 'New York' )
AND
	( Age > 25 )



SELECT * FROM TBLPerson 
ORDER BY Name 

SELECT * FROM TBLPerson 
ORDER BY Name DESC

SELECT * FROM TBLPerson 
ORDER BY 
	Name DESC,
	Age  ASC


SELECT TOP 2 * FROM TBLPerson
SELECT TOP 50 PERCENT * FROM TBLPerson


SELECT TOP 1 * FROM TBLPerson
ORDER BY Age DESC