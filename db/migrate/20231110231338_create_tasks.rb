class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.references :user, null: false, foreign_key: true
      t.text :title, null: false
      t.integer :priority, default: 0
      t.datetime :completed_at, default: nil
      t.timestamps
    end
  end
end
