class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.integer :program_ID
      t.text :desc

      t.timestamps
    end
  end
end
