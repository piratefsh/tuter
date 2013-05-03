class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :reviewer_id
      t.integer :rating
      t.string :title
      t.string :content
      t.boolean :recommend

      t.timestamps
    end
  end
end
