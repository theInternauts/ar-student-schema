require_relative '../config'

# this is where you should use an ActiveRecord migration to

class AddTeachersColumn < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
      add_column :teachers, :students_ID, :integer
  end
end
