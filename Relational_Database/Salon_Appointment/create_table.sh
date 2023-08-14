#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=salon -c"

#CREATE TABLES
##customers
$PSQL "CREATE TABLE customers();"
##appointments
$PSQL "CREATE TABLE appointments();"
##services
$PSQL "CREATE TABLE services();"

#PRIMARY KEYS
##customer_id
$PSQL "ALTER TABLE customers ADD COLUMN customer_id SERIAL PRIMARY KEY"
##service_id
$PSQL "ALTER TABLE services ADD COLUMN service_id SERIAL PRIMARY KEY"
##appointment_id
$PSQL "ALTER TABLE appointments ADD COLUMN appointment_id SERIAL PRIMARY KEY"

#FOREIGN KEYS - APPOINTMENT
## customer_id
$PSQL "ALTER TABLE appointments ADD COLUMN customer_id INT NOT NULL REFERENCES customers(customer_id)"
## service_id
$PSQL "ALTER TABLE appointments ADD COLUMN service_id INT NOT NULL REFERENCES services(service_id)"
## time VARCHAR
$PSQL "ALTER TABLE appointments ADD COLUMN time VARCHAR(50) NOT NULL"

# CUSTOMERS
## phone VARCHAR
$PSQL "ALTER TABLE customers ADD COLUMN phone VARCHAR(50) NOT NULL UNIQUE"
## name VARCHAR
$PSQL "ALTER TABLE customers ADD COLUMN name VARCHAR(50) NOT NULL"

# SERVICES
## name VARCHAR
$PSQL "ALTER TABLE services ADD COLUMN name VARCHAR(50) NOT NULL"

##ADD VALUES
$PSQL "TRUNCATE TABLE services, customers, appointments"
$PSQL "INSERT INTO services (name) VALUES ('cut'), ('color'), ('perm'), ('style'), ('trim')"