class Task
  attr_accessor :description, :completed
  @@tasks = []
  define_method(:initialize) do
    @description = nil
    @completed = false
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

end
