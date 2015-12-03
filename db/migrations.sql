CREATE DATABASE shopping;
\c shopping
CREATE TABLE items (id SERIAL PRIMARY KEY, name text, quantity integer);
