require('sinatra')
require('sinatra/reloader')
also_reload('lib/*.rb')
require('./lib/task')
require('./lib/list')
require('pg')
require('pry')

DB = PG.connect(:dbname => 'to_do_list_testing')

get('/') do
  erb(:index)
end

post('/lists') do
  @title = params.fetch('title')
  # We need @lists here as well, because there are
  # different ways to get to lists
  @lists = List.all()
  erb(:lists)
end

get('/lists') do
  @lists = List.all()
  erb(:lists)
end
