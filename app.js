var express = require('express')
  , cors = require('cors')
  , app     = express()
  , PouchDB = require('pouchdb')
  ;

PouchDB.plugin(require('pouchdb-quick-search'))
  ;
 
var DataPouchDB = PouchDB.defaults({prefix: '/data/'});

app.use(cors());

app.use('/db', require('express-pouchdb')(DataPouchDB));

var db = DataPouchDB("test");
var db2 = DataPouchDB("test2");
var journal = DataPouchDB("journal");

app.listen(3000);
