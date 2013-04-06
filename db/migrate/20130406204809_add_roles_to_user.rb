class AddRolesToUser < ActiveRecord::Migration
  def change
  	remove_column :users, :roles_mask
  	add_column :users, :student, :bool
  	add_column :users, :tutor, :bool
  	add_column :users, :org, :bool
  end
end
