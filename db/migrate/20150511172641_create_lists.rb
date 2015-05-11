class CreateLists < ActiveRecord::Migration
  def change
    create_table(:lists) do |table|
      table.column(:description, :string)

      table.timestamps()
    end
  end
end
