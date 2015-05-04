require('./lib/task')
require('pg')

DB = PG.connect(:dbname => 'to_do_list_testing')
