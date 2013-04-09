class DashboardController < ApplicationController
  def dashboard
    @groups = Group.all
    respond_to do |format|
        format.html
    end
  end

end