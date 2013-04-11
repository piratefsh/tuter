class DashboardController < ApplicationController
  helper_method :delete_group

    def dashboard
        @groups = Group.all
        @programs = Program.all
        @group = Group.new(params[:group])
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
