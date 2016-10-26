DROP TABLE IF EXISTS pizza;

CREATE TABLE pizza (
  id SERIAL PRIMARY KEY,
  sauce VARCHAR,
  size MONEY,
  crust VARCHAR,
  quantity INTEGER
);
