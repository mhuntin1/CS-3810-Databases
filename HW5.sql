/*
Mark Huntington
CS 3810
Homework #5: Design and Normalize Airline
*/

CREATE TABLE Airlines(
   name VARCHAR (15),
   country VARCHAR (15),
   airline_ID VARCHAR (3),
   PRIMARY KEY (airline_ID)
);

CREATE TABLE Customer(
   first_name VARCHAR (15),
   last_name VARCHAR (20),
   email VARCHAR(25),
   phone_number VARCHAR(15),
   customer_id SERIAL,
   street VARCHAR(15),
   city VARCHAR(15),
   State_or_Province VARCHAR(15),
   postal_code VARCHAR(10),
   country VARCHAR (15),
   PRIMARY KEY (customer_id)   
);

CREATE TABLE Flight(
   origin_city VARCHAR(15),
   destination_city VARCHAR(15),
   flight_number VARCHAR(5),
   airline_ID VARCHAR(5),
   flight_length VARCHAR(10),
   departure_date VARCHAR(10),
   departure_time VARCHAR(10),
   arrival_date VARCHAR(10),
   arrival_time VARCHAR(10),
   PRIMARY KEY (flight_number),
   FOREIGN KEY (airline_ID) REFERENCES Airlines (airline_ID)
);

CREATE TABLE Booking(
   booking_date CURRENT_DATE,
   booking_number SERIAL,
   booking_ciy VARCHAR (15),
   PRIMARY KEY (booking_number),
   FOREIGN KEY (customer_id) REFERENCES Customer (customer_id)
);


   