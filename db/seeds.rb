#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.marillo
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts 'SETTING UP DEFAULT Users'
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


puts 'CREATING DEFAULT Perspectives'
persFinance = Perspective.create!  :name =>'Financiera', :weight => 25, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :title_image => 'financiera_btn.png'
puts 'New Perspective created: ' << persFinance.name
persClient = Perspective.create!  :name =>'Clientes', :weight => 25, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :title_image => 'clientesy_btn.png'
puts 'New Perspective created: ' << persClient.name
persProcess = Perspective.create!  :name =>'Procesos Internos', :weight => 25, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :title_image => 'procesos_btn.png'
puts 'New Perspective created: ' << persProcess.name
persDevlmnt = Perspective.create!  :name =>'Desarrollo y Crecimiento', :weight => 25, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :title_image => 'desarrollo_btn.png'
puts 'New Perspective created: ' << persDevlmnt.name
puts '------------------------'


puts 'CREATING DEFAULT Objectives'
#Objective.create! :name => '', :acronym => '', :weight => 25, :score => 0, :perspective_id =>, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :show => true,  :greenButton => , :yellowButton =>, :redButton => , :col =>, :row =>

Objective.create! :name => 'Maximizar Valor Grupo ALC', :acronym => 'Maximizar Valor Grupo ALC', :weight => 25, :score => 0, :perspective_id => 1, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :show => true, :greenButton => 'alc/maximizarGrupo-verde.png', :yellowButton => 'alc/maximizarGrupo-amarillo.png', :redButton => 'alc/maximizarGrupo-rojo.png', :col => 4, :row => 1
puts " Maximizar Valor Grupo ALC /n "

Objective.create! :name => 'Crecer en Ingresos rentables Vzla-Lact', :acronym => 'Crecer en Ingresos rentables Vzla-Lact', :weight => 25, :score => 0, :perspective_id => 1, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :show => true, :greenButton => 'alc/CrecerIngresos-verde.png', :yellowButton => 'alc/CrecerIngresos-amarillo.png', :redButton => 'alc/CrecerIngresos-rojo.png', :col => 3, :row => 2
puts " Crecer en Ingresos rentables Vzla-Lact " 

Objective.create! :name => 'Optimizar las Inversiones', :acronym => 'Optimizar las Inversiones', :weight => 25, :score => 0, :perspective_id => 1, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :show => true,  :greenButton => 'alc/OptimizarInverciones-verde.png', :yellowButton => 'alc/OptimizarInverciones-amarillo.png', :redButton => 'alc/OptimizarInverciones-rojo.png' , :col => 4, :row => 2
puts " Optimizar las Inversiones " 

Objective.create! :name => 'Tener costos competitivos a nivel internacional', :acronym => 'Tener costos competitivos a nivel internacional', :weight => 25, :score => 0, :perspective_id => 1, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :show => true,  :greenButton => 'alc/TenerCostos-verde.png' , :yellowButton => 'alc/TenerCostos-amarillo.png' , :redButton => 'alc/TenerCostos-rojo.png' , :col => 5, :row => 2
puts " Tener costos competitivos a nivel internacional " 

Objective.create! :name => 'Disminuir Dependencia Venezuela', :acronym => 'Disminuir Dependencia Venezuela', :weight => 25, :score => 0, :perspective_id => 1, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :show => true,  :greenButton => 'alc/disminuirDepen-verde.png' , :yellowButton => 'alc/disminuirDepen-amarillo.png' , :redButton => 'alc/disminuirDepen-rojo.png' , :col => 2, :row => 2
puts " Disminuir Dependencia Venezuela " 

Objective.create! :name => 'Crecer contratación de Servicios por Clientes regionalmente', :acronym => 'Crecer contratación de Servicios por Clientes regionalmente', :weight => 25, :score => 0, :perspective_id => 2, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :show => true,  :greenButton => 'alc/crecerContra-verde.png' , :yellowButton => 'alc/crecerContra-amarillo.png' , :redButton => 'alc/crecerContra-rojo.png' , :col => 2, :row => 1
puts " Crecer contratación de Servicios por Clientes regionalmente "

Objective.create! :name => 'Incrementar participación en mercados Regionales Objetivo', :acronym => 'Incrementar participación en mercados Regionales Objetivo', :weight => 25, :score => 0, :perspective_id => 2, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :show => true,  :greenButton => 'alc/incrementarParticipacion-verde.png' , :yellowButton => 'alc/incrementarParticipacion-amarillo.png' , :redButton => 'alc/incrementarParticipacion-rojo.png', :col => 3, :row => 1
puts " Incrementar participación en mercados Regionales Objetivo " 

Objective.create! :name => 'Optimizar Relaciones con Clientes y Clientes de Clientes', :acronym => 'Optimizar Relaciones con Clientes y Clientes de Clientes', :weight => 25, :score => 0, :perspective_id => 2, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :show => true,  :greenButton => 'alc/optimizarRelaciones-verde.png' , :yellowButton => 'alc/optimizarRelaciones-amarillo.png' , :redButton => 'alc/optimizarRelaciones-rojo.png' , :col => 4, :row => 1
puts " Optimizar Relaciones con Clientes y Clientes de Clientes " 

Objective.create! :name => 'Compromiso como Aliados de Negocio', :acronym => 'Compromiso como Aliados de Negocio', :weight => 25, :score => 0, :perspective_id => 2, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :show => true,  :greenButton => 'alc/CompromisosComo-verde.png' , :yellowButton => 'alc/CompromisosComo-amarillo.png' , :redButton => 'alc/CompromisosComo-rojo.png' , :col => 5, :row => 1                                                                                                                                                                         
puts " Compromiso como Aliados de Negocio " 

Objective.create! :name => 'Maximizar el crecimiento en LACT y el Caribe', :acronym => 'Maximizar el crecimiento en LACT y el Caribe', :weight => 25, :score => 0, :perspective_id => 3, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :show => true,  :greenButton => 'alc/maximizarCrecim-verde.png' , :yellowButton => 'alc/maximizarCrecim-amarillo.png' , :redButton => 'alc/maximizarCrecim-rojo.png' , :col => 1, :row => 2
puts " Maximizar el crecimiento en LACT y el Caribe " 

Objective.create! :name => 'Desarrollar el Modelo Glocal', :acronym => 'Desarrollar el Modelo Glocal', :weight => 25, :score => 0, :perspective_id => 3, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :show => true,  :greenButton => 'alc/desarrollarModeloGlocal-verde.png' , :yellowButton => 'alc/desarrollarModeloGlocal-amarillo.png' , :redButton => 'alc/desarrollarModeloGlocal-rojo.png' , :col => 2, :row => 1
puts " Desarrollar el Modelo Glocal " 

Objective.create! :name => 'Obtener Clientes y Retener Actuales en Mercados Objetivo', :acronym => 'Obtener Clientes y Retener Actuales en Mercados Objetivo', :weight => 25, :score => 0, :perspective_id => 3, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :show => true,  :greenButton => 'alc/ObtCliente-verde.png' , :yellowButton => 'alc/ObtCliente-amarillo.png' , :redButton => 'alc/ObtCliente-rojo.png' , :col => 3 , :row => 2
puts " Obtener Clientes y Retener Actuales en Mercados Objetivo " 

Objective.create! :name => 'Maximizar Calidad de Servicios vía nuestros diferenciadores', :acronym => 'Maximizar Calidad de Servicios vía nuestros diferenciadores', :weight => 25, :score => 0, :perspective_id => 3, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :show => true,  :greenButton => 'alc/maximizarCalidadServicio-verde.png' , :yellowButton => 'alc/maximizarCalidadServicio-amarillo.png' , :redButton => 'alc/maximizarCalidadServicio-rojo.png' , :col => 4, :row => 1
puts " Maximizar Calidad de Servicios vía nuestros diferenciadores " 

Objective.create! :name => 'Innovar para adelantar y sobrepasar Expectativas de Clientes', :acronym => 'Innovar para adelantar y sobrepasar Expectativas de Clientes', :weight => 25, :score => 0, :perspective_id => 3, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :show => true,  :greenButton => 'alc/innovarPara-verde.png' , :yellowButton => 'alc/innovarPara-amarillo.png' , :redButton => 'alc/innovarPara-rojo.png' , :col => 4, :row => 3
puts " Innovar para adelantar y sobrepasar Expectativas de Clientes " 

Objective.create! :name => 'Desarrollar y Mantener Alianzas Clave para apalancar éxito', :acronym => 'Desarrollar y Mantener Alianzas Clave para apalancar éxito', :weight => 25, :score => 0, :perspective_id => 3, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :show => true,  :greenButton => 'alc/identifcarDesarrollarAlianzas-verde.png' , :yellowButton => 'alc/identifcarDesarrollarAlianzas-amarillo.png' , :redButton => 'alc/identifcarDesarrollarAlianzas-rojo.png' , :col => 5, :row => 2
puts " Desarrollar y Mantener Alianzas Clave para apalancar éxito " 

Objective.create! :name => 'Maximizar la eficiencia de ALC y de las Empresas del Grupo ', :acronym => 'Maximizar la eficiencia de ALC y de las Empresas del Grupo ', :weight => 25, :score => 0, :perspective_id => 3, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :show => true,  :greenButton => 'alc/maximizarEficALC-verde.png' , :yellowButton => 'alc/maximizarEficALC-amarillo.png' , :redButton => 'alc/maximizarEficALC-rojo.png' , :col => 6, :row => 2
puts " Maximizar la eficiencia de ALC y de las Empresas del Grupo  " 

Objective.create! :name => 'Tener la TIC y de Procesos Clave que apalanque los negocios', :acronym => 'Tener la TIC y de Procesos Clave que apalanque los negocios', :weight => 25, :score => 0, :perspective_id => 4, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :show => true,  :greenButton => 'alc/TenerLa-verde.png' , :yellowButton => 'alc/TenerLa-amarillo.png' , :redButton => 'alc/TenerLa-rojo.png' , :col => 2, :row => 2
puts " Tener la TIC y de Procesos Clave que apalanque los negocios " 

Objective.create! :name => 'Desarrollar Cultura de Servicios/Negocios y Clima', :acronym => 'Desarrollar Cultura de Servicios/Negocios y Clima', :weight => 25, :score => 0, :perspective_id => 4, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :show => true,  :greenButton => 'alc/desarrollarCultura-verde.png' , :yellowButton => 'alc/desarrollarCultura-amarillo.png' , :redButton => 'alc/desarrollarCultura-rojo.png' , :col => 3, :row => 1
puts " Desarrollar Cultura de Servicios/Negocios y Clima " 

Objective.create! :name => 'Tener/Retener/Desarrollar Gente con Competencias Requeridas', :acronym => 'Tener/Retener/Desarrollar Gente con Competencias Requeridas', :weight => 25, :score => 0, :perspective_id => 4, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :show => true,  :greenButton => 'alc/tenerPersonal-verde.png' , :yellowButton => 'alc/tenerPersonal-amarillo.png' , :redButton => 'alc/tenerPersonal-rojo.png' , :col => 4, :row => 2
puts " Tener/Retener/Desarrollar Gente con Competencias Requeridas " 

Objective.create! :name => 'Modelo de Negocio – Organización que apalanque la estrategia', :acronym => 'Modelo de Negocio – Organización que apalanque la estrategia', :weight => 25, :score => 0, :perspective_id => 4, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :show => true,  :greenButton => 'alc/modeloNegocio-verde.png' , :yellowButton => 'alc/modeloNegocio-amarillo.png' , :redButton => 'alc/modeloNegocio-rojo.png' , :col => 3, :row => 2
puts " Modelo de Negocio – Organización que apalanque la estrategia "
puts '------------------------'

puts 'CREATING DEFAULT ScoreDates 2011-2014'
month = 1
year = 2013
#4.times  do 
1.times do
  12.times do  
        ScoreDate.create! :month => month, :year => year
        print "#{year} #{month} | "
        month += 1
  end
  puts " "
  puts "#{year}... done."
  year += 1
  month = 1
end
puts '------------------------'


puts 'CREATING DEFAULT Indicators'

ind = Indicator.create! :name => 'EVA' , :acronym => 'EVA' , :weight => 25 , :objective_id => 1, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true 
ind = Indicator.create! :name => 'Ventas Anuales' , :acronym => 'Ventas Anuales' , :weight => 25 , :objective_id => 2, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Ingresos' , :acronym => 'Ingresos' , :weight => 25 , :objective_id => 2, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'ROCE' , :acronym => 'ROCE' , :weight => 25 , :objective_id => 3, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Costo unitario ponderado' , :acronym => 'Costo unitario ponderado' , :weight => 25 , :objective_id => 4, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Costo unitario por proceso' , :acronym => 'Costo unitario por proceso' , :weight => 25 , :objective_id => 4, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Margen Bruto' , :acronym => 'Margen Bruto' , :weight => 25 , :objective_id => 4, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Ingresos no Venezuela' , :acronym => 'Ingresos no Venezuela' , :weight => 25 , :objective_id => 5, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Ventas con clientes multipais' , :acronym => 'Ventas con clientes multipais' , :weight => 25 , :objective_id => 5, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Satisfaccion del cliente' , :acronym => 'Satisfaccion del cliente' , :weight => 25 , :objective_id => 6, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Participación de Mercado LACT' , :acronym => 'Participación de Mercado LACT' , :weight => 25 , :objective_id => 7, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Lealtad del Cliente' , :acronym => 'Lealtad del Cliente' , :weight => 25 , :objective_id => 8, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Reclamos de Clientes' , :acronym => 'Reclamos de Clientes' , :weight => 25 , :objective_id => 8, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Reclamos Clientes de Clientes' , :acronym => 'Reclamos Clientes de Clientes' , :weight => 25 , :objective_id => 8, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Facturación Alianzas/Clientes' , :acronym => 'Facturación Alianzas/Clientes' , :weight => 25 , :objective_id => 9, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Fact. Alianzas/Proveedores' , :acronym => 'Fact. Alianzas/Proveedores' , :weight => 25 , :objective_id => 9, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Crecimiento Servicios' , :acronym => 'Crecimiento Servicios' , :weight => 25 , :objective_id => 10, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Crecimiento Fact. Clientes TT' , :acronym => 'Crecimiento Fact. Clientes TT' , :weight => 25 , :objective_id => 10, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Clientes Acuerdo/Regional' , :acronym => 'Clientes Acuerdo/Regional' , :weight => 25 , :objective_id => 11, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Países con Presencia' , :acronym => 'Países con Presencia' , :weight => 25 , :objective_id => 11, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Clientes “lapsed” (Bs)' , :acronym => 'Clientes “lapsed” (Bs)' , :weight => 25 , :objective_id => 12, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Clientes “lapsed” (unid)' , :acronym => 'Clientes “lapsed” (unid)' , :weight => 25 , :objective_id => 12, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Facturación Clientes < 3 años' , :acronym => 'Facturación Clientes < 3 años' , :weight => 25 , :objective_id => 12, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Procesos con mediciones' , :acronym => 'Procesos con mediciones' , :weight => 25 , :objective_id => 13, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Efectividad based on KPI' , :acronym => 'Efectividad based on KPI' , :weight => 25 , :objective_id => 13, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Ingresos Nuevos Servicios' , :acronym => 'Ingresos Nuevos Servicios' , :weight => 25 , :objective_id => 14, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Servicios Nuevos Contratados' , :acronym => 'Servicios Nuevos Contratados' , :weight => 25 , :objective_id => 14, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Alianzas con Clientes' , :acronym => 'Alianzas con Clientes' , :weight => 25 , :objective_id => 15, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Alianzas con Proveedores' , :acronym => 'Alianzas con Proveedores' , :weight => 25 , :objective_id => 15, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Procesos y Sistemas Replicados' , :acronym => 'Procesos y Sistemas Replicados' , :weight => 25 , :objective_id => 16, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Efectividad Gastos' , :acronym => 'Efectividad Gastos' , :weight => 25 , :objective_id => 16, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Procesos con IS' , :acronym => 'Procesos con IS' , :weight => 25 , :objective_id => 17, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Index Satisfacción Cliente' , :acronym => 'Index Satisfacción Cliente' , :weight => 25 , :objective_id => 18, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Index Cultura Serv. y Negocios' , :acronym => 'Index Cultura Serv. y Negocios' , :weight => 25 , :objective_id => 18, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Index Reclamos Laborales' , :acronym => 'Index Reclamos Laborales' , :weight => 25 , :objective_id => 18, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Index Posiciones Sin Recurso' , :acronym => 'Index Posiciones Sin Recurso' , :weight => 25 , :objective_id => 19, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Index Brechas Comp. Claves' , :acronym => 'Index Brechas Comp. Claves' , :weight => 25 , :objective_id => 19, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Index Rotación Personal' , :acronym => 'Index Rotación Personal' , :weight => 25 , :objective_id => 19, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Index Calidad Modelo Negocio' , :acronym => 'Index Calidad Modelo Negocio' , :weight => 25 , :objective_id => 20, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Impulsor 1' , :acronym => 'Impulsor 1' , :weight => 25 , :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '%' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Impulsor 2' , :acronym => 'Impulsor 2' , :weight => 25 , :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '%' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Impulsor 3' , :acronym => 'Impulsor 3' , :weight => 25 , :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '%' , :formula => '' , :show => true
ind = Indicator.create! :name => 'Impulsor 4' , :acronym => 'Impulsor 4' , :weight => 25 , :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '%' , :formula => '' , :show => true
ind = Indicator.create! :name => 'subImpulsor 1' , :acronym => 'subImpulsor 1' , :weight => 25 , :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '%' , :formula => '' , :show => true
ind = Indicator.create! :name => 'subImpulsor 2' , :acronym => 'subImpulsor 2' , :weight => 25 , :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '%' , :formula => '' , :show => true
ind = Indicator.create! :name => 'subImpulsor 3' , :acronym => 'subImpulsor 3' , :weight => 25 , :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '%' , :formula => '' , :show => true
ind = Indicator.create! :name => 'subImpulsor 4' , :acronym => 'subImpulsor 4' , :weight => 25 , :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '%' , :formula => '' , :show => true
ind = Indicator.create! :name => 'subImpulsor 5' , :acronym => 'subImpulsor 5' , :weight => 25 , :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '%' , :formula => '' , :show => true
ind = Indicator.create! :name => 'subImpulsor 6' , :acronym => 'subImpulsor 6' , :weight => 25 , :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '%' , :formula => '' , :show => true
ind = Indicator.create! :name => 'subImpulsor 7' , :acronym => 'subImpulsor 7' , :weight => 25 , :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '%' , :formula => '' , :show => true
ind = Indicator.create! :name => 'subImpulsor 8' , :acronym => 'subImpulsor 8' , :weight => 25 , :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100, :unit => '%' , :formula => '' , :show => true
puts "....Done"
puts '------------------------'

puts 'CREATING DEFAULT Vectors '
Vector.create! :name => 'Fortalecer la internacionalizacion'
Vector.create! :name => 'Calidad de servicios'
Vector.create! :name => 'Aliados Clave'
Vector.create! :name => 'Eficiencia'
puts "....Done"
puts '------------------------'

puts 'CREATING DEFAULT Indicators Scores '

indicators = Indicator.all
      dates = ScoreDate.all
      indicators.each{|indicator|
          dates.each{|da|
              IndicatorScore.create! :indicator_id => indicator.id, :scoredate_id => da.id, :score => rand(100), :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100
          }
      }
puts "....Done"
puts '------------------------'

puts 'CREATING DEFAULT Objectives Scores '

objectives = Objective.all
      dates = ScoreDate.all
      objectives.each{|obj|
          dates.each{|da|
              ObjectiveScore.create! :objective_id => obj.id, :scoredate_id => da.id, :score => 0, :redfrom => 0, :redto => 25, :yellowfrom => 25, :yellowto => 75, :greenfrom => 75, :greento => 100
          }
      }
puts "....Done"
puts '------------------------'

puts 'CREATING DEFAULT Perspective Scores'
perspectives = Perspective.all
  dates = ScoreDate.all
    perspectives.each{|per|
      dates.each{|da|
        PerspectiveScore.new(:perspective_id => per.id, :scoredate_id => da.id, :score => 0, :redfrom => per.redfrom, :redto => per.redto, :yellowfrom => per.yellowfrom, :yellowto => per.yellowto, :greenfrom => per.greenfrom, :greento => per.greento).save
       }
    }
puts "....Done"
puts '------------------------'


puts 'DB Seed END'