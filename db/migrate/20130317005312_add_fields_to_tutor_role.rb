class AddFieldsToTutorRole < ActiveRecord::Migration
  def change
    add_column :tutor_roles, :tutor_ID, :integer

    add_column :tutor_roles, :age, :integer

    add_column :tutor_roles, :year_in_school, :string

    add_column :tutor_roles, :rating, :float

    add_column :tutor_roles, :transportation, :boolean

  end
end
