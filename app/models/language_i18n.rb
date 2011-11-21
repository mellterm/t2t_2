class LanguageI18n < ActiveRecord::Base
  belongs_to :language
  belongs_to :reflanguage, :class_name => 'Language'
end



# == Schema Information
#
# Table name: language_i18ns
#
#  id             :integer         not null, primary key
#  language_id    :integer
#  reflanguage_id :integer
#  name           :string(255)
#

