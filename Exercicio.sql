--Exercício
SELECT DISTINCT	name
FROM tabela
	ORDER BY col1;


--Exercício
SELECT *
	FROM cakes
	ORDER BY calories
	LIMIT 3;


--Exercício
SELECT firstname
FROM staff
	WHERE salary
		BETWEEN 1500 AND 1900;


--Exercício
SELECT id, name
FROM students
	WHERE id
		BETWEEN 13 AND 45;

--Exercício
SELECT *
FROM people
	WHERE city = 'Boston';

--Exercício
SELECT id, age, name
FROM tabela
	WHERE age >= 30 AND age <= 40;

--Exercício
SELECT name
FROM films
	WHERE production = 'Marvel' AND yyear >= 2010
	ORDER BY name;

--Exercício
SELECT teamname, country
FROM teams
	WHERE country IN ('England', 'Spain', 'Germany');

--Exercício
SELECT CONCAT (firstname, ' ', lastname) AS fullname,
       salary*12+experience*500 AS total
FROM staff
	ORDER BY total;

--Exercício
SELECT AVG(score)
FROM sam_grades
	WHERE semester=1;

--Exercício
SELECT *
FROM Foods
	WHERE fatpercentage < (SELECT AVG(fatpercentage)
						   FROM Foods);

--Exercício
SELECT *
FROM desserts
	WHERE LOWER(name) LIKE '%chocolate%';


--Exercício
SELECT *
FROM students
	WHERE university = 'MIT';

--Exercício
SELECT name, university
FROM students
	WHERE university IN ('Stanford', 'MIT')
	ORDER BY university;

--Exercício
SELECT name, age
FROM students
	WHERE age > (SELECT AVG(age)
				 FROM students)

--Exercício
SELECT *
FROM Apartments
	WHERE price > (SELECT AVG(price)
				   FROM Apartments) AND
		  status = 'Not rented'
	ORDER BY price;
	

--Exercício






