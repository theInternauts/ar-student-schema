require_relative '../app/models/teacher'
require 'faker'

# module StudentsImporter
#   def self.import(filename=File.dirname(__FILE__) + "/../db/data/students.csv")
#     field_names = nil
#     Student.transaction do
#       File.open(filename).each do |line|
#         data = line.chomp.split(',')
#         if field_names.nil?
#           field_names = data
#         else
#           attribute_hash = Hash[field_names.zip(data)]
#           student = Student.create!(attribute_hash)
#         end
#       end
#     end
#   end
# end

module TeachersImporter
  def self.generate(num)
    #create given number of Teacher data entires in the database
    num.times do
      attribute_hash = { :first_name => Faker::Name.first_name, :last_name => Faker::Name.last_name, :email => Faker::Internet.email, :phone => Faker::PhoneNumber.phone_number}
      item = Teacher.create!(attribute_hash)
    end
  end
end
