class ProizvodjacisController < ApplicationController
  before_action :set_proizvodjaci, only: %i[ show update destroy ]

  # GET /proizvodjacis
  def index
    @proizvodjacis = Proizvodjaci.all

    render json: @proizvodjacis
  end

  # GET /proizvodjacis/1
  def show
    render json: @proizvodjaci
  end

  # POST /proizvodjacis
  def create
    @proizvodjaci = Proizvodjaci.new(proizvodjaci_params)

    if @proizvodjaci.save
      render json: @proizvodjaci, status: :created, location: @proizvodjaci
    else
      render json: @proizvodjaci.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /proizvodjacis/1
  def update
    if @proizvodjaci.update(proizvodjaci_params)
      render json: @proizvodjaci
    else
      render json: @proizvodjaci.errors, status: :unprocessable_entity
    end
  end

  # DELETE /proizvodjacis/1
  def destroy
    @proizvodjaci.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proizvodjaci
      @proizvodjaci = Proizvodjaci.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def proizvodjaci_params
      params.require(:proizvodjaci).permit(:Name)
    end
end
