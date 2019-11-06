require('sinatra')
require('sinatra/contrib/all')
require('pry')

require_relative('./models/student')
require_relative('./models/house')
also_reload ('./models/*')

get '/hogwarts' do
  erb(:home)
end

get '/hogwarts/students' do
 @students = Student.all()
erb(:'students/index')
end

get '/hogwarts/houses' do
 @houses = House.all()
 erb(:'houses/index')
end

get '/hogwarts/students/new' do #student-new
  @houses = House.all()
  erb(:'students/new')
end
get '/hogwarts/houses/new' do #house-new
  erb(:'houses/new')
end

post '/hogwarts/students' do
  @student = Student.new(params)
  @student.save
  erb(:'students/create')
end

post '/hogwarts/houses' do
  @house = House.new(params)
  @house.save
  erb(:'houses/create')
end
