class PogonsController < ApplicationController
  before_action :set_pogon, only: %i[ show update destroy ]

  # GET /pogons
  def index
    @pogons = Pogon.all

    render json: @pogons
  end

  # GET /pogons/1
  def show
    render json: @pogon
  end

  # POST /pogons
  def create
    @pogon = Pogon.new(pogon_params)

    if @pogon.save
      render json: @pogon, status: :created, location: @pogon
    else
      render json: @pogon.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pogons/1
  def update
    if @pogon.update(pogon_params)
      render json: @pogon
    else
      render json: @pogon.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pogons/1
  def destroy
    @pogon.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pogon
      @pogon = Pogon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pogon_params
      params.fetch(:pogon, {})
    end
end
