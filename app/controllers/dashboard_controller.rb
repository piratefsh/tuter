class DashboardController < ApplicationController
  def dashboard
    @groups = Group.all
    @programs = Program.all
    respond_to do |format|
        format.html
    end
  end

end