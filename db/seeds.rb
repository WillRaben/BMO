# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'SETTING UP DEFAULT USERS LOGIN'
user = User.create! :name => 'Admin', :email => 'admin@execca.net', :password => 'adminadmin', :password_confirmation => 'adminadmin'
puts 'New user created: ' << user.name
user2 = User.create! :name => 'Aforador', :email => 'aforador@execca.net', :password => 'aforador', :password_confirmation => 'aforador'
puts 'New user created: ' << user2.name
user3 = User.create! :name => 'Cliente', :email => 'cliente@execca.net', :password => 'cliente', :password_confirmation => 'cliente'
puts 'New user created: ' << user3.name 
user.add_role :admin
user2.add_role :aforador
user3.add_role :cliente
puts '------------------------'


puts 'CREATING DEFAULT PERSPECTIVES'
persFinance = Perspective.create!  :name =>'Financiera', :weight => 25, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :title_image => 'financiera_btn.png'
puts 'New Perspective created: ' << persFinance.name
persClient = Perspective.create!  :name =>'Clientes', :weight => 25, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :title_image => 'clientesy_btn.png'
puts 'New Perspective created: ' << persClient.name
persProcess = Perspective.create!  :name =>'Procesos Internos', :weight => 25, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :title_image => 'procesos_btn.png'
puts 'New Perspective created: ' << persProcess.name
persDevlmnt = Perspective.create!  :name =>'Desarrollo y Crecimiento', :weight => 25, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :title_image => 'desarrollo_btn.png'
puts 'New Perspective created: ' << persDevlmnt.name
puts '------------------------'


puts 'CREATING DEFAULT SCOREDATES: 2011-2014'
month = 1
year = 2011
4.times  do 
  12.times do  
        ScoreDate.create! :month => month, :year => year
        puts "#{year} #{month} "
        month += 1
  end
  puts "#{year}... done."
  year += 1
  month = 1
end
puts '------------------------'
puts 'DB Seed END'
