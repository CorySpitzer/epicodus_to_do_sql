require('rspec')
require('task')
require('pg')

describe(Task) do
  describe('#description') do
    it('sets and gets a description') do
      drink_beer = Task.new()
      drink_beer.description = 'Drink beer!'
      expect(drink_beer.description).to(eq('Drink beer!'))
    end
  end

  describe('#completed') do
    it('sets and gets the boolean value of completed') do
      drink_beer = Task.new()
      drink_beer.completed = true
      expect(drink_beer.completed).to(eq(true))
    end
  end

  describe('.all') do
    it('returns an array of hashes representing the rows') do
      expect(Task.all).to(eq([]))
    end

    it('returns an array of hashes representing the rows') do
      # DB = PG.connect({:dbname => 'to_do_list_testing'})
      # task_objects = DB.exec('SELECT * FROM tasks;')
      # tasks = []
      # task_objects.each do |task_row|
      #   tasks.push(task_row)
      # end
      expect(@@tasks.all[0]).to(eq({"id"=>"1",
                     "description"=>"Eat Perogies",
                       "completed"=>"t",
                             "due"=>"2015-05-10",
                         "list_id"=>"1"}))
    end
  end

  describe("#save") do
    it("inserts a task into the list of tasks") do
      tasks = Task.new()
      tasks.save()
      expect(Task.all()).to(eq([tasks]))
    end
  end
end









#
