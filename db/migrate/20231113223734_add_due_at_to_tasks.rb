class AddDueAtToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :due_at, :datetime, default: nil
  end
end
