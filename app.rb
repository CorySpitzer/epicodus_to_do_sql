require('sinatra')
require('sinatra/reloader')
also_reload('lib/*.rb')
require('./lib/task')
require('./lib/list')
require('pg')
require('pry')

get('/') do
  erb(:index)
end

post('/lists') do
  @title = params.fetch('title')
  erb(:lists)
end

get('/lists') do
  @lists = List.all()
  erb(:lists)
end
