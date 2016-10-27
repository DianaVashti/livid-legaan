var promise = require('bluebird');

var options = {
  // Initialization Options
  promiseLib: promise
};

var pgp = require('pg-promise')(options);
var connectionString = 'postgres://localhost:5432/salmansalman';
var db = pgp(connectionString);

// add query functions

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

module.exports = {
  getAllToppings: getAllToppings
};
