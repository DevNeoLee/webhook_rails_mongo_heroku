require "application_system_test_case"

class ShipmentLocationsTest < ApplicationSystemTestCase
  setup do
    @shipment_location = shipment_locations(:one)
  end

  test "visiting the index" do
    visit shipment_locations_url
    assert_selector "h1", text: "Shipment Locations"
  end

  test "creating a Shipment location" do
    visit shipment_locations_url
    click_on "New Shipment Location"

    fill_in "Brokeragejob", with: @shipment_location.BrokerageJob_id
    fill_in "Latitude", with: @shipment_location.latitude
    fill_in "Longitude", with: @shipment_location.longitude
    fill_in "Shipment", with: @shipment_location.shipment
    click_on "Create Shipment location"

    assert_text "Shipment location was successfully created"
    click_on "Back"
  end

  test "updating a Shipment location" do
    visit shipment_locations_url
    click_on "Edit", match: :first

    fill_in "Brokeragejob", with: @shipment_location.BrokerageJob_id
    fill_in "Latitude", with: @shipment_location.latitude
    fill_in "Longitude", with: @shipment_location.longitude
    fill_in "Shipment", with: @shipment_location.shipment
    click_on "Update Shipment location"

    assert_text "Shipment location was successfully updated"
    click_on "Back"
  end

  test "destroying a Shipment location" do
    visit shipment_locations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shipment location was successfully destroyed"
  end
end
