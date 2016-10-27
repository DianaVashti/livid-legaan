var express = require('express');
var router = express.Router();
var db = require('../queries.js')
/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/api/topping', db.getAllToppings)

module.exports = router;
