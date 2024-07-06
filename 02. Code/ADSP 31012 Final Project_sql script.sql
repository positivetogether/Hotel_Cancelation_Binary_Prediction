
CREATE DATABASE IF NOT EXISTS Hotel;
USE Hotel;

CREATE TABLE hotel_bookings (
    booking_id INT PRIMARY KEY,
    hotel VARCHAR(20),
    lead_time INT,
    arrival_date DATE,
    stays_in_weekend_nights INT,
    stays_in_week_nights INT,
    meal VARCHAR(20),
    country VARCHAR(20) NULL,
	agent VARCHAR(20) NULL,
    company VARCHAR(20) NULL,
    market_segment VARCHAR(20),
    distribution_channel VARCHAR(20),
    is_repeated_guest INT,
    deposit_type VARCHAR(15),
    days_in_waiting_list INT,
    customer_type VARCHAR(15),
    reservation_status_date DATE,
    arrival_date_year INT,
    arrival_date_month VARCHAR(20)
);

-- UPDATE hotel_bookings
-- SET arrival_date_year = YEAR(arrival_date),
--     arrival_date_month = MONTHNAME(arrival_date);




CREATE TABLE IF NOT EXISTS guests (
    booking_id INT PRIMARY KEY,
    adults INT NULL,
    children INT NULL,
    babies INT NULL,
    FOREIGN KEY (booking_id) REFERENCES hotel_bookings (booking_id)
);



CREATE TABLE IF NOT EXISTS room_assignment (
    booking_id INT PRIMARY KEY,
    reserved_room_type VARCHAR(10),
    assigned_room_type VARCHAR(10),
    booking_changes INT,
    FOREIGN KEY (booking_id) REFERENCES hotel_bookings (booking_id)
);

CREATE TABLE IF NOT EXISTS payment_info (
    booking_id INT PRIMARY KEY,
    deposit_type VARCHAR(15),
    FOREIGN KEY (booking_id) REFERENCES hotel_bookings (booking_id)
);

CREATE TABLE IF NOT EXISTS booking_status (
    booking_id INT PRIMARY KEY,
    reservation_status VARCHAR(15),
    reservation_status_date DATE,
    arrival_date DATE,
    FOREIGN KEY (booking_id) REFERENCES hotel_bookings (booking_id)
);




CREATE TABLE IF NOT EXISTS economic_indicators (
    economic_id INT PRIMARY KEY,
    PPI FLOAT,
    CPI FLOAT,
    Production_Index FLOAT
);



CREATE TABLE IF NOT EXISTS unemployment_rate (
    unemployment_rate_id INT PRIMARY KEY,
    economic_indicator_id INT,
    unemployment_rate DECIMAL(5, 2),
    date DATE,
    FOREIGN KEY (economic_indicator_id) REFERENCES economic_indicators (economic_id)
);


CREATE TABLE IF NOT EXISTS hotel_economic_link (
    booking_id INT,
    economic_indicator_id INT,
    PRIMARY KEY (booking_id, economic_indicator_id),
    FOREIGN KEY (booking_id) REFERENCES hotel_bookings (booking_id),
    FOREIGN KEY (economic_indicator_id) REFERENCES economic_indicators (economic_id)
);



CREATE TABLE IF NOT EXISTS weather_data (
    weather_id INT PRIMARY KEY,
    datetime DATETIME,
    tempmax DECIMAL(5, 1),
    tempmin DECIMAL(5, 1),
    temp DECIMAL(5, 1),
    dew DECIMAL(5, 1),
    humidity DECIMAL(5, 1),
    precip DECIMAL(5, 3),
    snow INT
);



CREATE TABLE IF NOT EXISTS hotel_weather_link (
    booking_id INT,
    weather_id INT,
    PRIMARY KEY (booking_id, weather_id),
    FOREIGN KEY (booking_id) REFERENCES hotel_bookings (booking_id),
    FOREIGN KEY (weather_id) REFERENCES weather_data (weather_id)
);




CREATE TABLE IF NOT EXISTS tourism_data (
    tourism_id INT PRIMARY KEY,
    month DATE,
    tourists INT
);




CREATE TABLE IF NOT EXISTS hotel_tourism_link (
    booking_id INT,
    tourism_id INT,
    PRIMARY KEY (booking_id, tourism_id),
    FOREIGN KEY (booking_id) REFERENCES hotel_bookings (booking_id),
    FOREIGN KEY (tourism_id) REFERENCES tourism_data (tourism_id)
);




-- INSERT INTO weather_data (datetime, tempmax, tempmin, temp, dew, humidity, precip, snow)
-- VALUES 
-- ('7/1/15', 23.8, 17.4, 19.8, 16.5, 81.7, 2.986, 0);

-- INSERT INTO tourism_data (month, tourists)
-- VALUES 
-- ('2015-07-01', 319356);




show variables like 'local_infile';
set global local_infile = 1;

-- SELECT @@GLOBAL.secure_file_priv;



-- LOAD DATA LOCAL INFILE '/Users/sss/Desktop/DE_Hotel Project/hotel_bookings.csv' IGNORE
-- -- INTO TABLE hotel.hotel_bookings
-- FIELDS TERMINATED BY ','
-- OPTIONALLY ENCLOSED BY '"'
-- lines terminated by '\n' STARTING BY ''
-- IGNORE 1 ROWS;
-- SELECT * FROM hotel_bookings;
-- SELECT COUNT(*) AS total_rows FROM hotel_bookings;


-- LOAD DATA LOCAL INFILE '/Users/sss/Desktop/DE_Hotel Project/booking_status.csv' IGNORE
-- INTO TABLE hotel.booking_status
-- FIELDS TERMINATED BY ','
-- OPTIONALLY ENCLOSED BY '"'
-- lines terminated by '\n' STARTING BY ''
-- IGNORE 1 ROWS;
-- SELECT * FROM booking_status;
-- SELECT COUNT(*) AS total_rows FROM booking_status;

-- LOAD DATA LOCAL INFILE '/Users/sss/Desktop/DE_Hotel Project/economic_indicators.csv' IGNORE
-- INTO TABLE hotel.booking_status
-- FIELDS TERMINATED BY ','
-- OPTIONALLY ENCLOSED BY '"'
-- lines terminated by '\n' STARTING BY ''
-- IGNORE 1 ROWS;
-- SELECT * FROM economic_indicators;
-- SELECT COUNT(*) AS total_rows FROM economic_indicators;



