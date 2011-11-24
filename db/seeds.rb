# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
#run rake db:seed



require 'active_record/fixtures'
Language.delete_all
Fixtures.create_fixtures("#{Rails.root}/db/fixtures", "languages")
Domain.delete_all
Fixtures.create_fixtures("#{Rails.root}/db/fixtures", "domains")
DomainI18n.delete_all
Fixtures.create_fixtures("#{Rails.root}/db/fixtures", "domain_i18ns")
LanguageI18n.delete_all
Fixtures.create_fixtures("#{Rails.root}/db/fixtures", "language_i18ns")

#put term translation in afile 


#this will form the basis of the load file module for TXT terms (CSV?) and TMX
#first try and enter terms on the fly

 

#need to load in data separately for each language
#act simultaneously as source and target

[SourceUnit, TargetUnit].each(&:delete_all)
File.open(RAILS_ROOT + "/lib/tasks/testData_de.txt").each { |line|
  line = line.chomp
    SourceUnit.create!(:content => line, :language_id => 1)
    TargetUnit.create!(:content => line, :language_id => 1)
}
File.open(RAILS_ROOT + "/lib/tasks/testData_es.txt").each { |line|
  line = line.chomp

    SourceUnit.create!(:content => line, :language_id => 7)
    TargetUnit.create!(:content => line, :language_id => 7) 
}
File.open(RAILS_ROOT + "/lib/tasks/testData_en.txt").each { |line|
  line = line.chomp
 
    SourceUnit.create!(:content => line, :language_id => 4)
    TargetUnit.create!(:content => line, :language_id => 4)  
}

File.open(RAILS_ROOT + "/lib/tasks/testData_ru.txt").each { |line|
  line = line.chomp
    SourceUnit.create!(:content => line, :language_id => 8)
    TargetUnit.create!(:content => line, :language_id => 8)  
}





