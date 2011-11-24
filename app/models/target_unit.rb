class TargetUnit < ActiveRecord::Base
  attr_accessible :content
  has_many :translations 
  has_many :sourceUnits, :through => :translations
end

# == Schema Information
#
# Table name: target_units
#
#  id          :integer         not null, primary key
#  content     :string(255)
#  language_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

