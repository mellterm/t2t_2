class TranslationDomain < ActiveRecord::Base
  belongs_to :translation
  belongs_to :domain
end

# == Schema Information
#
# Table name: translation_domains
#
#  id             :integer         not null, primary key
#  translation_id :integer
#  domain_id      :integer
#  created_at     :datetime
#  updated_at     :datetime
#

