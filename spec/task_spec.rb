require('rspec')
require('pg')
require('task')
require('pg')

DB = PG.connect({:dbname => 'to_do_list_testing'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec('DELETE FROM tasks *;')
  end
end

describe(Task) do
  # before() do
  #   Task.clear
  # end

  describe('#description') do
    it('sets and gets a description') do
      # drink_beer = Task.new()
      # drink_beer.description = 'Drink beer!'
      # expect(drink_beer.description).to(eq('Drink beer!'))
      test_task = Task.new({:description => 'learn SQL'})
      test_task.save()
      expect(test_task.description()).to(eq('learn SQL'))
    end
  end

  describe('#completed') do
    it('sets and gets the boolean value of completed') do
      drink_beer = Task.new(:completed => false)
      drink_beer.completed = true
      expect(drink_beer.completed).to(eq(true))
    end
  end

  describe('#due') do
    it('set and gets the due date') do
      task = Task.new({})
      task.due = '2015-05-12'
      expect(task.due()).to(eq('2015-05-12'))
    end
  end

  describe('#list_id') do
    it('will set or get a list id') do
      task = Task.new({})
      task.list_id = 1
      expect(task.list_id()).to(eq(1))
    end
  end

  describe('#id') do
    it('will set or get the id') do
      task = Task.new({})
      task.id = 1
      expect(task.id()).to(eq(1))
    end
  end

  describe('.all') do
    it('returns an array of hashes representing the rows') do
      expect(Task.all).to(eq([]))
    end
# <<<<<<< HEAD
#
#     it('returns an array of hashes representing the rows') do
#       # DB = PG.connect({:dbname => 'to_do_list_testing'})
#       # task_objects = DB.exec('SELECT * FROM tasks;')
#       # tasks = []
#       # task_objects.each do |task_row|
#       #   tasks.push(task_row)
#       # end
#       expect(@@tasks.all[0]).to(eq({"id"=>"1",
#                      "description"=>"Eat Perogies",
#                        "completed"=>"t",
#                              "due"=>"2015-05-10",
#                          "list_id"=>"1"}))
#     end
#   end
#
#   describe("#save") do
#     it("inserts a task into the list of tasks") do
#       tasks = Task.new()
#       tasks.save()
#       expect(Task.all()).to(eq([tasks]))
# =======
  end

  describe('#save') do
    it('saves a task') do
      task = Task.new(:description => 'wash the lion')
      task.save()
      expect(Task.all[0]['description']).to(eq("wash the lion"))
    end
  end

  # describe('.find') do
  #   it('will find a particular task based on task id') do
  #     task = Task.new({:id => 1})
  #     task.save()
  #     task2 = Task.new({:id => 2})
  #     task2.save()
  #     expect(Task.find(task.id())).to(eq(task))
  #   end
  # end


  describe('.clear') do
    it('will clear saved values from the array') do
      task = Task.new({})
      task.save()
      Task.clear()
      expect(Task.all()).to(eq([]))
    end
  end

  describe('#==') do
    it('is the same task if it has the same description and same due date') do
      task = Task.new({})
      task.description = 'drink beer'
      task.due = '2015-05-05'
      task2 = Task.new({})
      task2.description = 'drink beer'
      task2.due = '2015-05-05'
      expect(task.==(task2)).to(eq(true))
#>>>>>>> cs_and_ib
    end
  end
end









#
