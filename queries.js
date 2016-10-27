var promise = require('bluebird');

var options = {
  // Initialization Options
  promiseLib: promise
};

var pgp = require('pg-promise')(options);
var connectionString = 'postgres://localhost:5432/salmansalman';
var db = pgp(connectionString);

// add query functions
function updateToppings() {

}

function getAllToppings(req, res, next) {
  db.any('select * from topping')
    .then(function (data) {
      res.status(200)
        .json({
          status: 'success',
          data: data,
          message: 'Retrieved ALL toppings'
        });
    })
    .catch(function (err) {
      return next(err);
    });
}


function getAllProducts(req, res, next) {
  db.any('select * from product')
    .then(function (data) {
      res.status(200)
        .json({
          status: 'success',
          data: data,
          message: 'Retrieved ALL products'
        });
    })
    .catch(function (err) {
      return next(err);
    });
}


function getAllPizzas(req, res, next) {
  db.any('select * from pizza')
    .then(function (data) {
      res.status(200)
        .json({
          status: 'success',
          data: data,
          message: 'Retrieved ALL pizzas'
        });
    })
    .catch(function (err) {
      return next(err);
    });
}



function getAllCustomers(req, res, next) {
  db.any('select * from customer')
    .then(function (data) {
      res.status(200)
        .json({
          status: 'success',
          data: data,
          message: 'Retrieved ALL customer'
        });
    })
    .catch(function (err) {
      return next(err);
    });
}




function getAllCarts(req, res, next) {
  db.any('select * from cart')
    .then(function (data) {
      res.status(200)
        .json({
          status: 'success',
          data: data,
          message: 'Retrieved ALL carts'
        });
    })
    .catch(function (err) {
      return next(err);
    });
}


module.exports = {
  getAllToppings: getAllToppings
};
