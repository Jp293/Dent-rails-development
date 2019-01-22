class DentsController < ApplicationController
  before_action :set_dent, only: [:show, :update, :destroy]

  # GET /dents
  def index
    @dents = Dent.all

    render json: @dents
  end

  # GET /dents/1
  def show
    render json: @dent
  end

  # POST /dents
  def create
    @dent = Dent.new(dent_params)

    if @dent.save
      render json: @dent, status: :created, location: @dent
    else
      render json: @dent.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dents/1
  def update
    if @dent.update(dent_params)
      render json: @dent
    else
      render json: @dent.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dents/1
  def destroy
    @dent.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dent
      @dent = Dent.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dent_params
      params.require(:dent).permit(:pain_level, :sensitivity, :how_long, :medications, :notes)
    end
end
