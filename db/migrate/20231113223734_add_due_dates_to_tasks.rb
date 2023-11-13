class AddDueDatesToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :due_date, :datetime, default: nil
  end
end
