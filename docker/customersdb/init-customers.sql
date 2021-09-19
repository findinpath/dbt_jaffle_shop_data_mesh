CREATE TABLE customers(
	id INT PRIMARY KEY,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL);
	
COPY customers (id, first_name, last_name, email) from '/home/dump/raw_customers.csv' delimiter ','  csv header;
