require_relative 'app/models/student'

test_item = Student.find(2)
# test_item.find(1)
p test_item
p test_item.name
p test_item.age
