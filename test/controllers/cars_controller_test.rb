require "test_helper"

class CarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car = cars(:one)
  end

  test "should get index" do
    get cars_url, as: :json
    assert_response :success
  end

  test "should create car" do
    assert_difference("Car.count") do
      post cars_url, params: { car: { ABS: @car.ABS, ESP: @car.ESP, alarm: @car.alarm, aluminiumRims: @car.aluminiumRims, availableForRent: @car.availableForRent, blindspotMonitor: @car.blindspotMonitor, centralLock: @car.centralLock, cruiseControl: @car.cruiseControl, driveID: @car.driveID, electricWindows: @car.electricWindows, electricallyOperatedSeats: @car.electricallyOperatedSeats, foreignLicensePlates: @car.foreignLicensePlates, fuelTypeID: @car.fuelTypeID, imagesFolderUrl: @car.imagesFolderUrl, isofix: @car.isofix, leather: @car.leather, lowestPrice: @car.lowestPrice, manufacturerID: @car.manufacturerID, massageSeats: @car.massageSeats, memorySeats: @car.memorySeats, mileage: @car.mileage, modelID: @car.modelID, navigation: @car.navigation, newVehicle: @car.newVehicle, panoramicRoof: @car.panoramicRoof, parkAssist: @car.parkAssist, price: @car.price, registered: @car.registered, remoteKey: @car.remoteKey, seatCooling: @car.seatCooling, serviceBook: @car.serviceBook, startstop: @car.startstop, sunroof: @car.sunroof, thumbnailUrl: @car.thumbnailUrl, title: @car.title, touchscreen: @car.touchscreen, transmission: @car.transmission, typeID: @car.typeID, volume: @car.volume, yearBuilt: @car.yearBuilt } }, as: :json
    end

    assert_response :created
  end

  test "should show car" do
    get car_url(@car), as: :json
    assert_response :success
  end

  test "should update car" do
    patch car_url(@car), params: { car: { ABS: @car.ABS, ESP: @car.ESP, alarm: @car.alarm, aluminiumRims: @car.aluminiumRims, availableForRent: @car.availableForRent, blindspotMonitor: @car.blindspotMonitor, centralLock: @car.centralLock, cruiseControl: @car.cruiseControl, driveID: @car.driveID, electricWindows: @car.electricWindows, electricallyOperatedSeats: @car.electricallyOperatedSeats, foreignLicensePlates: @car.foreignLicensePlates, fuelTypeID: @car.fuelTypeID, imagesFolderUrl: @car.imagesFolderUrl, isofix: @car.isofix, leather: @car.leather, lowestPrice: @car.lowestPrice, manufacturerID: @car.manufacturerID, massageSeats: @car.massageSeats, memorySeats: @car.memorySeats, mileage: @car.mileage, modelID: @car.modelID, navigation: @car.navigation, newVehicle: @car.newVehicle, panoramicRoof: @car.panoramicRoof, parkAssist: @car.parkAssist, price: @car.price, registered: @car.registered, remoteKey: @car.remoteKey, seatCooling: @car.seatCooling, serviceBook: @car.serviceBook, startstop: @car.startstop, sunroof: @car.sunroof, thumbnailUrl: @car.thumbnailUrl, title: @car.title, touchscreen: @car.touchscreen, transmission: @car.transmission, typeID: @car.typeID, volume: @car.volume, yearBuilt: @car.yearBuilt } }, as: :json
    assert_response :success
  end

  test "should destroy car" do
    assert_difference("Car.count", -1) do
      delete car_url(@car), as: :json
    end

    assert_response :no_content
  end
end
