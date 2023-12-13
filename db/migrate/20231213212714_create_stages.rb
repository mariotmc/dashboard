class CreateStages < ActiveRecord::Migration[7.0]
  def change
    create_table :stages do |t|
      t.text :status, null: false
      t.timestamps
    end
  end
end
