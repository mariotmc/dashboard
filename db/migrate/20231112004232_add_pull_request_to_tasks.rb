class AddPullRequestToTasks < ActiveRecord::Migration[7.0]
  def change
    add_reference :tasks, :pull_request, foreign_key: true
    add_reference :pull_requests, :task, foreign_key: true
  end
end
