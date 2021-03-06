class TripsController < ApplicationController

  expose(:trips) { current_user.trips.decorate }
  expose(:trip, attributes: :trip_params)
  expose(:user)

  before_action :set_trip, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def invite
    trip = Trip.find(params[:trip_id])
    authorize trip
    InviteMember.new(
      invite_params[:email],
      invite_params[:name],
      trip.id
    ).call
    redirect_to trip
  end

  # GET /trips
  # GET /trips.json
  def index
  end

  def users
  end

  # GET /trips/1
  # GET /trips/1.json
  def show
    @membership = trip.membership(current_user)
  end

  # GET /trips/new
  def new
  end

  # GET /trips/1/edit
  def edit
  end

  # POST /trips
  # POST /trips.json
  def create
    trip.user = current_user
    trip.users << current_user

    respond_to do |format|
      if trip.save
        format.html { redirect_to trip, notice: 'Trip was successfully created.' }
        format.json { render :show, status: :created, address: trip }
      else
        format.html { render :new }
        format.json { render json: trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trips/1
  # PATCH/PUT /trips/1.json
  def update
    respond_to do |format|
      if trip.update(trip_params)
        format.html { redirect_to trip, notice: 'Trip was successfully updated.' }
        format.json { render :show, status: :ok, address: trip }
      else
        format.html { render :edit }
        format.json { render json: trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    trip.destroy
    respond_to do |format|
      format.html { redirect_to trips_url, notice: 'Trip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      trip = Trip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_params
      params.require(:trip).permit(
        :name,
        :description,
        :address,
        :date,
        :user_id,
        :longitude,
        :latitude)
    end

    def invite_params
      params.require(:invite).permit(:email, :name)
    end
end
