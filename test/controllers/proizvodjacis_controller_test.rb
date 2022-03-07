require "test_helper"

class ProizvodjacisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proizvodjaci = proizvodjacis(:one)
  end

  test "should get index" do
    get proizvodjacis_url, as: :json
    assert_response :success
  end

  test "should create proizvodjaci" do
    assert_difference("Proizvodjaci.count") do
      post proizvodjacis_url, params: { proizvodjaci: { Name: @proizvodjaci.Name } }, as: :json
    end

    assert_response :created
  end

  test "should show proizvodjaci" do
    get proizvodjaci_url(@proizvodjaci), as: :json
    assert_response :success
  end

  test "should update proizvodjaci" do
    patch proizvodjaci_url(@proizvodjaci), params: { proizvodjaci: { Name: @proizvodjaci.Name } }, as: :json
    assert_response :success
  end

  test "should destroy proizvodjaci" do
    assert_difference("Proizvodjaci.count", -1) do
      delete proizvodjaci_url(@proizvodjaci), as: :json
    end

    assert_response :no_content
  end
end
