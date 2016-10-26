DROP TABLE IF EXISTS customer_cart;

CREATE TABLE customer_cart (
  -- column_name DATA_TYPE relationship-->REFERENCES(foriegn key) table_name(column_name)
  customer_id INTEGER REFERENCES customer(id),
  cart_id INTEGER REFERENCES cart(id)
);
