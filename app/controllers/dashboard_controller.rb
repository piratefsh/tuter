class DashboardController < ApplicationController
  helper_method :delete_group

    def dashboard
        @groups = Group.all
        @programs = Program.all
        @new_group = Group.new(params[:group])
        respond_to do |format|
            format.html
        end
    end

    def delete_group 
        Group.destroy(params[:id])

        respond_to do |format|
            format.html {redirect_to dashboard_path}
        end
    end

    def create_group 
        respond_to do |format|
            format.html {redirect_to dashboard_path}
        end
    end
end

