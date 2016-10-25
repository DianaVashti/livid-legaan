DROP TABLE IF EXISTS topping;

-- \c topping;

CREATE TABLE topping (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  price MONEY
);

INSERT INTO topping (name, price)
  VALUES ('pepperoni',.50),('olives',.50),('mushrooms',.50),('green peppers',.50),('sausage',.50),('chicken',1),('banana peppers',.50),('bacon',1),('jalapenos',.50),('pineapple',.50),('onions',.50),('extra cheese',.50),('chives',.50),('anchovies',2),('shrimp',2);
