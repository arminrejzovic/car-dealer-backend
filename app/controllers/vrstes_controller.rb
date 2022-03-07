class VrstesController < ApplicationController
  before_action :set_vrste, only: %i[ show update destroy ]

  # GET /vrstes
  def index
    @vrstes = Vrste.all

    render json: @vrstes
  end

  # GET /vrstes/1
  def show
    render json: @vrste
  end

  # POST /vrstes
  def create
    @vrste = Vrste.new(vrste_params)

    if @vrste.save
      render json: @vrste, status: :created, location: @vrste
    else
      render json: @vrste.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vrstes/1
  def update
    if @vrste.update(vrste_params)
      render json: @vrste
    else
      render json: @vrste.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vrstes/1
  def destroy
    @vrste.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vrste
      @vrste = Vrste.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vrste_params
      params.require(:vrste).permit(:vrsta)
    end
end
