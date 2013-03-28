require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user_creation" do
    user = User.new
    assert !user.valid?, "No first_name, last_name, email"
  end
end
