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
end
