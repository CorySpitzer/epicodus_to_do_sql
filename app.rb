require('sinatra')
require('sinatra/activerecord')
require('sinatra/reloader')
also_reload('lib/*.rb')
require('./lib/task')
require('./lib/list')
require('pg')
require('pry')


get('/') do
  @tasks = Task.all
  erb(:index)
end

post('/lists') do
  @name = params.fetch('name')
  @tasks = Task.all
  @lists = List.all()
  erb(:lists)
end

get('/lists') do
  @lists = List.all()
  erb(:lists)
end

get('/tasks/:id/edit') do
  @task = Task.find(params.fetch("id").to_i())
  erb(:task_edit)
end

patch("/tasks/:id") do
  description = params.fetch("description")
  @task = Task.find(params.fetch("id").to_i())
  @task.update({:description => description})
  @tasks = Task.all()
  erb(:index)
end
