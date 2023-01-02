require "test_helper"

class BuildingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @building = buildings(:one)
  end

  test "should get index" do
    get buildings_url, as: :json
    assert_response :success
  end

  test "should create building" do
    assert_difference("Building.count") do
      post buildings_url, params: { building: { building_name: @building.building_name, building_url: @building.building_url, built_year: @building.built_year, mng_fee: @building.mng_fee } }, as: :json
    end

    assert_response :created
  end

  test "should show building" do
    get building_url(@building), as: :json
    assert_response :success
  end

  test "should update building" do
    patch building_url(@building), params: { building: { building_name: @building.building_name, building_url: @building.building_url, built_year: @building.built_year, mng_fee: @building.mng_fee } }, as: :json
    assert_response :success
  end

  test "should destroy building" do
    assert_difference("Building.count", -1) do
      delete building_url(@building), as: :json
    end

    assert_response :no_content
  end
end
