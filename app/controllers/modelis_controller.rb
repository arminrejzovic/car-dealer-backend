class ModelisController < ApplicationController
  before_action :set_modeli, only: %i[ show update destroy ]

  # GET /modelis
  def index
    @modelis = Modeli.all

    render json: @modelis
  end

  # GET /modelis/1
  def show
    render json: @modeli
  end

  # POST /modelis
  def create
    @modeli = Modeli.new(modeli_params)

    if @modeli.save
      render json: @modeli, status: :created, location: @modeli
    else
      render json: @modeli.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /modelis/1
  def update
    if @modeli.update(modeli_params)
      render json: @modeli
    else
      render json: @modeli.errors, status: :unprocessable_entity
    end
  end

  # DELETE /modelis/1
  def destroy
    @modeli.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modeli
      @modeli = Modeli.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def modeli_params
      params.require(:modeli).permit(:manufacturerID, :modelName)
    end
end
