require "application_system_test_case"

class BrokerageJobsTest < ApplicationSystemTestCase
  setup do
    @brokerage_job = brokerage_jobs(:one)
  end

  test "visiting the index" do
    visit brokerage_jobs_url
    assert_selector "h1", text: "Brokerage Jobs"
  end

  test "creating a Brokerage job" do
    visit brokerage_jobs_url
    click_on "New Brokerage Job"

    fill_in "Job", with: @brokerage_job.job
    fill_in "Shipment", with: @brokerage_job.shipment
    click_on "Create Brokerage job"

    assert_text "Brokerage job was successfully created"
    click_on "Back"
  end

  test "updating a Brokerage job" do
    visit brokerage_jobs_url
    click_on "Edit", match: :first

    fill_in "Job", with: @brokerage_job.job
    fill_in "Shipment", with: @brokerage_job.shipment
    click_on "Update Brokerage job"

    assert_text "Brokerage job was successfully updated"
    click_on "Back"
  end

  test "destroying a Brokerage job" do
    visit brokerage_jobs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Brokerage job was successfully destroyed"
  end
end
