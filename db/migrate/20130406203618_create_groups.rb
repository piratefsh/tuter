class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :group_ID
      t.text :desc

      t.timestamps
    end
  end
end
