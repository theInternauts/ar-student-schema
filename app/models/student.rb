require_relative '../../db/config'
require_relative './person'

class Student < Person
# implement your Student model here
  # def name
  #   self.first_name + " " + self.last_name
  # end
  has_many :student_teachers, :foreign_key => :students_ID
  has_many :teachers, :through => :student_teachers

  def age
    now = Date.today
    age = now.year - self.birthday.year - ((now.month > self.birthday.month || (now.month == self.birthday.month && now.day >= self.birthday.day)) ? 0 : 1)
  end

end
