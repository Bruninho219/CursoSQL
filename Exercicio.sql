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
SELECT students.id, students.firstname, students.lastname, teachers.lastname AS teacher 
FROM students, teachers
	WHERE students.teacherid = teachers.id
	ORDER BY students.id;

--Exercício
SELECT products.productname, products.price, categories.categoryname
FROM products P INNER JOIN categories C
	ON P.categoryid = C.id;

--Exercício
SELECT *
FROM NorwayChess
UNION
SELECT *
FROM TataSteel
	ORDER BY rating DESC;

--Exercício
INSERT INTO Garage
VALUES (6, 'Mercedes-BenZ', 'G 63', 2020);
INSERT INTO Garage
VALUES (7, 'PorSche', 'Panamera', 2020);

SELECT *
FROM Garage;

--Exercício
DELETE FROM products
WHERE expiredate<1; 

SELECT *
FROM products;

--Exercício
CREATE TABLE leaderboard
(
    place INTEGER,
    nickname VARCHAR(20),
    rating INTEGER
);

INSERT INTO leaderboard
VALUES (1, 'Predator', 9500);

INSERT INTO leaderboard
VALUES (2, 'JohnWar', 9300);

INSERT INTO leaderboard
VALUES (3, 'NightWarrior', 8900);

SELECT *
FROM leaderboard;

--Exercício
ALTER TABLE cities
	ADD AttractivePlace VARCHAR(20);

UPDATE cities
	SET AttractivePlace = 'Belem Tower'
	WHERE country = 'Portugalia';--1

UPDATE cities
	SET AttractivePlace = 'Plaza Mayor'
	WHERE country = 'Spain';--2

UPDATE cities
	SET AttractivePlace = 'Eiffel Tower'
	WHERE country = 'France';--3

SELECT *
FROM cities;

--Exercício
CREATE VIEW view1 AS
SELECT acc_id, status
FROM users;

SELECT *
FROM view1;

--Exercício
SELECT students.name, universities.name
FROM students
	LEFT OUTER JOIN universities
	ON students.university_id = universities.id;

INSERT INTO people
VALUES ('John Smith', '1', 22);

UPDATE people
SET name = 'Jordan'
	WHERE id = 147;

CREATE TABLE
(
	id INTEGER,
	name VARCHAR(30),
	PRIMARY KEY (id)
);

ALTER TABLE people
DROP COLUMN age;

CREATE VIEW most_abs AS
SELECT id, name, absences
FROM students
	ORDER BY absences DESC
	LIMIT 10;

DROP TABLE students;

ALTER TABLE students
DROP COLUMN temp;

--Exercício
INSERT INTO Animals
VALUES ('Slim', 'Giraffe', 1);

SELECT Animals.name, Animals.type, Countries.country
FROM Animals INNER JOIN Countries
	 ON Animals.country_id = Countries.id
	 ORDER BY Countries.country;

--Exercício
SELECT *
FROM users
LIMIT 10;

--Exercício
CREATE TABLE users
(
	id       NOT NULL AUTO_INCREMENT,
	login    VARCHAR(100),
	password VARCHAR(100)
);

--Exercício
SELECT *
FROM students
	WHERE age<21
	ORDER BY name;

--Exercício
SELECT *
FROM custumers
	WHERE balance > 1000 OR
	city = 'NY'
	LIMIT 100;

--Exercício
SELECT age
FROM zoo1
	WHERE animal IN ('bear', 'bird')
UNION
SELECT age
FROM zoo2
	WHERE animal IN ('lion', 'crocodile');

--Exercício
SELECT CONCAT (name, ' is from ', city)
FROM custumers;

--Exercício
SELECT *
FROM zoo
	WHERE age > (SELECT AVG(age)
				 FROM zoo);

--Exercício
SELECT age
FROM zoo
	WHERE animal LIKE '%wolf';

--Exercício
SELECT name
FROM students
	WHERE age
	BETWEEN 18 AND 22;

--Exercício
UPDATE students
SET university = 'MIT'
	WHERE id = 682;

--Exercício
UPDATE zoo
SET age = 14
	WHERE animal = 'elephant';

--Exercício
UPDATE zoo
SET food_balance = 23
	WHERE age > (SELECT AVG(age)
				 FROM zoo);

--Exercício
SELECT custumers.name, cities.name
FROM custumers RIGHT OUTER JOIN cities
	ON cities.id = custumers.city_id;

--Exercício
ALTER TABLE students
ADD last_name VARCHAR(100);

--Exercício
SELECT name
FROM students
	WHERE university IN ('MIT', 'Stanford', 'Harvard')
	AND name='Jake';