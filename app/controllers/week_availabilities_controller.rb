class WeekAvailabilitiesController < ApplicationController
  
  
  helper_method :format_time

  # GET /week_availabilities
  # GET /week_availabilities.json
  def index
    @week_availabilities = WeekAvailability.where("user_id = ?", params[:user_id])
    @user = User.find(params[:user_id])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @week_availabilities }
    end
  end

  # GET /week_availabilities/1
  # GET /week_availabilities/1.json
  def show
    @week_availability = WeekAvailability.find(params[:id])
    @user = User.find(@week_availability.user_id)
    @days = @week_availability.day_availabilities.sort_by {|d| d.start_time.hour}
    @day_availability = DayAvailability.new
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @week_availability }
    end
  end

  # GET /week_availabilities/new
  # GET /week_availabilities/new.json
  def new
    @week_availability = WeekAvailability.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @week_availability }
    end
  end

  # GET /week_availabilities/1/edit
  def edit
    @week_availability = WeekAvailability.find(params[:id])
  end

  # POST /week_availabilities
  # POST /week_availabilities.json
  def create
    @week_availability = WeekAvailability.new(params[:week_availability])

    respond_to do |format|
      if @week_availability.save
        format.html { redirect_to @week_availability, notice: 'Week availability was successfully created.' }
        format.json { render json: @week_availability, status: :created, location: @week_availability }
      else
        format.html { render action: "new" }
        format.json { render json: @week_availability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /week_availabilities/1
  # PUT /week_availabilities/1.json
  def update
    @week_availability = WeekAvailability.find(params[:id])

    respond_to do |format|
      if @week_availability.update_attributes(params[:week_availability])
        format.html { redirect_to @week_availability, notice: 'Week availability was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @week_availability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /week_availabilities/1
  # DELETE /week_availabilities/1.json
  def destroy
    @week_availability = WeekAvailability.find(params[:id])
    @week_availability.destroy

    respond_to do |format|
      format.html { redirect_to week_availabilities_url(:user_id => @week_availability.user_id)}
      format.json { head :no_content }
    end
  end

  def format_time(d)
    zone = Time.zone

    if current_user
      current_user.time_zone
    end

    d.to_time.in_time_zone().strftime(DayAvailability.time_format)
  end
end
