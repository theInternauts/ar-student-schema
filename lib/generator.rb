require_relative '../app/models/teacher'
require_relative '../app/models/student'
require_relative '../app/models/student_teacher'
require 'faker'

module Generator
  def self.distribute(num)
    #this has many many flaws: id doesn't account for
    num.times do
      (rand(5)+1).times do
        StudentTeacher.create!({:students_ID => (rand(num)+1+num), :teachers_ID => (rand(num)+1)})
      end
    end
  end

  def self.populate(num)
    num.times do
      attribute_hash = { :first_name => Faker::Name.first_name, :last_name => Faker::Name.last_name, :email => Faker::Internet.email, :phone => Faker::PhoneNumber.phone_number}
      item = Teacher.create!(attribute_hash)
    end
    num.times do
      attribute_hash = { :first_name => Faker::Name.first_name, :last_name => Faker::Name.last_name, :email => Faker::Internet.email, :phone => Faker::PhoneNumber.phone_number, :gender => Generator::gender?, :birthday => Date.today }
      item = Student.create!(attribute_hash)
    end
    num.times do
      attribute_hash = { :first_name => Faker::Name.first_name, :last_name => Faker::Name.last_name, :email => Faker::Internet.email, :phone => Faker::PhoneNumber.phone_number}
      item = Person.create!(attribute_hash)
    end

  end

  def self.gender?
    if rand(2) >= 1
      return 'male'
    else
      return 'female'
    end
  end
end
