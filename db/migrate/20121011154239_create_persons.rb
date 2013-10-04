require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreatePersons < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
      create_table :people do |t|
        t.string :first_name
        t.string :last_name
        t.string :gender
        t.date :birthday
        t.string :email
        t.string :phone
        t.string :type
        t.timestamps
      end

      create_table :student_teachers do |t|
        t.integer :students_ID
        t.integer :teachers_ID
        t.timestamps
      end

      drop_table :students
      drop_table :teachers
  end
end
