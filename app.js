var express = require('express')
  , app     = express()
  , PouchDB = require('pouchdb');
 
var DataPouchDB = PouchDB.defaults({prefix: '/data/'});
app.use('/db', require('express-pouchdb')(DataPouchDB));

var db = DataPouchDB("test");
var db2 = DataPouchDB("test2");
var journal = DataPouchDB("journal");

app.listen(3000);