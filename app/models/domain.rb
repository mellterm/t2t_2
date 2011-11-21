class Domain < ActiveRecord::Base
  has_many :domain_i18ns
end

# == Schema Information
#
# Table name: domains
#
#  id   :integer         not null, primary key
#  code :string(255)
#  name :string(255)
#

