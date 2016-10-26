DROP TABLE IF EXISTS pizza_topping;

CREATE TABLE pizza_topping (
product_id INTEGER REFERENCES product(id),
cart_id INTEGER REFERENCES cart(id)
);
