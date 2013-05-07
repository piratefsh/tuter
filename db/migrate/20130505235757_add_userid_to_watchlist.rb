class AddUseridToWatchlist < ActiveRecord::Migration
  def change
  	add_column :tutor_watchlists, :user_id, :integer
  end
end
