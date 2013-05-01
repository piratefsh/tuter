class AddPersonalInformationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :age, :integer
    add_column :users, :year, :string
    add_column :users, :transportation, :string
  end
end
