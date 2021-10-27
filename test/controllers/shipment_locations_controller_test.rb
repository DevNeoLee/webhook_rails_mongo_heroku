require "test_helper"

class ShipmentLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shipment_location = shipment_locations(:one)
  end

  test "should get index" do
    get shipment_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_shipment_location_url
    assert_response :success
  end

  test "should create shipment_location" do
    assert_difference('ShipmentLocation.count') do
      post shipment_locations_url, params: { shipment_location: { BrokerageJob_id: @shipment_location.BrokerageJob_id, latitude: @shipment_location.latitude, longitude: @shipment_location.longitude, shipment: @shipment_location.shipment } }
    end

    assert_redirected_to shipment_location_url(ShipmentLocation.last)
  end

  test "should show shipment_location" do
    get shipment_location_url(@shipment_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_shipment_location_url(@shipment_location)
    assert_response :success
  end

  test "should update shipment_location" do
    patch shipment_location_url(@shipment_location), params: { shipment_location: { BrokerageJob_id: @shipment_location.BrokerageJob_id, latitude: @shipment_location.latitude, longitude: @shipment_location.longitude, shipment: @shipment_location.shipment } }
    assert_redirected_to shipment_location_url(@shipment_location)
  end

  test "should destroy shipment_location" do
    assert_difference('ShipmentLocation.count', -1) do
      delete shipment_location_url(@shipment_location)
    end

    assert_redirected_to shipment_locations_url
  end
end
