require 'test_helper'

class OrganizationsControllerTest < ActionController::TestCase  
  test "index" do    
    visit '/groups/'
    assert_routing '/groups', { :controller => "groups", :action => "index"} 
    # assert find_link 'Home'
    # assert find_link 'Find a Tutor'
    # assert find_link 'Tutoring Organizations'
  end
end
