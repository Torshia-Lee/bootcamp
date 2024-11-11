class AddPriorityLevel < ActiveRecord::Migration[7.2]
  def change
    add_column :categories, :Priority_Level, :integer
  end
end
