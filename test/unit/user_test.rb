require 'test_helper'

class UserTest < ActiveSupport::TestCase
 	test "user_creation" do
 		user = User.new
 		assert !user.valid?, 'Must have first_name, last_name, email, password'
 		user.first_name = 'AnotherFaiz'
 		user.last_name  = 'AnotherLurman'
 		user.email      = 'Anotherfaiz@tuter.me'
        user.password   = 'PASSWORD' 		
        assert user.valid?, 'Should pass now'
 	end 	
end
