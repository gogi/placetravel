class PlacesController < ApplicationController

  expose(:trip)
  expose(:places) { trip.places }
  expose(:place, attributes: :place_params)
  expose(:user)

  before_action :authenticate_user!

  # GET /places
  # GET /places.json
  def index
  end

  # GET /places/1
  # GET /places/1.json
  def show
  end

  # GET /places/new
  def new
  end

  # GET /places/1/edit
  def edit
  end

  # POST /places
  # POST /places.json
  def create
    place = Place.new(place_params)
    place.user = current_user
    place.trip = Trip.find(params[:trip_id])

    respond_to do |format|
      if place.save
        format.html { redirect_to trip_places_path(place.trip, place), notice: 'Place was successfully created.' }
        format.json { render :show, status: :created, location: place }
      else
        format.html { render :new }
        format.json { render json: place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /places/1
  # PATCH/PUT /places/1.json
  def update
    respond_to do |format|
      if place.save
        format.html { redirect_to trip_place_path(place.trip, place), notice: 'Place was successfully updated.' }
        format.json { render :show, status: :ok, location: place }
      else
        format.html { render :edit }
        format.json { render json: place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /places/1
  # DELETE /places/1.json
  def destroy
    place.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def place_params
      params.require(:place).permit(:url, :description, :price, :name)
    end
end
