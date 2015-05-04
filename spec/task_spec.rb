require('rspec')
require('task')

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
      # DB = PG.connect({:dbname => 'to_do_list_testing'})
      # task_objects = DB.exec('SELECT * FROM tasks;')
      # tasks = []
      expect(Task.all).to(eq([]))
      # task_objects.each do |task_row|
      #   tasks.push(task_row)
      # end
      # expect(tasks[0]['id']).to(eq('1'))
    end
  end
end









#
