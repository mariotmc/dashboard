class AddLinksToPullRequests < ActiveRecord::Migration[7.0]
  def change
    add_column :pull_requests, :link, :text
  end
end
