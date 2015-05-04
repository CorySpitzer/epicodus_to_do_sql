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

end
