require_relative '../../db/config'

class StudentTeacher < ActiveRecord::Base
# implement your Student model here
  belongs_to :students
  belongs_to :teachers
end
