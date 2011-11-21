class DomainI18n < ActiveRecord::Base
  belongs_to :domain
end

# == Schema Information
#
# Table name: domain_i18ns
#
#  id          :integer         not null, primary key
#  domain_id   :integer
#  language_id :integer
#  name        :string(255)
#

