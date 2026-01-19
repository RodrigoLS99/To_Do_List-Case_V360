class AddDetailsToTasks < ActiveRecord::Migration[8.1]
  def change
    add_column :tasks, :due_date, :datetime
    add_column :tasks, :comment, :text
  end
end
