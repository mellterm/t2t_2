# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

require 'active_record/fixtures'
Language.delete_all
Fixtures.create_fixtures("#{Rails.root}/db/fixtures", "languages")
Domain.delete_all
Fixtures.create_fixtures("#{Rails.root}/db/fixtures", "domains")
DomainI18n.delete_all
Fixtures.create_fixtures("#{Rails.root}/db/fixtures", "domain_i18ns")
LanguageI18n.delete_all
Fixtures.create_fixtures("#{Rails.root}/db/fixtures", "language_i18ns")