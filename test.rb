require_relative 'app/models/student'
require_relative 'app/models/teacher'

# test_item = Student.take!
# # test_item.find(1)
# p test_item
# p test_item.name
# p test_item.age



# teacher = Teacher.find(5)
teacher = Teacher.new({ :first_name => 'Lady', :last_name => 'McLadyson', :email => 'test@gmail.com', :phone => '888-867-5309'})
teacher2 = Teacher.new({ :first_name => 'Lady', :last_name => 'McLadyson', :email => 'Test@gmail.com', :phone => '888-867-5309'})
# p teacher
# p teacher2
teacher.save
teacher2.save
# p teacher.new_record?
# p teacher2.new_record?
# p teacher.save

teacher1 = Teacher.last    #works!
p teacher1.first_name == "Lady"

p teacher1.students

# SELECT people.id FROM people JOIN student_teachers ON people.id = student_teachers.students_ID



# student1 = Student.first
# p teacher2
