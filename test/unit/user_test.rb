require 'test_helper'

class UserTest < ActiveSupport::TestCase
 	test "user creation"
 		user = User.new
 		assert user
 	end

 	test "destroy user"
 		user = User.new
 		user.destroy
 		assert user = nil
 	end
end
