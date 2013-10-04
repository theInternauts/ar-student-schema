require_relative '../../db/config'
require_relative './person'

class Teacher < Person
# implement your Student model here
  has_many :student_teachers, :foreign_key => :teachers_ID
  has_many :students, :through => :student_teachers
  # validates :email, uniqueness: { case_sensitive: false }

  # def name
  #   self.first_name + " " + self.last_name
  # end
end


# how do we find the students associated with a teacher?



