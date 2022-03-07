class GorivosController < ApplicationController
  before_action :set_gorivo, only: %i[ show update destroy ]

  # GET /gorivos
  def index
    @gorivos = Gorivo.all

    render json: @gorivos
  end

  # GET /gorivos/1
  def show
    render json: @gorivo
  end

  # POST /gorivos
  def create
    @gorivo = Gorivo.new(gorivo_params)

    if @gorivo.save
      render json: @gorivo, status: :created, location: @gorivo
    else
      render json: @gorivo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gorivos/1
  def update
    if @gorivo.update(gorivo_params)
      render json: @gorivo
    else
      render json: @gorivo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gorivos/1
  def destroy
    @gorivo.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_gorivo
    @gorivo = Gorivo.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def gorivo_params
    params.require(:gorivo).permit(:gorivo)
  end
end
