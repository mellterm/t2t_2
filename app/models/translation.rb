class Translation < ActiveRecord::Base
  attr_accessible :isPublic, :source_unit_id, :target_unit_id, :repo_id
  belongs_to :sourceUnit
  belongs_to :targetUnit
  
  has_many :translation_domain
  has_many :domains, :through =>:translation_domains, :source=> :translation_domains
  
  
end  


# == Schema Information
#
# Table name: translations
#
#  id             :integer         not null, primary key
#  source_unit_id :integer         not null
#  target_unit_id :integer         not null
#  repo_id        :integer         not null
#  isPublic       :boolean         default(TRUE)
#  created_at     :datetime
#  updated_at     :datetime
#

