require "test_helper"

class PogonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pogon = pogons(:one)
  end

  test "should get index" do
    get pogons_url, as: :json
    assert_response :success
  end

  test "should create pogon" do
    assert_difference("Pogon.count") do
      post pogons_url, params: { pogon: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show pogon" do
    get pogon_url(@pogon), as: :json
    assert_response :success
  end

  test "should update pogon" do
    patch pogon_url(@pogon), params: { pogon: {  } }, as: :json
    assert_response :success
  end

  test "should destroy pogon" do
    assert_difference("Pogon.count", -1) do
      delete pogon_url(@pogon), as: :json
    end

    assert_response :no_content
  end
end
