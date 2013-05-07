class AddAboutToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :about, :text
  end
end
