class Task
  attr_accessor :description
  define_method(:initialize) do
    @description = nil
  end
end
