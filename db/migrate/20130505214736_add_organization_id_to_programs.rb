class AddOrganizationIdToPrograms < ActiveRecord::Migration
  def change
    add_column :programs, :organization_id, :integer
  end
end
