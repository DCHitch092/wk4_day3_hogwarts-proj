require_relative('../models/student')
require_relative('../models/house')
require('pry')

Student.delete_all()
House.delete_all()

student1 = Student.new({
'first_name' => "Neville",
'second_name' => "Shortbuttocks",
'house' => "Gryffindor",
'age' => 11
  })

student2 = Student.new({
'first_name' => "Crabby",
'second_name' => "Mcdoyle",
'house' => "Slytherin",
'age' => 13
  })

student1.save
student2.save

house1 = House.new({
  'house_name' => 'Gryffindor',
  'logo_url' => 'gryffindor.png'
  })

house2 = House.new({
  'house_name' => 'Slytherin',
  'logo_url' => 'gryffindor.png'
  })
house3 = House.new({
  'house_name' => 'Ravenclaw',
  'logo_url' => 'gryffindor.png'
  })
house4 = House.new({
  'house_name' => 'Hufflepuff',
  'logo_url' => 'gryffindor.png'
  })


binding.pry

nil
