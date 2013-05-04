class ChangeContentColumnInReviews < ActiveRecord::Migration
  def up
    change_column :reviews, :content, :text
  end

  def down
  end
end
