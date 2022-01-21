class AddIsCompletedToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :is_completed, :boolean, default: false, null: false
  end
end
