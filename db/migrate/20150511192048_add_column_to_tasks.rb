class AddColumnToTasks < ActiveRecord::Migration
  def change
    add_column(:tasks, :list_id, :integer)
    remove_column(:lists, :description, :string)
    add_column(:lists, :name, :string)
  end
end
