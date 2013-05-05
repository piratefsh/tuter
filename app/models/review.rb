class Review < ActiveRecord::Base
  attr_accessible :content, :rating, :recommend, :reviewer_id, :title, :user_id

  validates :title, :presence =>  :true
  validates :content, :presence =>  :true
  validates :rating, :presence => {:message => "has to be between 1 and 5"}
  validates :user_id, :presence => :true
  validates :reviewer_id, :presence => :true
end
