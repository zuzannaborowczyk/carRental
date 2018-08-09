


-- a
SELECT FIRST_NAME, LAST_NAME, year(from_days(datediff(now(), birthdate))) as AGE FROM EMPLOYEE
where year(from_days(datediff(now(), birthdate)))>25;
-- b
SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEE 
WHERE length(EMPLOYEE.LAST_NAME)>5;
-- c
SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEE 
WHERE SUBSTR(EMPLOYEE.LAST_NAME,2,1) = 'F'; -- LAST_NAME LIKE '__F%'
-- d
SELECT ID, CAR_TYPE, BRAND, COLOR, MAX(MILE_AGE) FROM CAR;
-- e
SELECT Id, car_type, brand, COUNT(CAR.ID) FROM car
WHERE CAR.MILE_AGE BETWEEN 200 AND 300;
-- f
SELECT FIRST_NAME, LAST_NAME, POSITION_name FROM EMPLOYEE E
JOIN `POSITION` P ON E.POSITION_ID=P.ID
WHERE POSITION_NAME = 'kierownik';
-- g 1)
SELECT CUSTOMER_ID, first_name, last_name, COUNT(*) FROM LOAN 
join customer on customer.id=loan.customer_id
GROUP BY CUSTOMER_ID 
order by count(*) desc 
limit 2;
-- g 2)
SELECT MONTH(DATE_FROM), COUNT(*) NUMBER_OF_LOANS FROM LOAN
GROUP BY MONTH(DATE_FROM)
ORDER BY MONTH(DATE_FROM);
-- g 3)
SELECT  v.customer_id, v.month, v.year, v.NR_LOANS FROM LOANS_PER_MONTH v
join(select MAX(NR_LOANS) MAXX, customer_id from LOANS_PER_MONTH v
group by customer_id)
v2
on v.customer_id = v2.customer_id
and v.NR_LOANS=v2.maxx;
-- g 4)
select month(date_from) mon, count(*)/(select count(distinct customer_id) from loan) from loan
group by mon;
-- h
SELECT FIRST_NAME, LAST_NAME, COUNT(DISTINCT CAR_ID) NUMBER_OF_CARS
FROM CUSTOMER c
LEFT JOIN LOAN L ON L.CUSTOMER_ID=C.ID
GROUP BY CUSTOMER_ID
ORDER BY NUMBER_OF_CARS DESC
LIMIT 4;

-- i
SELECT car.BRAND, count(*) FROM
car JOIN loan 
on car.id=loan.CAR_ID
group by car.brand
having count(*) =(
select count(*) from loan l join car c on c.id=l.car_id
group by c.brand
order by count(*) desc
limit 1);
-- j 
SELECT customer_id, sum(loan_price) result  from loan
where year(date_from)= year(now())
group by customer_id
limit 1;
-- k 1)
SELECT customer_ID, FIRST_NAME, LAST_NAME FROM CUSTOMER C
JOIN LOAN L ON C.ID=L.CUSTOMER_ID
WHERE (L.DATE_FROM BETWEEN '2018-02-01' and '2018-03-01') and L.car_id=4;
-- k 2)
SELECT customer_ID, FIRST_NAME, LAST_NAME FROM CUSTOMER C
JOIN LOAN L ON C.ID=L.CUSTOMER_ID
WHERE ((L.DATE_FROM BETWEEN '2017-11-01' and '2017-12-01') or (L.DATE_TO BETWEEN '2017-11-01' and '2017-12-01') or (l.date_from <= '2017-11-01' and L.DATE_TO >= '2017-12-01')) and car_id = 3; -- tu musi byc jeszcze jeden warunek!
-- l 
UPDATE car
SET color = 'pink'
WHERE car.id = 3;
-- m 
SELECT CUSTOMER_ID, FIRST_NAME, LAST_NAME FROM CUSTOMER c
JOIN LOAN L ON C.ID=L.CUSTOMER_ID
WHERE L.OFFICE_FROM_ID != L.OFFICE_TO_ID
GROUP BY CUSTOMER_ID
having count(*) =(
select count(*) from CUSTOMER CR join LOAN LN on CR.id=LN.CUSTOMER_ID
group by CR.ID
order by count(*) desc
limit 1);
-- n 
select substring_index(email, '@', -1) domain, count(email) em from customer
group by domain
order by em desc
limit 1;
-- o 
select car.id from car car where exists
(select count(distinct employee_id) empl
from keeper where car_id=car.id
having empl>=2);

select car_id, count(*) from car 
JOIN KEEPER ON CAR.ID=KEEPER.CAR_ID
GROUP BY CAR_ID
HAVING COUNT(*)>=2;
-- p 
SELECT *
from employee e
left join keeper k on k.employee_id = e.id 
where k.employee_id IS NULL;

