class RemoveRolesFromUser < ActiveRecord::Migration
  def change
    remove_columns(:users, :student, :tutor, :org)
  end
end
