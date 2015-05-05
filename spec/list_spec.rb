require('rspec')
require('pg')
require('list')

DB = PG.connect({:dbname => 'to_do_list_testing'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM lists *;")
  end
end

describe(List) do
  # before() do
  #   List.clear
  # end

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

  describe('.all') do
    it('initially return an empty array') do
      expect(List.all).to(eq([]))
    end
  end

  describe('#save') do
    it('will save values in the tasks array') do
      list = List.new({:title => 'Groceries', :id => nil})
      list.save
      expect(List.all).to(eq([list]))
    end
  end

  describe('.clear') do
    it('will clear entries from tasks array') do
      list = List.new({:title => 'Groceries', :id => nil})
      list.save
      List.clear
      expect(List.all).to(eq([]))
    end
  end

  describe('#==') do
    it('makes two lists equal if they have the same title') do
      list = List.new({:title => 'hamburger', :id => nil})
      list2 = List.new({:title => 'hamburger', :id => nil})
      expect(list).to(eq(list2))
    end
  end
end
