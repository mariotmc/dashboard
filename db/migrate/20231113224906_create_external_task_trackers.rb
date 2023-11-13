class CreateExternalTaskTrackers < ActiveRecord::Migration[7.0]
  def change
    create_table :external_task_trackers do |t|
      t.text :type
      t.text :link
      t.references :task, foreign_key: true
      t.timestamps
    end
  end
end
