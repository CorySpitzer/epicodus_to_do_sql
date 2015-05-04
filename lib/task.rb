class Task
  attr_accessor :description, :completed

  define_method(:initialize) do
    @description = nil
    @completed = false
  end

end
