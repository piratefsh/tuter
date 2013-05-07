class AddWatchlistIdToTutorWatchlist < ActiveRecord::Migration
  def change
  	add_column :tutor_watchlists, :tutor_watchlist_id, :integer
  end
end
