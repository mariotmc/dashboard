class RenameExternTaskTracker < ActiveRecord::Migration[7.1]
  def change
    rename_table :external_task_trackers, :tickets
  end
end
