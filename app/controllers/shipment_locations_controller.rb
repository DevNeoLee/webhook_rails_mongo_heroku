class ShipmentLocationsController < ApplicationController
  before_action :set_shipment_location, only: %i[ show edit update destroy ]

  # GET /shipment_locations or /shipment_locations.json
  def index
    @shipment_locations = ShipmentLocation.all
  end

  # GET /shipment_locations/1 or /shipment_locations/1.json
  def show
  end

  # GET /shipment_locations/new
  def new
    @shipment_location = ShipmentLocation.new
  end

  # GET /shipment_locations/1/edit
  def edit
  end

  # POST /shipment_locations or /shipment_locations.json
  def create
    @shipment_location = ShipmentLocation.new(shipment_location_params)

    respond_to do |format|
      if @shipment_location.save
        format.html { redirect_to @shipment_location, notice: "Shipment location was successfully created." }
        format.json { render :show, status: :created, location: @shipment_location }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shipment_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipment_locations/1 or /shipment_locations/1.json
  def update
    respond_to do |format|
      if @shipment_location.update(shipment_location_params)
        format.html { redirect_to @shipment_location, notice: "Shipment location was successfully updated." }
        format.json { render :show, status: :ok, location: @shipment_location }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shipment_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipment_locations/1 or /shipment_locations/1.json
  def destroy
    @shipment_location.destroy
    respond_to do |format|
      format.html { redirect_to shipment_locations_url, notice: "Shipment location was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipment_location
      @shipment_location = ShipmentLocation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shipment_location_params
      params.require(:shipment_location).permit(:shipment, :latitude, :longitude, :BrokerageJob_id)
    end
end
