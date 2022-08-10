CREATE TABLE Theater(
theater_id SERIAL PRIMARY KEY,
name_ VARCHAR(100),
address VARCHAR(100)
);

CREATE TABLE Movies(
movie_id SERIAL PRIMARY KEY,
name_ VARCHAR(75),
description VARCHAR(100),
length_ INTEGER,
rating VARCHAR(5)
);

CREATE TABLE Ticket(
ticket_id SERIAL PRIMARY KEY,
ticket_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
movie_id INTEGER NOT NULL,
FOREIGN KEY(movie_id) REFERENCES Movies(movie_id)
);

CREATE TABLE Order_Ticket(
quantity INTEGER,
order_id INTEGER NOT NULL,
FOREIGN KEY(order_id) REFERENCES Order_(order_id),
ticket_id INTEGER NOT NULL,
FOREIGN KEY(ticket_id) REFERENCES Ticket(ticket_id)
);

CREATE TABLE Order_(
order_id SERIAL PRIMARY KEY,
order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
customer_id INTEGER NOT NULL,
FOREIGN KEY(customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Customer(
customer_id SERIAL PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(50)
);


