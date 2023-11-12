class AddStageToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :stage, :integer, default: 0
  end
end
