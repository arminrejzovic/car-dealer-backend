require "test_helper"

class VrstesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vrste = vrstes(:one)
  end

  test "should get index" do
    get vrstes_url, as: :json
    assert_response :success
  end

  test "should create vrste" do
    assert_difference("Vrste.count") do
      post vrstes_url, params: { vrste: { vrsta: @vrste.vrsta } }, as: :json
    end

    assert_response :created
  end

  test "should show vrste" do
    get vrste_url(@vrste), as: :json
    assert_response :success
  end

  test "should update vrste" do
    patch vrste_url(@vrste), params: { vrste: { vrsta: @vrste.vrsta } }, as: :json
    assert_response :success
  end

  test "should destroy vrste" do
    assert_difference("Vrste.count", -1) do
      delete vrste_url(@vrste), as: :json
    end

    assert_response :no_content
  end
end
