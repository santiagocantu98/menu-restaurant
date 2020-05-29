class CalificationsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_calification, only: [:show, :update, :destroy]

  # GET /califications
  def index
    @califications = Calification.all

    render json: @califications
  end

  # GET /califications/1
  def show
    render json: @calification
  end

  # POST /califications
  def create
    @calification = Calification.new(calification_params)

    if @calification.save
      render json: @calification, status: :created, location: @calification
    else
      render json: @calification.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /califications/1
  def update
    if @calification.update(calification_params)
      render json: @calification
    else
      render json: @calification.errors, status: :unprocessable_entity
    end
  end

  # DELETE /califications/1
  def destroy
    @calification.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calification
      @calification = Calification.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def calification_params
      params.require(:calification).permit(:menu_id, :waiter_id, :rating, :comment, :email, :ticket_id)
    end
end
