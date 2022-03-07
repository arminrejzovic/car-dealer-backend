require "test_helper"

class ModelisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @modeli = modelis(:one)
  end

  test "should get index" do
    get modelis_url, as: :json
    assert_response :success
  end

  test "should create modeli" do
    assert_difference("Modeli.count") do
      post modelis_url, params: { modeli: { manufacturerID: @modeli.manufacturerID, modelName: @modeli.modelName } }, as: :json
    end

    assert_response :created
  end

  test "should show modeli" do
    get modeli_url(@modeli), as: :json
    assert_response :success
  end

  test "should update modeli" do
    patch modeli_url(@modeli), params: { modeli: { manufacturerID: @modeli.manufacturerID, modelName: @modeli.modelName } }, as: :json
    assert_response :success
  end

  test "should destroy modeli" do
    assert_difference("Modeli.count", -1) do
      delete modeli_url(@modeli), as: :json
    end

    assert_response :no_content
  end
end
