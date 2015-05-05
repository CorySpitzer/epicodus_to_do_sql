require('sinatra')
require('sinatra/reloader')
also_reload('lib/*.rb')
require('./lib/task')
require('./lib/list')

get('/') do
  erb(:index)
end
