--Exercicio
SELECT DISTINCT	name
FROM tabela
	ORDER BY col1;


--Exercicio
SELECT *
	FROM cakes
	ORDER BY calories
	LIMIT 3;


--Exercicio
SELECT firstname
FROM staff
	WHERE salary
		BETWEEN 1500 AND 1900;


--Exercicio
SELECT id, name
FROM students
	WHERE id
		BETWEEN 13 AND 45;

--Exercicio
SELECT *
FROM people
	WHERE city = 'Boston';

--Exercicio
SELECT id, age, name
FROM tabela
	WHERE age >= 30 AND age <= 40;

--Exercicio
SELECT name
FROM films
	WHERE production = 'Marvel' AND yyear >= 2010
	ORDER BY name;

--Exercicio
SELECT teamname, country
FROM teams
	WHERE country IN ('England', 'Spain', 'Germany');

--Exercicio
SELECT CONCAT (firstname, ' ', lastname) AS fullname,
       salary*12+experience*500 AS total
FROM staff
	ORDER BY total;

--Exercicio
SELECT AVG(score)
FROM sam_grades
	WHERE semester=1;

--Exercicio
SELECT *
FROM Foods
	WHERE fatpercentage < (SELECT AVG(fatpercentage)
						   FROM Foods);







