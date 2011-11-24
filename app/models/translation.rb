class Translation < ActiveRecord::Base
  attr_accessible :isPublic
  belongs_to :sourceUnit
  belongs_to :targetUnit
end  

# == Schema Information
#
# Table name: translations
#
#  id            :integer         not null, primary key
#  sourceUnit_id :integer         not null
#  targetUnit_id :integer         not null
#  repo_id       :integer         not null
#  isPublic      :boolean         default(TRUE)
#  created_at    :datetime
#  updated_at    :datetime
#

