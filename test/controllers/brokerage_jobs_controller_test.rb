require "test_helper"

class BrokerageJobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brokerage_job = brokerage_jobs(:one)
  end

  test "should get index" do
    get brokerage_jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_brokerage_job_url
    assert_response :success
  end

  test "should create brokerage_job" do
    assert_difference('BrokerageJob.count') do
      post brokerage_jobs_url, params: { brokerage_job: { job: @brokerage_job.job, shipment: @brokerage_job.shipment } }
    end

    assert_redirected_to brokerage_job_url(BrokerageJob.last)
  end

  test "should show brokerage_job" do
    get brokerage_job_url(@brokerage_job)
    assert_response :success
  end

  test "should get edit" do
    get edit_brokerage_job_url(@brokerage_job)
    assert_response :success
  end

  test "should update brokerage_job" do
    patch brokerage_job_url(@brokerage_job), params: { brokerage_job: { job: @brokerage_job.job, shipment: @brokerage_job.shipment } }
    assert_redirected_to brokerage_job_url(@brokerage_job)
  end

  test "should destroy brokerage_job" do
    assert_difference('BrokerageJob.count', -1) do
      delete brokerage_job_url(@brokerage_job)
    end

    assert_redirected_to brokerage_jobs_url
  end
end
