class List
  attr_accessor :title, :id

  @@lists = []

  define_method(:initialize) do |params|
    @title = params.fetch(:title)
    @id = params.fetch(:id)
  end

  define_singleton_method(:all) do
    db_lists = DB.exec("SELECT * FROM lists;")
    out_lists = []
    db_lists.each do |list| #list is a hash
      out_lists.push(list)
    end
    out_lists
  end

  define_method(:save) do
    @@lists.push(self)
  end

  define_singleton_method(:clear) do
    @@lists = []
  end

  define_method(:==) do |another_list|
    self.title().== another_list.title
  end

end
