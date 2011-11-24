class SourceUnit < ActiveRecord::Base
  attr_accessible :content
  has_many :translations 
  has_many :targetUnits, :through => :translations
  
end

# == Schema Information
#
# Table name: source_units
#
#  id          :integer         not null, primary key
#  content     :string(255)
#  language_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

