var express = require('express');
var router = express.Router();
var db = require('../queries.js')
/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/api/topping', db.getAllToppings)
router.get('/api/product', db.getAllProducts);
router.get('/api/pizza', db.getAllPizzas);
router.get('/api/customer', db.getAllCustomers);
router.get('/api/cart', db.getAllCarts);


module.exports = router;
