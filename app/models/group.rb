class Group < ActiveRecord::Base
  attr_accessible :desc, :group_ID, :name
  belongs_to :program
end
