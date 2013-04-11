class GroupsController < ApplicationController
	def index
		@groups = Group.all
		@new_group = Group.new(params[:group])
		@tutors = Array.new

		respond_to do |format|
			format.html
		end
	end

	def new
		@group = Group.new
		@students = User.all.role? :student
		@tutors = User.all.role? :tutor

		student.each do |student|
			# code to add student ids to group student ids
		end

		tutors.each do |tutor|
			# code to add tutors to group tutor ids
		end

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
end
