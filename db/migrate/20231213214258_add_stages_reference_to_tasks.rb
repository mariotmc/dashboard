class AddStagesReferenceToTasks < ActiveRecord::Migration[7.0]
  def change
    remove_column :tasks, :stage, :integer
    add_reference :tasks, :stage, foreign_key: true
  end
end
