class CompletedTripsController < ApplicationController
  before_action :set_completed_trip, only: [:show, :edit, :update, :destroy]

  # GET /completed_trips
  # GET /completed_trips.json
  def index
    @completed_trips = CompletedTrip.all
  end

  # GET /completed_trips/1
  # GET /completed_trips/1.json
  def show
  end

  # GET /completed_trips/new
  def new
    @completed_trip = CompletedTrip.new
  end

  # GET /completed_trips/1/edit
  def edit
  end

  # POST /completed_trips
  # POST /completed_trips.json
  def create
    @completed_trip = CompletedTrip.new(completed_trip_params)

    respond_to do |format|
      if @completed_trip.save
        format.html { redirect_to @completed_trip, notice: 'Completed trip was successfully created.' }
        format.json { render :show, status: :created, location: @completed_trip }
      else
        format.html { render :new }
        format.json { render json: @completed_trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /completed_trips/1
  # PATCH/PUT /completed_trips/1.json
  def update
    respond_to do |format|
      if @completed_trip.update(completed_trip_params)
        format.html { redirect_to @completed_trip, notice: 'Completed trip was successfully updated.' }
        format.json { render :show, status: :ok, location: @completed_trip }
      else
        format.html { render :edit }
        format.json { render json: @completed_trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /completed_trips/1
  # DELETE /completed_trips/1.json
  def destroy
    @completed_trip.destroy
    respond_to do |format|
      format.html { redirect_to completed_trips_url, notice: 'Completed trip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_completed_trip
      @completed_trip = CompletedTrip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def completed_trip_params
      params.fetch(:completed_trip, {})
    end
end
