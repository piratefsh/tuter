class CreateOrganizationRoles < ActiveRecord::Migration
  def change
    create_table :organization_roles do |t|

      t.timestamps
    end
  end
end
