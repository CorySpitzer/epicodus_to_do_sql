require('rspec')
require('list')


describe(List) do
  describe('#title') do
    it('gets or sets the title') do
      list = List.new({:title => "Groceries", :id => nil})
      list.title = "food"
      expect(list.title).to(eq("food"))
    end
  end

  describe('#id') do
    it('will get and set id') do
      list = List.new({:title => 'Groceries', :id => nil})
      list.id = 1
      expect(list.id).to(eq(1))
    end
  end

end
