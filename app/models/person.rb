require_relative '../../db/config'

class Person < ActiveRecord::Base
# implement your Student model here
  validates :email, uniqueness: { case_sensitive: false }

  def name
    self.first_name + " " + self.last_name
  end
end
