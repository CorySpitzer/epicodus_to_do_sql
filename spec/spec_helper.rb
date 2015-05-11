ENV['RACK_ENV'] = 'test'

require('rspec')
require('pg')
require('task')
require('list')
require('pry')
require('activerecord')


#
# RSpec.configure do |config|
#   config.after(:each) do
#     DB.exec("DELETE FROM clients *;")
#     DB.exec("DELETE FROM stylists *;")
#     DB.exec("DELETE FROM stylists_clients *;")
#   end
# end
