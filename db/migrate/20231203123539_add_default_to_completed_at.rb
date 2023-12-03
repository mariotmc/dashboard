class AddDefaultToCompletedAt < ActiveRecord::Migration[7.0]
  def change
    change_column_default :tasks, :completed_at, nil
  end
end
