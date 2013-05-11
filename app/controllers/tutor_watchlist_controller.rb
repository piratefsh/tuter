class TutorWatchlistController < ApplicationController
	def new
		@watchlist = TutorWatchlist.new
	end

	def create
		@watchlist = TutorWatchlist.new(params[:tutor_watchlist])
	end

	def update
		@user = User.find(params[:user_id])

		if @user.tutor_watchlist.nil?
			@watchlist = TutorWatchlist.new
			@watchlist.assign_attributes(:user => @user)
			@user.assign_attributes(:tutor_watchlist => @watchlist)
		else
			@watchlist = @user.tutor_watchlist
		end

		tutor_id = TutorId.create(:tid => params[:tutor_id], :tutor_watchlist_id => @watchlist.id)

		@watchlist.tutor_ids << tutor_id
		
		respond_to do |format|
			if @watchlist.save
				format.html{ redirect_to @watchlist}
			end
		end
		# if @watchlist.tutor_ids.first.tid.nil?
		# 	raise "fuck"
		# else 
		# 	raise "yay"
		# end
		# raise @watchlist.tutor_ids.first.tutor_watchlist_id.to_s

	end

	def show
		@watchlist = current_user.tutor_watchlist
		
		respond_to do |format|
			format.html {redirect_to "/dashboard"} 
		end
	end	

	def destroy
		@watchlist = TutorWatchlist.find(params[:id])
	end

end
