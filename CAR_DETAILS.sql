create schema cars;
use cars;
-- read xata --
SELECT * FROM car_dekho;

-- To get the count of total records --
SELECT count(*) FROM car_dekho;
-- The manager asked the employee how many cars will be available in 2020,2021,2022,2023 ? --
SELECT count(*) FROM car_dekho WHERE year = 2023;
SELECT count(*) FROM car_dekho WHERE YEAR = 2020;
SELECT count(*) FROM car_dekho WHERE YEAR = 2021;
SELECT count(*) FROM car_dekho WHERE YEAR = 2022;
-- OR --
SELECT count(*) FROM car_dekho WHERE YEAR IN (2020,2021,2022,2023) GROUP BY YEAR;
-- Print total by year --
SELECT year, count(*) FROM car_dekho GROUP BY year; 
-- Diesel cars in 2020 ? --
SELECT count(*) FROM car_dekho WHERE(year = 2020 AND fuel = "Diesel");
-- Petrol cars in 2020 ? --
SELECT count(*) FROM car_dekho WHERE(year = 2020 AND fuel = "Petrol");
-- All the fuel cars by year --
SELECT year, count(*) FROM car_dekho WHERE fuel = 'Petrol' GROUP BY year;
SELECT year, count(*) FROM car_dekho WHERE fuel = 'Diesel' GROUP BY year;
SELECT year, count(*) FROM car_dekho WHERE fuel = 'CNG' GROUP BY year;
-- Which year had more than 100 cars --
SELECT year, count(*) From car_dekho GROUP BY year HAVING count(*) > 100;
-- Which year had less than 100 cars --
SELECT year, count(*) From car_dekho GROUP BY year HAVING count(*) < 100;
-- All cars count details between 2015 and 2023 --
SELECT count(*) From car_dekho WHERE year BETWEEN 2015 and 2023;
-- All cars count details between 2015 and 2023 (complete list) --
SELECT*From car_dekho WHERE year BETWEEN 2015 and 2023;
-- List of cars with seats more than 4 and selling price less than 2000000 --
SELECT Name, seats, selling_price FROM car_dekho WHERE seats > 4 AND selling_price < 2000000;

-- END--