class CarsController < ApplicationController
  before_action :set_car, only: %i[ show update destroy ]

  # GET /cars
  def index
    @cars = Car.all

    render json: @cars
  end

  # GET /cars/1
  def show
    render json: @car
  end

  # POST /cars
  def create
    @car = Car.new(car_params)

    if @car.save
      render json: @car, status: :created, location: @car
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cars/1
  def update
    if @car.update(car_params)
      render json: @car
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cars/1
  def destroy
    @car.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_car
    @car = Car.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def car_params
    params.require(:car).permit(:title, :manufacturerID, :modelID, :price, :yearBuilt, :mileage, :volume, :typeID, :fuelTypeID, :driveID, :transmission, :newVehicle, :startstop, :parkAssist, :foreignLicensePlates, :registered, :serviceBook, :cruiseControl, :ABS, :ESP, :electricWindows, :blindspotMonitor, :navigation, :touchscreen, :sunroof, :panoramicRoof, :leather, :seatCooling, :massageSeats, :electricallyOperatedSeats, :memorySeats, :aluminiumRims, :alarm, :centralLock, :remoteKey, :isofix, :imagesFolderUrl, :thumbnailUrl, :lowestPrice, :availableForRent)
  end
end
