DROP TABLE IF EXISTS cart;

-- \c cart;

CREATE TABLE cart (
  pizza_cart_id PRIMARY KEY INTEGER REFERENCES pizza_cart(cart_id),
  customer_id INTEGER REFERENCES customer(cust_id),
  product_cart_id INTEGER REFERENCES product_cart(cart_id),
  date TIMESTAMP,
  total MONEY
);
