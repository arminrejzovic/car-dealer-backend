# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_03_06_213002) do
  create_table "cars", primary_key: "carID", id: :integer, charset: "utf8mb4", force: :cascade do |t|
    t.string "title", limit: 60, null: false
    t.integer "manufacturerID", null: false
    t.integer "modelID", null: false
    t.integer "price", null: false
    t.integer "yearBuilt", null: false
    t.integer "mileage", null: false
    t.integer "volume", null: false
    t.integer "typeID", null: false
    t.integer "fuelTypeID", null: false
    t.integer "driveID", null: false
    t.boolean "transmission", null: false
    t.boolean "newVehicle", default: false, null: false
    t.boolean "startstop", null: false
    t.boolean "parkAssist", null: false
    t.boolean "foreignLicensePlates", null: false
    t.boolean "registered", default: true, null: false
    t.boolean "serviceBook", default: true, null: false
    t.boolean "cruiseControl", null: false
    t.boolean "ABS", default: true, null: false
    t.boolean "ESP", default: true, null: false
    t.boolean "electricWindows", null: false
    t.boolean "blindspotMonitor", null: false
    t.boolean "navigation", null: false
    t.boolean "touchscreen", null: false
    t.boolean "sunroof", null: false
    t.boolean "panoramicRoof", null: false
    t.boolean "leather", null: false
    t.boolean "seatCooling", null: false
    t.boolean "massageSeats", null: false
    t.boolean "electricallyOperatedSeats", null: false
    t.boolean "memorySeats", null: false
    t.boolean "aluminiumRims", default: true, null: false
    t.boolean "alarm", null: false
    t.boolean "centralLock", null: false
    t.boolean "remoteKey", null: false
    t.boolean "isofix", null: false
    t.string "imagesFolderUrl", limit: 1000, null: false
    t.string "thumbnailUrl", limit: 1000, null: false
    t.integer "lowestPrice", null: false
    t.boolean "availableForRent", default: false, null: false
    t.index ["driveID"], name: "link5"
    t.index ["fuelTypeID"], name: "link4"
    t.index ["manufacturerID"], name: "link1"
    t.index ["modelID"], name: "link2"
    t.index ["typeID"], name: "link3"
  end

  create_table "gorivo", primary_key: "GorivoID", id: :integer, charset: "utf8mb4", force: :cascade do |t|
    t.string "gorivo", limit: 20, null: false
  end

  create_table "modeli", primary_key: "modelID", id: :integer, charset: "utf8mb4", force: :cascade do |t|
    t.integer "manufacturerID", null: false
    t.string "modelName", limit: 100, null: false
    t.index ["manufacturerID"], name: "manufacturerID"
  end

  create_table "pogon", primary_key: "ID", id: :integer, charset: "utf8mb4", force: :cascade do |t|
    t.string "pogon-tip", limit: 20, null: false
  end

  create_table "proizvodjaci", primary_key: "ID", id: :integer, charset: "utf8mb4", force: :cascade do |t|
    t.string "Name", limit: 50, null: false
  end

  create_table "vrste", primary_key: "vrsteID", id: :integer, charset: "utf8mb4", force: :cascade do |t|
    t.string "vrsta", limit: 40, null: false
  end

  add_foreign_key "cars", "gorivo", column: "fuelTypeID", primary_key: "GorivoID", name: "link4"
  add_foreign_key "cars", "modeli", column: "modelID", primary_key: "modelID", name: "link2"
  add_foreign_key "cars", "pogon", column: "driveID", primary_key: "ID", name: "link5"
  add_foreign_key "cars", "proizvodjaci", column: "manufacturerID", primary_key: "ID", name: "link1"
  add_foreign_key "cars", "vrste", column: "typeID", primary_key: "vrsteID", name: "link3"
  add_foreign_key "modeli", "proizvodjaci", column: "manufacturerID", primary_key: "ID", name: "manufacturer-link"
end
