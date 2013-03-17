class CreateTutorRoles < ActiveRecord::Migration
  def change
    create_table :tutor_roles do |t|

      t.timestamps
    end
  end
end
