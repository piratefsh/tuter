class AddRolesToUser < ActiveRecord::Migration
  def change
  	remove_column :users, :roles_mask
  	add_column :users, :student, :boolean
  	add_column :users, :tutor, :boolean
  	add_column :users, :org, :boolean
  end
end
