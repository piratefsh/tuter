class GroupsController < ApplicationController
	def index
		@groups = Group.all
		@group = Group.find(params[:id])
		@students = Student_id.find(:id => params[:id])
		@tutors = User.find(params[:tutor_ids])
		#@tids = params[:tutor_ids].each { |tid| }

		respond_to do |format|
			format.html
		end
	end

	def new
		@group = Group.new
		@course = @group.build_course
		student_id = @group.student_ids.build
		tutor_id = @group.tutor_ids.build

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
		@students = StudentId.all_students

		respond_to do |format|
			format.html
			format.json { render :json => group_to_json(@group)}
		end
	end

	def group_to_json(group)
		# @group.to_json(:include => [:course, :student_ids, :tutor_ids])
		hash = group.to_h

		course = 
		{
			:course_name => group.course.name,
			:course_code => group.course.course_code,
		}

		tutors = Array.new

		group.tutor_ids.each do |t|
			u = User.find(t.tid)
			tutors << u.to_h
		end

		students = Array.new

		group.student_ids.each do |t|
			u = User.find(t.sid)
			students << u.to_h
		end

		hash[:course] = course
		hash[:students] = students
		hash[:tutors] = tutors

		hash
	end

	def destroy
		@group = Group.find(params[:id])

		@group.destroy 

		respond_to do |format|
			format.html { redirect_to groups_url }
		end

	end

	def edit
		@students = StudentId.all_students
		@group = Group.find(params[:id])
		student_id = @group.student_ids

		if not student_id
			student_id = @group.student_ids.build
		end

		respond_to do |format|
			format.html
		end
	end

	def update
		@group = Group.find(params[:id])
		@course = @group.course

		@group.update_attributes(params[:group])
		respond_to do |format|
			format.html {redirect_to dashboard_path}
		end
	end
end
