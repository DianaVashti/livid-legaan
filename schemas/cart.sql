DROP TABLE IF EXISTS cart;

CREATE TABLE cart (
  id SERIAL PRIMARY KEY,
  customer_id INTEGER REFERENCES customer(id),
  date TIMESTAMP,
  total MONEY
);
