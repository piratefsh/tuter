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

class Program < ActiveRecord::Base
  attr_accessible :desc, :name, :program_ID
  has_many :groups
  has_many :users, :through => :groups
  validates :name, :presence => true
end
