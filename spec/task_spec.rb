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

  describe('the database connection') do
    it('') do
      to_do_db = PG.connect({:dbname => 'to_do_list_testing'})
      task_objects = to_do_db.exec('SELECT * FROM tasks;')
      tasks = []
      task_objects.each do |task_row|
        tasks.push(task_row)
      end
      expect(tasks[0]['id']).to(eq('1'))
    end
  end
end









#
