INSERT INTO cars (
    car_id,
    make,
    model,
    color,
    salesperson_id,
    customer_id,
    invoice_id,
    ticket_id,
) VALUES (
    1,
    'Honda',
    'Civic',
    'White',
    NULL,
    1,
    NULL,
    1,
);

INSERT INTO cars (
    car_id,
    make,
    model,
    color,
    salesperson_id,
    customer_id,
    invoice_id,
    ticket_id,
) VALUES (
    2,
    'Toy',
    'Yoda',
    'Green',
    2,
    1,
    1,
    NULL
);

INSERT INTO salesperson (
    salesperson_id,
    first_name,
    last_name
) VALUES (
    1,
    'Tom',
    'Riddle'
);

INSERT INTO salesperson (
    salesperson_id,
    first_name,
    last_name
) VALUES (
    1,
    'Luna',
    'Lovegood'
);

INSERT INTO customers (
    customer_id,
    first_name,
    last_name,
    phone,
    email
) VALUES (
    1,
    'Jack',
    'Sparrow',
    '111-111-1119',
    'U-ALMOST-CAUGHT-CAPTIAN-JACK-SPARROW@gmail.com'
);

INSERT INTO customers (
    customer_id,
    first_name,
    last_name,
    phone,
    email
) VALUES (
    2,
    'Aaron',
    'Smith',
    '111-111-1111',
    'aaronsmith@gmail.com'
);

INSERT INTO invoices (
    invoice_id,
    invoice_date,
    car_id,
    salesperson_id,
    customer_id
) VALUES (
    1,
    1,
    1,
    1,
);

INSERT INTO invoices (
    invoice_id,
    invoice_date,
    car_id,
    salesperson_id,
    customer_id
) VALUES (
    2,
    2,
    2,
    2,
);

INSERT INTO mechanics (
    mechanic_id,
    ticket_id,
    part_id,
    car_id
) VALUES (
    1,
    1,
    1,
    1
);

INSERT INTO mechanics (
    mechanic_id,
    ticket_id,
    part_id,
    car_id
) VALUES (
    2,
    2,
    2,
    2
);

INSERT INTO service_records (
    ticket_id,
    customer_id,
    car_id,
    part_id,
    mechanic_id,
) VALUES (
    1,
    1,
    1,
    1,
    1
);

INSERT INTO service_records (
    ticket_id,
    customer_id,
    car_id,
    part_id,
    mechanic_id,
) VALUES (
    2,
    2,
    2,
    2,
    2
);

INSERT INTO parts (
    part_id,
    car_id
) VALUES (
    1,
    2
);

INSERT INTO parts (
    part_id,
    car_id
) VALUES (
    2,
    NULL
);