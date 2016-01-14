var express = require('express');
var app = express();
var redis = require('redis');
var session = require('express-session');
var RedisStore = require('connect-redis')(session);
var server = require('http').createServer(app);

app.configure(function() {
  app.use(express.cookieParser('keyboard-cat'));
  app.use(express.session({
        store: new RedisStore({
            host: process.env.REDIS_HOST || 'localhost',
            port: process.env.REDIS_PORT || 6379,
            db: process.env.REDIS_DB || 0
        }),
        cookie: {
            expires: false,
            maxAge: 30 * 24 * 60 * 60 * 1000
        }
    }));
});

app.get('/', function(req, res) {
  res.json({
    status: "ok"
  });
});

app.get('/hello/:name', function(req, res) {
  res.json({
    hello: req.params.name
  });
});

app.get('/benchmark/blank', function(req, res) {
  res.json();
});
app.get('/benchmark/template', function(req, res) {
  res.json();
});

function iterative(n) {
  var a = 0, b = 1, t;
  while (n-- > 0) {
    t = a;
    a = b;
    b += t;
  }
  return a;
}

app.get('/benchmark/fibonacci/:value', function(req, res) {
  var answer = iterative(req.params.value);

  res.json({
    value: req.params.value,
    answer: answer
  });
});

var port = process.env.HTTP_PORT || 3000;
server.listen(port);
console.log('Listening on port ' + port);
