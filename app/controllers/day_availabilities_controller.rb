class DayAvailabilitiesController < WeekAvailabilitiesController
  # GET /day_availabilities
  # GET /day_availabilities.json
  def index
    @day_availabilities = DayAvailability.all

    respond_to do |format|
      format.html {redirect_to @day_availabilities.week_availability}
      # format.json { render json: @day_availability }
    end
  end

  # GET /day_availabilities/1
  # GET /day_availabilities/1.json
  def show
    respond_to do |format|
       format.html 
      # format.json { render json: @day_availability }
    end
  end

  # GET /day_availabilities/new
  # GET /day_availabilities/new.json
  def new
    @week_availability = WeekAvailability.find(params[:week_availability_id])
    @day_availability = DayAvailability.new

    respond_to do |format|
      format.html # new.html.erb
      # format.json { render json: @day_availability }
    end
  end

  # GET /day_availabilities/1/edit
  def edit
    @day_availability = DayAvailability.find(params[:id])
    @week_availability = @day_availability.week_availability
  end

  # POST /day_availabilities
  # POST /day_availabilities.json
  def create
    @week = WeekAvailability.find(params[:week_availability_id])
    @day_availability = @week.day_availabilities.new(params[:day_availability])

    respond_to do |format|
      if @day_availability.save
        format.html {redirect_to @week}
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /day_availabilities/1
  # PUT /day_availabilities/1.json
  def update
    @day = DayAvailability.find(params[:id])
    @week = WeekAvailability.find(params[:week_availability_id])

    respond_to do |format|
      if @day.update_attributes(params[:day_availability])
        format.html {redirect_to @week, notice: 'Successfully updated schedule.'}
        # format.json { head :no_content }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /day_availabilities/1
  # DELETE /day_availabilities/1.json
  def destroy
    @week = WeekAvailability.find(params[:week_availability_id])
    @day_availability = DayAvailability.find(params[:id])
    @day_availability.destroy

    respond_to do |format|
      format.html { redirect_to @week }
      format.json { head :no_content }
    end
  end
end
