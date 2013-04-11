# == Schema Information
#
# Table name: programs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  program_ID :integer
#  desc       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ProgramTest < ActiveSupport::TestCase
  test "create_program" do
    program = Program.new
    assert program.invalid?, 'Must have name'   
    program.name = 'Economics'
    assert program.valid?, 'Should be able to create program'
    assert program.save, 'Should save into the database'
  end

  test "delete_program" do
  	Program.create(:name=>"Economics")
  	program = Program.find_by_name("Mathematics")
  	assert program.nil?, 'Should not exist'
  	program = Program.find_by_name("Economics")
  	assert !program.nil?, 'Should exist'
  	# assert program.destroy, 'Should delete from database'
  end
end
