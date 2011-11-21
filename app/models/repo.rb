class Repo < ActiveRecord::Base
  attr_accessible :name
  
  belongs_to :owner, :class_name => 'User'
  validates_presence_of :name, :on => :create, :message => "can't be blank"
  validates_presence_of :user_id 
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

