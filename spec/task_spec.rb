require('spec_helper')

describe(Task) do

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
