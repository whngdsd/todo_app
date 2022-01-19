class ChangeColumnDefaultToTasks < ActiveRecord::Migration[6.1]
  def change
    change_column_default :tasks, :scheduled_on, from: nil, to: Date.today
  end
end
