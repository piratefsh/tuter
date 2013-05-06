class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.text :desc
      t.integer :id

      t.timestamps
    end
  end
end
