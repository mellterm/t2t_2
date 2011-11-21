namespace :db do
	desc "Fill database with sample data"
	task :populate => :environment do
		Rake::Task['db:reset'].invoke
		
end
end		

# def make_languages
#   
#   Language.delete_all
#   ["en" =>"English", "de" => "German", "ru" => "Russian", "zh" => "Chinese", "es" => "Spanish", "en-us" =>"English, US", "en-gb" => "English, GB", "en-ca" => "English, Canada", "de-de" => "German, Germany", "de-at" => "German, Austria", "de-ch" => "German, Swiss", 
#     "ru-ru" => "Russian, Russia", "zh-zh" => "Chinese, Mainland"].each do |code, name|
#     Language.create!(:ISOcode => code, :name => name)
#   end
# end