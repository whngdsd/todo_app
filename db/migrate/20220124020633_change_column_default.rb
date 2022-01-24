class ChangeColumnDefault < ActiveRecord::Migration[6.1]
  def change
    change_column_default :tasks, :scheduled_on, from: "2022-01-21", to: nil
  end
end
