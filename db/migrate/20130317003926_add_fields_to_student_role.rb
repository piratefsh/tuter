class AddFieldsToStudentRole < ActiveRecord::Migration
  def change
    add_column :student_roles, :student_ID, :integer

    add_column :student_roles, :age, :integer

    add_column :student_roles, :year_in_school, :string

    add_column :student_roles, :transportation, :boolean

  end
end
