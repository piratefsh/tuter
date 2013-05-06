# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  confirmation_token     :string(255)
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  first_name             :string(255)
#  last_name              :string(255)
#  desc                   :text
#  uid                    :integer
#  provider               :string(255)
#  oauth_token            :string(255)
#  oauth_expires_at       :datetime
#  photo                  :string(255)
#  fb_profile             :string(255)
#  roles_mask             :integer
#  course_ID              :integer
#  age                    :integer
#  year                   :string(255)
#  transportation         :string(255)
#  rate                   :string(255)
#  time_zone              :string(255)
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "create_user" do
    user = User.new
    assert user.invalid?, 'Must have first_name, last_name, email, password'
    user.first_name = 'Faiz'
    user.last_name  = 'Lurman'
    user.email      = 'faiz@tuter.me'
    user.password   = 'PASSWORD'
    assert user.valid?, 'Should be able to create user'
    assert user.save, 'Should save into database'
  end

  test "delete_user" do
    User.create(:first_name=>"Faiz",:last_name=>"Lurman",
    :email=>"faiz@tuter.me",:password=>"PASSWORD")
    user = User.find_by_email('NotFoundFaiz@tuter.me')
    assert user.nil?, 'Should not exist'
    user = User.find_by_email('faiz@tuter.me')
    assert !user.nil?, 'Should exist'
    assert user.destroy, 'Should delete from database'
  end

  test "existing_user" do
    user = users(:user1)
    assert user.valid?
  end

  test "6_years" do
    assert_equal(6, User.years.count)
  end
  
  test "full_name" do
    user = users(:user1)
    assert_not_nil user.full_name
  end
  
  test "age_range " do
    assert_equal(18, User.age_range.first)
    assert_equal(80, User.age_range.last)
  end

  test "with_location" do
    user = users(:user1)
    assert_not_nil user.with_location
  end
  
  test "week_availability" do
    assert_equal(2, WeekAvailability.avail_types.count)
  end
  
  test "day_availability" do
    assert_not_nil DayAvailability.days
  end
  
  test "student_ID" do
    assert_not_nil StudentId.all_students
  end

end
