class CreateTasks < ActiveRecord::Migration[8.1]
  def change
    create_table :tasks do |t|
      t.string :content
      t.datetime :completed_at
      t.references :todo_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
