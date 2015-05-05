class Task
  attr_accessor :description, :completed, :due, :list_id, :id
  # @@tasks = []

  define_method(:initialize) do |params|
    # params.keys.each do |key|
    #   key.instance_variable_get('@#{key.to_s}') = params.fetch()
    # end
    if params.has_key?(:description)
      @description = params.fetch(:description)
    else
      @description = nil
    end
    if params.has_key?(:completed)
      @completed = params.fetch(:completed)
    else
      @completed = nil
    end
    if params.has_key?(:id)
      @id = params.fetch(:id)
    else
      @id = nil
    end
    if params.has_key?(:list_id)
      @list_id = params.fetch(:list_id)
    else
      @list_id = nil
    end
    if params.has_key?(:due)
      @due = params.fetch(:due)
    else
      @due = nil
    end
  end

  define_singleton_method(:all) do
    returned_tasks = DB.exec('SELECT * FROM tasks;')
    tasks = []
    returned_tasks.each do |task| # task is a hash
      tasks.push(task)
    end
    tasks
  end

  define_method(:save) do
    DB.exec("INSERT INTO tasks (description) VALUES ('#{@description}');")
  end

  define_singleton_method(:clear) do
    DB.exec("DELETE FROM tasks *;")
  end

  #define_singleton_method(:find) do |id|
    # return_task = nil
    # Task.all.each do |task|
    #   if task.id == id
    #     return_task = task
    #   end
    # end
    # return_task
  #end

  define_method(:==) do |task|
    task.description == self.description and task.due == self.due
  end

end
