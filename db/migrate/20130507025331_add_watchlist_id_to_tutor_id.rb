class AddWatchlistIdToTutorId < ActiveRecord::Migration
  def change
  	add_column :tutor_ids, :tutor_watchlist_id, :integer
  end
end
