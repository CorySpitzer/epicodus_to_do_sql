require('spec_helper')

describe(Task) do

  it("tells which list it belongs to") do
    list = List.create({name: "list"})
    task = Task.create({description: "task", list_id: list.id()})
    expect(task.list()).to(eq(list))
  end

  describe(".not_done") do
    it("returns the not done tasks") do
      undone1 = Task.create({description: "gotta do it", done: false})
      undone2 = Task.create({description: "gotta do it too", done: false})
      undone_tasks = [undone1, undone2]
      Task.create({description: "done task", done: true})
      expect(Task.not_done()).to(eq(undone_tasks))
    end
  end

end
