class DashboardController < ApplicationController
  helper_method :delete_group

    def dashboard
        @user = current_user
        @group = Group.new
        @course = @group.build_course
        @programs = Program.all
        student_id = @group.student_ids.build
        tutor_id = @group.tutor_ids.build
        @tutor_watchlist ||= @user.tutor_watchlist
        
        @tutor_groups = Array.new
        @student_groups = Array.new

        if @user
            @students = Array.new
            User.all.each do |u|
                if u.role? :student 
                    @students << [u.last_name, u.id]
                end
            end

            Group.all.select do |group|
                #groups that user is a tutor for
                group.tutor_ids.all.each do |tutor|
                    if current_user.id == tutor.tid
                        @tutor_groups << group
                    end
                end

                #groups that user is a student in
                group.student_ids.all.each do |student|
                    if current_user.id == student.sid 
                        @student_groups << group 
                    end
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
