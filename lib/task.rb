class Task
  attr_accessor :description, :completed, :due, :list_id, :id
  @@tasks = []

  define_method(:initialize) do
    @description = nil
    @completed = false
    @id = nil
    @list_id = nil
    @due = nil
  end

  define_singleton_method(:all) do
    @@tasks
  end

  define_method(:save) do
    @@tasks.push(self)
  end

  define_singleton_method(:clear) do
    @@tasks = []
  end

  define_singleton_method(:find) do |id|
    return_task = nil
    Task.all.each do |task|
      if task.id == id
        return_task = task
      end
    end
    return_task
  end

  define_method(:==) do |task|
    task.description == self.description and task.due == self.due
  end

end
