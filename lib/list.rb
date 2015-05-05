class List
  attr_accessor :title

  define_method(:initialize) do |params|
    @title = params.fetch(:title)
  end

end
