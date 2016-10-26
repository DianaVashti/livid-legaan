DROP TABLE IF EXISTS customer_cart;

CREATE TABLE customer_cart (
  customer_id INTEGER REFERENCES customer(id),
  cart_id INTEGER REFERENCES cart(id)
);
