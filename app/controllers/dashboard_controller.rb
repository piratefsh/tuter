class DashboardController < ApplicationController
  helper_method :delete_group

    def dashboard
        @group = Group.new
        @course = @group.build_course
        @programs = Program.all
        student_id = @group.student_ids.build
        tutor_id = @group.tutor_ids.build

        @groups = Group.all
        @tutor_groups = @groups.select{|f| 
            f.tutor_ids.select{ |id| 
                id.tid == current_user.id}
            }

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

    #GET edit group view
    def edit_group 
        @group = Group.find(params[:id])
        respond_to do |format|
            format.html {redirect_to edit_group}
        end
    end

    def create_group 
        respond_to do |format|
            format.html {redirect_to dashboard_path}
        end
    end
end
