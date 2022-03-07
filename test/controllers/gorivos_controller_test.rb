require "test_helper"

class GorivosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gorivo = gorivos(:one)
  end

  test "should get index" do
    get gorivos_url, as: :json
    assert_response :success
  end

  test "should create gorivo" do
    assert_difference("Gorivo.count") do
      post gorivos_url, params: { gorivo: { gorivo: @gorivo.gorivo } }, as: :json
    end

    assert_response :created
  end

  test "should show gorivo" do
    get gorivo_url(@gorivo), as: :json
    assert_response :success
  end

  test "should update gorivo" do
    patch gorivo_url(@gorivo), params: { gorivo: { gorivo: @gorivo.gorivo } }, as: :json
    assert_response :success
  end

  test "should destroy gorivo" do
    assert_difference("Gorivo.count", -1) do
      delete gorivo_url(@gorivo), as: :json
    end

    assert_response :no_content
  end
end
