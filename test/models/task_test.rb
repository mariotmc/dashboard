require "test_helper"

class TaskTest < ActiveSupport::TestCase
  attr_reader :user

  def setup
    @user = users(:jon_doe)
  end

  test "creates a task successfully" do
    task = Task.new(user: user, title: "Foo", priority: "high")
    assert task.valid?
  end

  test "fails because of missing user" do
    task = Task.new(user: nil, title: "Foo", priority: "high")
    assert_not task.valid?
  end

  test "fails because of missing title" do
    task = Task.new(user: user, title: "", priority: "high")
    assert_not task.valid?
  end
end
