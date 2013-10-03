require_relative '../../db/config'

class Teacher < ActiveRecord::Base
# implement your Student model here
  def name
    self.first_name + " " + self.last_name
  end
end
