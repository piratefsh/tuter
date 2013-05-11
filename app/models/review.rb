# == Schema Information
#
# Table name: reviews
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  reviewer_id :integer
#  rating      :integer
#  title       :string(255)
#  content     :text(255)
#  recommend   :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Review < ActiveRecord::Base
  attr_accessible :content, :rating, :recommend, :reviewer_id, :title, :user_id

  validates :title, :presence =>  :true
  validates :content, :presence =>  :true
  validates :rating, :presence => {:message => "has to be between 1 and 5"}
  validates :user_id, :presence => :true
  validates :reviewer_id, :presence => :true

  def self.rating_range 
    return (1..5).to_a
  end
end
