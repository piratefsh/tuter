class AddFieldsToOrganizationRole < ActiveRecord::Migration
  def change
    add_column :organization_roles, :organization_ID, :integer

    add_column :organization_roles, :organization_name, :string

  end
end
