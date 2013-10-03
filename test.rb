require_relative 'app/models/student'
require_relative 'app/models/teacher'

test_item = Student.find(2)
# test_item.find(1)
p test_item
p test_item.name
p test_item.age



#teacher = Teacher.find(1)
teacher = Teacher.new({ :first_name => 'Lady', :last_name => 'McLadyson', :email => 'test@gmail.com', :phone => '888-867-5309'})
p teacher
p teacher.name
p teacher.save
