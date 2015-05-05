class List
  attr_accessor :title, :id

  define_method(:initialize) do |params|
    @title = params.fetch(:title)
    @id = params.fetch(:id)
  end

end
