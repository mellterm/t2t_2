class Repo < ActiveRecord::Base
  attr_accessible :name, :owner_id
     
  belongs_to :owner, :class_name => 'User'
  validates_presence_of :name

  default_scope :order => 'repos.name DESC'
  
end

# == Schema Information
#
# Table name: repos
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  owner_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

