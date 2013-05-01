class DayAvailabilitiesController < ApplicationController
  # GET /day_availabilities
  # GET /day_availabilities.json
  def index
    @day_availabilities = DayAvailability.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @day_availabilities }
    end
  end

  # GET /day_availabilities/1
  # GET /day_availabilities/1.json
  def show
    @day_availability = DayAvailability.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @day_availability }
    end
  end

  # GET /day_availabilities/new
  # GET /day_availabilities/new.json
  def new
    @day_availability = DayAvailability.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @day_availability }
    end
  end

  # GET /day_availabilities/1/edit
  def edit
    @day_availability = DayAvailability.find(params[:id])
  end

  # POST /day_availabilities
  # POST /day_availabilities.json
  def create
    @day_availability = DayAvailability.new(params[:day_availability])

    respond_to do |format|
      if @day_availability.save
        format.html { redirect_to @day_availability, notice: 'Day availability was successfully created.' }
        format.json { render json: @day_availability, status: :created, location: @day_availability }
      else
        format.html { render action: "new" }
        format.json { render json: @day_availability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /day_availabilities/1
  # PUT /day_availabilities/1.json
  def update
    @day_availability = DayAvailability.find(params[:id])

    respond_to do |format|
      if @day_availability.update_attributes(params[:day_availability])
        format.html { redirect_to @day_availability, notice: 'Day availability was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @day_availability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /day_availabilities/1
  # DELETE /day_availabilities/1.json
  def destroy
    @day_availability = DayAvailability.find(params[:id])
    @day_availability.destroy

    respond_to do |format|
      format.html { redirect_to day_availabilities_url }
      format.json { head :no_content }
    end
  end
end
