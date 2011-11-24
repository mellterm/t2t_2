class Domain < ActiveRecord::Base
  has_many :domain_i18ns
  
  has_many :translation_domainss
  has_many :translations, :through =>:translation_domains,:source=> :translation_domains
  
  
end

# == Schema Information
#
# Table name: domains
#
#  id   :integer         not null, primary key
#  code :string(255)
#  name :string(255)
#

