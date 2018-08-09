CREATE VIEW customersAndDates AS
 SELECT C.ID, C.FIRST_NAME, C.LAST_NAME, L.CUSTOMER_ID, L.DATE_FROM, L.DATE_TO, CAR.BRAND
 FROM CUSTOMER C 
 JOIN  LOAN L ON C.ID = L.CUSTOMER_ID 
 JOIN CAR ON CAR.ID = L.CAR_ID;
 
 SELECT * FROM customersAndDates;
 
 CREATE OR REPLACE VIEW loans_Per_Month AS (
 SELECT CUSTOMER_ID, MONTH(DATE_FROM) month, YEAR(DATE_to) year, count(*) NR_LOANS FROM LOAN L
 GROUP BY CUSTOMER_ID, month, year);
 
 Select * from loans_Per_Month;
 
 CREATE OR REPLACE VIEW amount_of_rentals AS (
SELECT customer_id, YEAR(date_from) year, MONTH(date_to) month, COUNT(*) NR_LOANS
FROM loan l GROUP BY customer_id, month, year);

select * from amount_of_rentals;