DROP TABLE IF EXISTS product;
-- \c product;

CREATE TABLE product (
  topping_id SERIAL PRIMARY KEY,
  name VARCHAR,
  price MONEY
);

INSERT INTO product (name, price)
  VALUES ();
