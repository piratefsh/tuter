class OrganizationsController < ApplicationController
  def index
    @organizations = Organization.all
    @user = current_user

    respond_to do |format|
      format.html
    end
  end

  def new
    @organization = Organization.new

    respond_to do |format|
      format.html
    end
  end

  def create 
    @organization = Organization.new(params[:organization])

    respond_to do |format|
      if @organization.save
        format.html { redirect_to dashboard_path }
      end 
    end
  end 

  def show
    @organization = Organization.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def destroy
  end

  def edit
    # @group = Group.find(params[:group_id])

    respond_to do |format|
      format.html
    end
  end
end
