ENV['RACK_ENV'] = 'test'

require('rspec')
require('pg')
require('task')
require('list')
require('pry')
require('sinatra/activerecord')



RSpec.configure do |config|
  config.after(:each) do
    Task.all.each do |task|
      task.destroy
    end
  end
end
