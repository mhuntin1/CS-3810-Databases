/*
Mark Huntington
CS 3810
Homework #6: User Interface
*/

INSERT INTO Airlines (name, country, airline_ID)
                     VALUES ('AirCan', 'Canada', '115');
INSERT INTO Airlines (name, country, airline_ID)
                     VALUES ('United', 'USA', '116');
INSERT INTO Airlines (name, country, airline_ID)
                     VALUES ('BA', 'UK', '117');

INSERT INTO Flight (origin_city, destination_city, flight_number,
                    airline_code, flight_length, departure_date,
					departure_time, arrival_date, arrival_time)
					VALUES('New York', 'London', '15', '116', 
					'2hr 15min', '12/10/17', '10:00am', '12/10/17',
					'12:15pm');
INSERT INTO Flight (origin_city, destination_city, flight_number,
                    airline_code, flight_length, departure_date,
					departure_time, arrival_date, arrival_time)
					VALUES('Chicago', 'London', '16', '116', 
					'3hr 15min', '12/10/17', '10:00am', '12/10/17',
					'1:15pm');
INSERT INTO Flight (origin_city, destination_city, flight_number,
                    airline_code, flight_length, departure_date,
					departure_time, arrival_date, arrival_time)
					VALUES('New York', 'Toronto', '17', '116', 
					'1hr 15min', '12/10/17', '1:00am', '12/10/17',
					'2:15am');
INSERT INTO Flight (origin_city, destination_city, flight_number,
                    airline_code, flight_length, departure_date,
					departure_time, arrival_date, arrival_time)
					VALUES('Chicago', 'Toronto', '18', '116', 
					'2hr 15min', '12/10/17', '9:00am', '12/11/17',
					'11:15am');
INSERT INTO Flight (origin_city, destination_city, flight_number,
                    airline_code, flight_length, departure_date,
					departure_time, arrival_date, arrival_time)
					VALUES('London', 'France', '19', '117', 
					'2hr 15min', '12/10/17', '12:00am', '12/10/17',
					'2:15pm');
INSERT INTO Flight (origin_city, destination_city, flight_number,
                    airline_code, flight_length, departure_date,
					departure_time, arrival_date, arrival_time)
					VALUES('London', 'Toronto', '20', '117', 
					'4hr 15min', '12/10/17', '9:00am', '12/10/17',
					'1:15pm');
INSERT INTO Flight (origin_city, destination_city, flight_number,
                    airline_code, flight_length, departure_date,
					departure_time, arrival_date, arrival_time)
					VALUES('Edinburgh', 'France', '21', '117', 
					'1hr 15min', '12/10/17', '4:00am', '12/10/17',
					'5:15pm');
INSERT INTO Flight (origin_city, destination_city, flight_number,
                    airline_code, flight_length, departure_date,
					departure_time, arrival_date, arrival_time)
					VALUES('Edinburgh', 'Toronto', '22', '117', 
					'2hr 15min', '12/10/17', '12:00pm', '12/10/17',
					'2:15pm');
INSERT INTO Flight (origin_city, destination_city, flight_number,
                    airline_code, flight_length, departure_date,
					departure_time, arrival_date, arrival_time)
					VALUES('Montreal', 'London', '23', '115', 
					'2hr 15min', '12/10/17', '1:00am', '12/10/17',
					'3:15pm');
INSERT INTO Flight (origin_city, destination_city, flight_number,
                    airline_code, flight_length, departure_date,
					departure_time, arrival_date, arrival_time)
					VALUES('Montreal', 'Edinburgh', '24', '115', 
					'2hr 30min', '12/10/17', '10:00am', '12/10/17',
					'12:30pm');
INSERT INTO Flight (origin_city, destination_city, flight_number,
                    airline_code, flight_length, departure_date,
					departure_time, arrival_date, arrival_time)
					VALUES('Toronto', 'London', '25', '115', 
					'2hr 15min', '12/10/17', '10:00am', '12/10/17',
					'12:15pm');					
INSERT INTO Flight (origin_city, destination_city, flight_number,
                    airline_code, flight_length, departure_date,
					departure_time, arrival_date, arrival_time)
					VALUES('Toronto', 'Edinburgh', '26', '115', 
					'5hr 15min', '12/10/17', '10:00am', '12/10/17',
					'3:15pm');