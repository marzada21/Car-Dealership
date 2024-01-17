-- Car Dealership ERD - Database Creation Project

-- Creating the Tables

-- cars table
CREATE TABLE cars (
    car_id SERIAL PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(50),
    color VARCHAR(50),
    FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id),
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY(invoice_id) REFERENCES invoices(invoice_id),
    FOREIGN KEY(ticket_id) REFERENCES service_records(ticket_id)
);

CREATE TABLE salesperson (
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE invoices (
    invoice_id SERIAL,
    invoice_date DATE DEFAULT current_date,
    FOREIGN KEY(car_id) REFERENCES cars(car_id),
    FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id),
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE mechanics (
    mechanic_id SERIAL PRIMARY KEY,
    FOREIGN KEY(ticket_id) REFERENCES service_records(ticket_id),
    FOREIGN KEY(part_id) REFERENCES parts(part_id),
    FOREIGN KEY(car_id) REFERENCES cars(car_id)
);

CREATE TABLE service_records (
    ticket_id SERIAL PRIMARY KEY,
    service_date DATE DEFAULT current_date,
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY(car_id) REFERENCES cars(car_id),
    FOREIGN KEY(part_id) REFERENCES parts(part_id),
    FOREIGN KEY(mechanic_id) REFERENCES mechanics(mechanic_id)
);

CREATE TABLE parts (
    part_id SERIAL PRIMARY KEY,
    FOREIGN KEY(car_id) REFERENCES cars(car_id)
);