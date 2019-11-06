require_relative('../models/student')
require_relative('../models/house')
require('pry')

Student.delete_all()
House.delete_all()

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

house1.save()
house2.save()
house3.save()
house4.save()

student1 = Student.new({
'first_name' => "Neville",
'second_name' => "Shortbuttocks",
'house_id' => house1.id,
'age' => 11
  })

student2 = Student.new({
'first_name' => "Crabby",
'second_name' => "Mcdoyle",
'house_id' => house2.id,
'age' => 13
  })

student1.save
student2.save

binding.pry

nil
