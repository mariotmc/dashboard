require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "creates a user successfully" do
    user = User.new(username: "foo", email: "bar@baz.com", password: "password")
    assert user.valid?
  end

  test "fails because of missing username" do
    user = User.new(username: "", email: "bar@baz.com", password: "password")
    assert_not user.valid?
  end

  test "fails because of missing password" do
    user = User.new(username: "foo", email: "bar@baz.com", password: "")
    assert_not user.valid?
  end

  test "fails because of missing email" do
    user = User.new(username: "foo", email: "", password: "password")
    assert_not user.valid?
  end

  test "fails because email is not unique" do
    user = User.new(username: "foo", email: users(:jon_doe).email, password: "password")
    assert_not user.valid?
  end

  test "fails because not a valid email format" do
    user = User.new(username: "foo", email: "bar@", password: "password")
    assert_not user.valid?
  end
end
