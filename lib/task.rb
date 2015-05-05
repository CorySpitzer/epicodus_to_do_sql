class Task
  attr_accessor :description, :completed, :due, :list_id, :id
  @@tasks = []

  define_method(:initialize) do
    @description = nil
    @completed = false
  end

  # attr_accessor :description
  #
  # define_method(:description) do
  #   @description
  # end
  #
  # define_method(:description=) do |value|
  #   @description = value
  # end
  #


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
