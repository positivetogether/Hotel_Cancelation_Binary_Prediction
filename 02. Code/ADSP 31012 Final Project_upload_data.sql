LOAD DATA LOCAL INFILE '/Users/sss/Desktop/DE_Hotel Project/hotel_bookings.csv' IGNORE
INTO TABLE hotel.hotel_bookings
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
lines terminated by '\n' STARTING BY ''
IGNORE 1 ROWS;
SELECT * FROM hotel_bookings;
SELECT COUNT(*) AS total_rows FROM hotel_bookings;


LOAD DATA LOCAL INFILE '/Users/sss/Desktop/DE_Hotel Project/booking_status.csv' IGNORE
INTO TABLE hotel.booking_status
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
lines terminated by '\n' STARTING BY ''
IGNORE 1 ROWS;
SELECT * FROM booking_status;
SELECT COUNT(*) AS total_rows FROM booking_status;



LOAD DATA LOCAL INFILE '/Users/sss/Desktop/DE_Hotel Project/guests.csv' IGNORE
INTO TABLE hotel.guests
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
lines terminated by '\n' STARTING BY ''
IGNORE 1 ROWS;
SELECT * FROM guests;
SELECT COUNT(*) AS total_rows FROM guests;




LOAD DATA LOCAL INFILE '/Users/sss/Desktop/DE_Hotel Project/economic_indicators.csv' IGNORE
INTO TABLE hotel.economic_indicators
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
lines terminated by '\n' STARTING BY ''
IGNORE 1 ROWS;
SELECT * FROM economic_indicators;
SELECT COUNT(*) AS total_rows FROM economic_indicators;





LOAD DATA LOCAL INFILE '/Users/sss/Desktop/DE_Hotel Project/payment_info.csv' IGNORE
INTO TABLE hotel.payment_info
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
lines terminated by '\n' STARTING BY ''
IGNORE 1 ROWS;
SELECT * FROM payment_info;
SELECT COUNT(*) AS total_rows FROM payment_info;



LOAD DATA LOCAL INFILE '/Users/sss/Desktop/DE_Hotel Project/room_assignment.csv' IGNORE
INTO TABLE hotel.room_assignment
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
lines terminated by '\n' STARTING BY ''
IGNORE 1 ROWS;
SELECT * FROM room_assignment;
SELECT COUNT(*) AS total_rows FROM room_assignment;



LOAD DATA LOCAL INFILE '/Users/sss/Desktop/DE_Hotel Project/tourism_data.csv' IGNORE
INTO TABLE hotel.tourism_data
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
lines terminated by '\n' STARTING BY ''
IGNORE 1 ROWS;
SELECT * FROM tourism_data;
SELECT COUNT(*) AS total_rows FROM tourism_data;



LOAD DATA LOCAL INFILE '/Users/sss/Desktop/DE_Hotel Project/unemployment_rate.csv' IGNORE
INTO TABLE hotel.unemployment_rate
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
lines terminated by '\n' STARTING BY ''
IGNORE 1 ROWS;
SELECT * FROM unemployment_rate;
SELECT COUNT(*) AS total_rows FROM unemployment_rate;




LOAD DATA LOCAL INFILE '/Users/sss/Desktop/DE_Hotel Project/weather_data.csv' IGNORE
INTO TABLE hotel.weather_data
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
lines terminated by '\n' STARTING BY ''
IGNORE 1 ROWS;
SELECT * FROM weather_data;
SELECT COUNT(*) AS total_rows FROM weather_data;


LOAD DATA LOCAL INFILE '/Users/sss/Desktop/DE_Hotel Project/hotel_weather_link.csv' IGNORE
INTO TABLE hotel.hotel_weather_link
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
lines terminated by '\n' STARTING BY ''
IGNORE 1 ROWS;
SELECT * FROM hotel_weather_link;
SELECT COUNT(*) AS total_rows FROM hotel_weather_link;


LOAD DATA LOCAL INFILE '/Users/sss/Desktop/DE_Hotel Project/hotel_economic_link.csv' IGNORE
INTO TABLE hotel.hotel_economic_link
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
lines terminated by '\n' STARTING BY ''
IGNORE 1 ROWS;
SELECT * FROM hotel_economic_link;
SELECT COUNT(*) AS total_rows FROM hotel_economic_link;



LOAD DATA LOCAL INFILE '/Users/sss/Desktop/DE_Hotel Project/hotel_tourism_link.csv' IGNORE
INTO TABLE hotel.hotel_tourism_link
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
lines terminated by '\n' STARTING BY ''
IGNORE 1 ROWS;
SELECT * FROM hotel_tourism_link;
SELECT COUNT(*) AS total_rows FROM hotel_tourism_link;
