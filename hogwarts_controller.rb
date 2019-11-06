require('sinatra')
require('sinatra/contrib/all')
require('pry')

require_relative('./models/student')
also_reload ('./models/*')

get '/hogwarts' do
  erb(:home)
end

get '/hogwarts/students' do
 @students = Student.all()
erb(:index)
end

get '/hogwarts/students/new' do
  erb(:new)
end

post '/hogwarts/students' do
  @students = Student.new(params)
  @students.save
  erb(:create)
end
