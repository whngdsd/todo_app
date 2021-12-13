class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :scheduled_on
      t.date :completed_on
      t.integer :user_id

      t.timestamps
    end
  end
end
