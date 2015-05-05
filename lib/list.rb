class List
  attr_accessor :title, :id

  @@lists = []

  define_method(:initialize) do |params|
    @title = params.fetch(:title)
    @id = params.fetch(:id)
  end

  define_singleton_method(:all) do
    @@lists
  end

  define_method(:save) do
    @@lists.push(self)
  end

  define_singleton_method(:clear) do
    @@lists = []
  end
end
