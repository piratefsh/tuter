class AddWatchlistIdToUser < ActiveRecord::Migration
  def change
  	add_column :users, :tutor_watchlist_id, :integer
  end
end
