-- SQLite
SELECT c.NAME, c.LASTNAME, c.PHONE, c.EMAIL, c.ADDRESS, c.CITY, c.STATE, c.BIRTH_DATE
FROM CUSTOMERS AS c
INNER JOIN LOCATIONS AS l ON (c.ID = l.CUSTOMER_ID)
GROUP BY c.ID HAVING COUNT(l.CUSTOMER_ID) >= 2