class GroupsController < ApplicationController
	def index
		@groups = Group.all
		@group = Group.new

		respond_to do |format|
			format.html
		end
	end

	def new
		@group = Group.new

		respond_to do |format|
			format.html
		end
	end

	def create 
		@group = Group.new(params[:group])

		respond_to do |format|
			if @group.save
				format.html { redirect_to groups_path }
			end	
		end
	end 

	def destroy
	end

	def edit
		# @group = Group.find(params[:group_id])

		respond_to do |format|
			format.html
		end
	end
end
