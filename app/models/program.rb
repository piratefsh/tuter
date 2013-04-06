class Program < ActiveRecord::Base
  attr_accessible :desc, :name, :program_ID
  has_many :group
end
