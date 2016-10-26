DROP TABLE IF EXISTS pizza_cart;

CREATE TABLE pizza_cart (
  pizza_id INTEGER REFERENCES pizza(id),
  cart_id INTEGER REFERENCES cart(id)
);
