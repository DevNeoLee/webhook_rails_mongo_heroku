class BrokerageJobsController < ApplicationController
  before_action :set_brokerage_job, only: %i[ show edit update destroy ]

  # GET /brokerage_jobs or /brokerage_jobs.json
  def index
    @brokerage_jobs = BrokerageJob.all
  end

  # GET /brokerage_jobs/1 or /brokerage_jobs/1.json
  def show
  end

  # GET /brokerage_jobs/new
  def new
    @brokerage_job = BrokerageJob.new
  end

  # GET /brokerage_jobs/1/edit
  def edit
  end

  # POST /brokerage_jobs or /brokerage_jobs.json
  def create
    @brokerage_job = BrokerageJob.new(brokerage_job_params)

    respond_to do |format|
      if @brokerage_job.save
        format.html { redirect_to @brokerage_job, notice: "Brokerage job was successfully created." }
        format.json { render :show, status: :created, location: @brokerage_job }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @brokerage_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brokerage_jobs/1 or /brokerage_jobs/1.json
  def update
    respond_to do |format|
      if @brokerage_job.update(brokerage_job_params)
        format.html { redirect_to @brokerage_job, notice: "Brokerage job was successfully updated." }
        format.json { render :show, status: :ok, location: @brokerage_job }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @brokerage_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brokerage_jobs/1 or /brokerage_jobs/1.json
  def destroy
    @brokerage_job.destroy
    respond_to do |format|
      format.html { redirect_to brokerage_jobs_url, notice: "Brokerage job was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brokerage_job
      @brokerage_job = BrokerageJob.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def brokerage_job_params
      params.require(:brokerage_job).permit(:job, :shipment)
    end
end
