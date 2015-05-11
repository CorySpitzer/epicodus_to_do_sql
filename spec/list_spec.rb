require('spec_helper')


describe(List) do
  describe('#tasks') do
    it('tells which are in the list') do
      list = List.create({name: "list"})
      task1 = Task.create({ description: "task1", list_id: list_id})
      task2 = Task.create({ description: "task2", list_id: list_id})
      expect(list.tasks()).to(eq([task1, task2]))
    end
  end
end
