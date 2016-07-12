var express = require('express')
  , app     = express()
  , PouchDB = require('pouchdb');
 
var DataPouchDB = PouchDB.defaults({prefix: '/data/'});
app.use('/db', require('express-pouchdb')(DataPouchDB));

app.listen(3000);