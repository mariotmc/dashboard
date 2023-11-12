class CreatePullRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :pull_requests do |t|
      t.text :type
      t.timestamps
    end
  end
end
