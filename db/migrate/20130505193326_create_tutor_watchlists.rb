class CreateTutorWatchlists < ActiveRecord::Migration
  def change
    create_table :tutor_watchlists do |t|
      t.integer :user_id
      
      t.timestamps
    end
  end
end
