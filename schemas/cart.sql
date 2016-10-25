DROP TABLE IF EXISTS cart;

-- \c cart;

CREATE TABLE cart (
  customer_id INTEGER PRIMARY KEY REFERENCES customer(cust_id),
  product_cart_id INTEGER REFERENCES product_cart(cart_id),
  pizza_cart_id INTEGER REFERENCES pizza_cart(cart_id),
  date TIMESTAMP,
  total MONEY
);
