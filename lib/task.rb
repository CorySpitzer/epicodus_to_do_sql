class Task
  attr_accessor :description, :completed, :due, :list_id, :id
  @@tasks = []
  # @@all_task_ids = []

  define_method(:initialize) do
    @description = nil
    @completed = false
    @id = nil
  end

  define_singleton_method(:all) do
    @@tasks
  end

  define_method(:save) do
    @@tasks.push(self)
    # @@all_task_ids.push(self.id)
  end

  define_singleton_method(:clear) do
    @@tasks = []
  end

  # define_singleton_method(:all_task_ids) do
  #   @@all_task_ids
  # end

  # define_singleton_method(:bfind) do |id_to_find|
  #   Task.all_task_ids.sort.bsearch do |task_id|
  #     if task_id == id_to_find
  #       task
  #     end
  #   end
  # end

  define_singleton_method(:find) do |id|
    return_task = nil
    Task.all.each do |task|
      if task.id == id
        return_task = task
      end
    end
    return_task
  end

end
