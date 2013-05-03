class Review < ActiveRecord::Base
  attr_accessible :content, :rating, :recommend, :reviewer_id, :title, :user_id
end
