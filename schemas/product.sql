DROP TABLE IF EXISTS product;

CREATE TABLE product (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  price MONEY,
  quantity INTEGER
);

INSERT INTO product (name, price)
  VALUES ('Coke 12oz.',1.50),('Sprite 12oz.',1.50),('Buffalo Wings',4.5),('Kalamari Bites',4.5),('Fried Gator Bites',5.5),('Milk Gallon',6.5),('Soft Boiled Egg',2);
