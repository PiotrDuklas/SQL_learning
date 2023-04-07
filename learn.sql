--Esencja SQL do nauki

/*Tworzenie bazy danych i tabel

funkcja describe nazwa_tabeli daje podgląd
funkcja date_format(nazwa_kolumny którą chcemy zmienić)*/

/*Aggregate functions - examples:
AVG() - Returns the average value
COUNT() - Returns the number of rows
MAX() - Returns the largest value
MIN() - Returns the smallest value
SUM() - Returns the sum
FLOOR() - returns rounds number to floor
CEILING() - returns rounds number to ceiling
LEFT('tekst', liczba znaków)
RIGHT('tekst', liczba znaków)
UPPER() - Converts a field to upper case
LOWER() - Converts a field to lower case
LENGTH() - Returns the length of a text field
ROUND() - Rounds a numeric field to the number of decimals specified
NOW() - Returns the current system date and time
CHARSET() - returns info about data type

REPLACE('sobota','o','e') returns string with replaced sings 'o' for 'e'
SUBSTRING('sobota',3,4) returns a piece of text 'sobota', from third sign, 4 signs
REVERSE() - returns reversed string
day(now()) - returns today's number day
dayname(now()) - returns today's day name
month(now()) - returns today's number month
monthname(now()) - returns today's month name
year(now()) - returns today's number year
yearweek(now()) - returns today's year and week number
ADDDATE(NOW(), -30) - returns date 30 days before today
TRUNCATE(10.55555, 1) - returns value with 1 decimal


datediff

CHARINDEX
LTRIM
RTRIM

VERSION(), CURRENT_DATE;

Inner join lub join - część wspólna z 2 tabel: tcustomers i tsales
SELECT c.*, s.* from tcustomers c join tsales s on c.customer_id = s.customer_id;
 
Left join - lewa tabela + wspólne z prawej
SELECT c.*, s.* from tcustomers c left join tsales s on c.customer_id = s.customer_id;
 
Right join - prawa tabela + wspólne z lewej
SELECT c.*, s.* from tcustomers c right join tsales s on c.customer_id = s.customer_id;
 
Cross join - iloczyn kartezjański
SELECT c.*, s.* from tcustomers c cross join tsales s
 


CASE statement

SELECT DISTINCT
    first_name,
    last_name,
    birth_date,
    gender,
    CASE gender
        WHEN 'M' THEN 'Mężczyzna'
        WHEN 'F' THEN 'Kobieta'
        ELSE '?'
    END AS 'Płeć'
FROM
    employees
ORDER BY first_name DESC
LIMIT 100;


SELECT 
    *
FROM
    tcustomers 
UNION SELECT 
    *
FROM
    tsales;


    SELECT 
    *
FROM
    tcustomers 
UNION ALL SELECT 
    *
FROM
    tsales;