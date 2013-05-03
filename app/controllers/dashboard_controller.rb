class DashboardController < ApplicationController
  helper_method :delete_group

    def dashboard
        @user = current_user
        @group = Group.new
        @course = @group.build_course
        @programs = Program.all
        @organization = Organization.new
        student_id = @group.student_ids.build
        tutor_id = @group.tutor_ids.build

        @tutor_groups = Array.new

        @students = Array.new
        User.all.each do |u|
            if u.role? :student 
                @students << [u.last_name, u.id]
            end
        end

        Group.all.select do |group|
            group.tutor_ids.all.each do |tutor|
                if current_user.id == tutor.tid
                    @tutor_groups << group
                end
            end
        end
        
        respond_to do |format|
            format.html
        end
    end

    #delete group from database
    def delete_group 
        Group.destroy(params[:id])

        respond_to do |format|
            format.html {redirect_to dashboard_path}
        end
    end
end
