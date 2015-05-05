require('rspec')
require('list')


describe(List) do
  describe('#title') do
    it('gets or sets the title') do
      list = List.new({:title => "Groceries"})
      list.title = "food"
      expect(list.title).to(eq("food"))
    end
  end

end
