class OrganizationsController < ApplicationController
  def index
    @organizations = Organization.all
    

    respond_to do |format|
      format.html
    end
  end

  def new
    @organization = Organization.new
    @email = current_user.email

    respond_to do |format|
      format.html
    end
  end

  def create 
    @organization = Organization.new(params[:organization])
    @email = current_user.email

    respond_to do |format|
      if @organization.save
        format.html { redirect_to dashboard_path }
      end 
    end
  end 

  def show
    @organization = Organization.find(params[:id])
    @programs = Program.where(:organization_id => @organization.id)
    @user = User.where(:id => @organization.user_id).first
    respond_to do |format|
      format.html
    end
  end

  def destroy
    organization = Organization.find(params[:id])
    organization.destroy

    respond_to do |format|
      format.html {redirect_to "/dashboard"}
    end
  end

  def down
    drop_table :organizations
  end

  def edit
    @organization = Organization.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def update
    @organization = Organization.find(params[:id])

    @organization.update_attributes(params[:organization])
    respond_to do |format|
      format.html {redirect_to organization_path}
    end
  end
end
