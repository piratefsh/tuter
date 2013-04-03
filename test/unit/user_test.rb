require 'test_helper'

class UserTest < ActiveSupport::TestCase
 	test "user_creation must fail" do
 		user = User.create
 		assert !user.valid?
 	end 	
end
