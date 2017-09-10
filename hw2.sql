CREATE TABLE Countries (  name VARCHAR(20),  latitude VARCHAR(10),  longitude VARCHAR(10),   area INT,  population INT,  gdp VARCHAR(15),  gdpYear INT ); 

-- 4a create borders
CREATE TABLE Borders (country1 VARCHAR(20), country2 VARCHAR(20) ); 

--4b fill tables
INSERT INTO Countries VALUES ( 'Germany', '51 N', '10 E', 357168, 82175700, '3.98 tril', 2016 );

INSERT INTO Countries VALUES ( 'Netherlands', '52.22 N', '4.53 E', 41543, 17116281, '907.619 bil', 2017 );

INSERT INTO Countries VALUES ( 'Belgium', '50.51 N', '4.21 E', 30528, 11250585, '508.598 bil', 2016 );

INSERT INTO Countries VALUES ( 'Luxembourg', '49.36 N', '6.7 E', 2586, 576249, '63.549 bil', 2017 );

INSERT INTO Countries VALUES ( 'Poland', '52.13 N', '21.02 E', 312679, 38634007, '1.114 tril', 2017 );

INSERT INTO Countries VALUES ( 'Czech Republic', '50.05 N', '14.28 E', 78866, 10553948, '368.659 bil', 2017 );

INSERT INTO Countries VALUES ( 'Austria', '48.12 N', '16.21 E', 83879, 8794267, '415.936 bil', 2016 );

INSERT INTO Countries VALUES ( 'France', '48.51 N', '2.21 E', 640679, 66991000, '2.833 tril', 2017 );

INSERT INTO Countries VALUES ( 'Switzerland', '46.57 N', '7.27 E', 41285, 8401120, '514 bil', 2016 );

INSERT INTO Borders VALUES ( 'Germany', 'Poland');

INSERT INTO Borders VALUES ( 'Germany', 'Czech Republic');

INSERT INTO Borders VALUES ( 'Germany', 'Austria');

INSERT INTO Borders VALUES ( 'Germany', 'France');

INSERT INTO Borders VALUES ( 'Germany', 'Luxembourg');

INSERT INTO Borders VALUES ( 'Germany', 'Belgium');

INSERT INTO Borders VALUES ( 'Germany', 'Netherlands');

INSERT INTO Borders VALUES ( 'Germany', 'Switzerland');

INSERT INTO Borders VALUES ( 'Netherlands', 'Belgium');

INSERT INTO Borders VALUES ( 'Belgium', 'France');

INSERT INTO Borders VALUES ( 'Belgium', 'Luxembourg');

INSERT INTO Borders VALUES ( 'Luxembourg', 'France');

INSERT INTO Borders VALUES ( 'Poland', 'Czech Republic');

INSERT INTO Borders VALUES ( 'Czech Republic', 'Austria');

INSERT INTO Borders VALUES ( 'Austria', 'Switzerland');

INSERT INTO Borders VALUES ( 'France', 'Switzerland');

--4c All countries that border Germany
SELECT country2
FROM Borders
WHERE country1 = 'Germany';

--4d All population > 35 mil
SELECT name
FROM Countries
WHERE population > 35000000;

--4e population > 35 mil and border Germany
Select name
From Countries, Borders
WHERE 'Germany' = country1 and population > 35000000;



