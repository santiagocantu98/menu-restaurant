class WaitersController < ApplicationController
  before_action :set_waiter, only: [:show, :update, :destroy]

  # GET /waiters
  def index
    @waiters = Waiter.all

    render json: @waiters
  end

  # GET /waiters/1
  def show
    render json: @waiter
  end

  # POST /waiters
  def create
    @waiter = Waiter.new(waiter_params)

    if @waiter.save
      render json: @waiter, status: :created, location: @waiter
    else
      render json: @waiter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /waiters/1
  def update
    if @waiter.update(waiter_params)
      render json: @waiter
    else
      render json: @waiter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /waiters/1
  def destroy
    @waiter.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_waiter
      @waiter = Waiter.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def waiter_params
      params.require(:waiter).permit(:name, :image_url, :menu_id, :role)
    end
end
