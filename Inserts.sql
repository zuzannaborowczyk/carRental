DELETE  FROM KEEPER WHERE ID<1000;
DELETE  FROM EMPLOYEE WHERE ID<1000;
DELETE  FROM LOAN WHERE ID<1000;
DELETE  FROM `POSITION` WHERE ID<1000;
DELETE  FROM CUSTOMER WHERE ID<1000;
DELETE  FROM CAR WHERE ID<1000;
DELETE  FROM OFFICE WHERE ID<1000;

use carhire;
-- insert into office
INSERT INTO office (street, street_number, city, phone_number, postal_code) VALUES ('Szkolna', 12, 'Strykowo', '645374653', '65-678');
INSERT INTO office (street, street_number, city, phone_number, postal_code) VALUES ('Kolorowa', 12, 'Poznan', '432123009', '77-876');
INSERT INTO office (street, street_number, city, phone_number, postal_code) VALUES ('Matejki', 1, 'Warszawa', '867564098', '22-765');
INSERT INTO office (street, street_number, city, phone_number, postal_code) VALUES ('Lipowa', 4, 'Katowice', '654342998', '24-677');
INSERT INTO office (street, street_number, city, phone_number, postal_code) VALUES ('Kolejowa', 55, 'Krakow', '654342345', '33-090');
-- insert into car
INSERT INTO car (car_type, color, power, engine_capacity, mile_age, brand, production_date) VALUES ('SUV', 'green', 188, 4 , 230, 'Skoda', 1993);
INSERT INTO car (car_type, color, power, engine_capacity, mile_age, brand, production_date) VALUES ('Jeep', 'blue', 250, 4, 800, 'Audi', 2000);
INSERT INTO car (car_type, color, power, engine_capacity, mile_age, brand, production_date) VALUES ('Sedan', 'green', 166, 2, 290, 'Hyundai', 2015);
INSERT INTO car (car_type, color, power, engine_capacity, mile_age, brand, production_date) VALUES ('SUV', 'black', 190, 4, 450, 'Skoda', 2013);
INSERT INTO car (car_type, color, power, engine_capacity, mile_age, brand, production_date) VALUES ('Jeep', 'black', 210, 4, 320, 'Audi', 2018);
INSERT INTO car (car_type, color, power, engine_capacity, mile_age, brand, production_date) VALUES ('Crossover', 'white', 290, 3, 210, 'Suzuki', 2016);
INSERT INTO car (car_type, color, power, engine_capacity, mile_age, brand, production_date) VALUES ('Crossover', 'grey', 170, 3, 580, 'Volvo', 2017);
INSERT INTO car (car_type, color, power, engine_capacity, mile_age, brand, production_date) VALUES ('Coupe', 'grey', 188, 2, 100, 'Mercedes-Benz', 2017);
INSERT INTO car (car_type, color, power, engine_capacity, mile_age, brand, production_date) VALUES ('Coupe', 'black', 150, 2, 23, 'Audi', 2017);
INSERT INTO car (car_type, color, power, engine_capacity, mile_age, brand, production_date) VALUES ('SUV', 'yellow', 298, 4, 68, 'Skoda', 2014);
INSERT INTO car (car_type, color, power, engine_capacity, mile_age, brand, production_date) VALUES ('Convertible', 'red', 240, 1, 400, 'Audi', 2013);
-- insert into customer
INSERT INTO customer (first_name, last_name, street, street_number, city, phone_number, postal_code, birth_date, credit_card_number, email) 
VALUES ('Marek', 'Kowalski', 'Poznanska', 34, 'Granowo', '765555534', '76-765', '1965-05-11', 'PL654354236453745', 'marek.kowalski@gmail.com');
INSERT INTO customer (first_name, last_name, street, street_number, city, phone_number, postal_code, birth_date, credit_card_number, email) 
VALUES ('Janusz', 'OFranski', 'Matejki', 6, 'Warszawa', '543234876', '65-098', '1987-09-08', 'PL645538565838364', 'janusz.ofranski@o2.pl');
INSERT INTO customer (first_name, last_name, street, street_number, city, phone_number, postal_code, birth_date, credit_card_number, email) 
VALUES ('Robert', 'Adamczyk', 'Grunwaldzka', 155, 'Warszawa', '765555888', '62-060', '1988-10-06', 'PL765423363437282744', 'r.adamczyk@wp.pl');
INSERT INTO customer (first_name, last_name, street, street_number, city, phone_number, postal_code, birth_date, credit_card_number, email) 
VALUES ('Roma', 'Andrzejewska', 'Towarowa', 1, 'Torun', '876342667', '87-987', '1955-01-01', 'PL4537458493744738365', 'roma.andrej@o2.pl');
INSERT INTO customer (first_name, last_name, street, street_number, city, phone_number, postal_code, birth_date, credit_card_number, email) 
VALUES ('Zuzanna', 'Borowczyk', 'Kosciuszki', 4, 'Zarnowo', '765112345', '76-654', '1993-08-07', 'PL6445224847563395', 'z.borowcz@gmail.com');
INSERT INTO customer (first_name, last_name, street, street_number, city, phone_number, postal_code, birth_date, credit_card_number, email) 
VALUES ('Michal', 'Ratajski', 'Polna', 55, 'Grodzisk Wielkopolski', '654121345', '76-645', '1993-09-07', 'DE5343738453729735373', 'michal.rataj@onet.pl');
INSERT INTO customer (first_name, last_name, street, street_number, city, phone_number, postal_code, birth_date, credit_card_number, email) 
VALUES ('Darek', 'Kwiatek', 'Nowa', 76, 'Minsk', '645384645', '54-888', '1988-06-30', 'DE98263453728263436839', 'robert.znaniecki@wp.pl');
INSERT INTO customer (first_name, last_name, street, street_number, city, phone_number, postal_code, birth_date, credit_card_number, email)
VALUES ('Monika', 'Kujawska', 'Parkowa', 66, 'Modrze', '9875432274', '76-876', '1988-11-11', 'PL8363538293735373', 'monika.kujawska@gmail.com');
INSERT INTO customer (first_name, last_name, street, street_number, city, phone_number, postal_code, birth_date, credit_card_number, email) 
VALUES ('Stefan', 'Robiecki', 'Ulanska', 82, 'Steszew', '986534674', '88-990', '1970-07-07', 'PL835783263436383645454', 'stefan.robiecki@gmail.com');
INSERT INTO customer (first_name, last_name, street, street_number, city, phone_number, postal_code, birth_date, credit_card_number, email) 
VALUES ('Hubert', 'Suchora', 'Kolejowa', 123, 'Gdansk', '7465243746', '76-090', '2000-01-02', 'DE9376357293646484764', 'stefan.robiecki@gmail.com');
-- insert into position
INSERT INTO position (position_name) VALUES ('ksiegowy');
INSERT INTO position (position_name) VALUES ('ksiegowy');
INSERT INTO position (position_name) VALUES ('kierownik');
INSERT INTO position (position_name) VALUES ('kierownik');
INSERT INTO position (position_name) VALUES ('sprzedawca');
-- insert into loan
INSERT INTO loan (customer_id, car_id, office_from_id, office_to_id, loan_price, date_from, date_to) VALUES (1, 1, 1, 1, 555, '2018-05-05', '2018-08-05');
INSERT INTO loan (customer_id, car_id, office_from_id, office_to_id, loan_price, date_from, date_to) VALUES (1, 2, 2, 2, 8765, '2018-01-01', '2018-06-10');
INSERT INTO loan (customer_id, car_id, office_from_id, office_to_id, loan_price, date_from, date_to) VALUES (3, 3, 3, 3, 4231, '2017-11-12', '2017-12-12');
INSERT INTO loan (customer_id, car_id, office_from_id, office_to_id, loan_price, date_from, date_to) VALUES (4, 4, 4, 4, 54, '2018-02-10', '2018-02-18');
INSERT INTO loan (customer_id, car_id, office_from_id, office_to_id, loan_price, date_from, date_to) VALUES (5, 5, 5, 5, 350, '2018-04-01', '2018-07-09');
INSERT INTO loan (customer_id, car_id, office_from_id, office_to_id, loan_price, date_from, date_to) VALUES (6, 5, 5, 5, 350, '2018-04-01', '2018-07-09');
INSERT INTO loan (customer_id, car_id, office_from_id, office_to_id, loan_price, date_from, date_to) VALUES (7, 5, 5, 1, 350, '2018-04-01', '2018-07-09');
INSERT INTO loan (customer_id, car_id, office_from_id, office_to_id, loan_price, date_from, date_to) VALUES (7, 5, 5, 2, 350, '2018-04-01', '2018-07-09');
INSERT INTO loan (customer_id, car_id, office_from_id, office_to_id, loan_price, date_from, date_to) VALUES (7, 5, 5, 4, 350, '2018-04-01', '2018-07-09');
-- insert into employee
INSERT INTO employee (first_name, last_name, office_id, position_id, birthdate) VALUES ('Artur', 'Zablocki', 1, 1, '1990-08-07');
INSERT INTO employee (first_name, last_name, office_id, position_id, birthdate) VALUES ('Natalia', 'Szreniawska', 2, 2, '1988-09-24');
INSERT INTO employee (first_name, last_name, office_id, position_id, birthdate) VALUES ('Michal', 'Ratajski', 3, 3, '1976-08-12');
INSERT INTO employee (first_name, last_name, office_id, position_id, birthdate) VALUES ('Jacek', 'PFerd', 4, 4, '1977-10-05');
INSERT INTO employee (first_name, last_name, office_id, position_id, birthdate) VALUES ('Natalia', 'Kempa', 5, 5, '1975-06-06');
INSERT INTO employee (first_name, last_name, office_id, position_id, birthdate) VALUES ('Michalina', 'Sliwka', 4, 5, '1979-06-06');
-- insert into keeper
INSERT INTO keeper (employee_id, car_id) VALUES (1, 1);
INSERT INTO keeper (employee_id, car_id) VALUES (2, 2);
INSERT INTO keeper (employee_id, car_id) VALUES (3, 2);
INSERT INTO keeper (employee_id, car_id) VALUES (4, 4);
INSERT INTO keeper (employee_id, car_id) VALUES (5, 5);