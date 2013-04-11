class GroupsController < ApplicationController
	def index
		@groups = Group.all
		@group = Group.new(params[:group])
		@tutors = Array.new

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
				format.html { redirect_to dashboard_path }
			end	
		end
	end 

	def show
		@group = Group.find(params[:id])

		respond_to do |format|
			format.html
		end
	end

	def destroy
		@group = Group.find(params[:id])

		@group.destroy 

		respond_to do |format|
			format.html { redirect_to groups_url }
		end

	end

	def edit
		@group = Group.find(params[:id])

		respond_to do |format|
			format.html
		end
	end

	def update
		@group = Group.find(params[:id])

		@group.update_attributes(params[:group])
		respond_to do |format|
			format.html {redirect_to dashboard_path}
		end
	end
end
