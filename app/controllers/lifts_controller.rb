class LiftsController < ApplicationController
  # GET /lifts
  # GET /lifts.json
  def index
    @lifts = Lift.all

    render json: @lifts
  end

  # GET /lifts/1
  # GET /lifts/1.json
  def show
    @lift = Lift.find(params[:id])

    render json: @lift
  end

  # POST /lifts
  # POST /lifts.json
  def create
    @lift = Lift.new(params[:lift])

    if @lift.save
      render json: @lift, status: :created, location: @lift
    else
      render json: @lift.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lifts/1
  # PATCH/PUT /lifts/1.json
  def update
    @lift = Lift.find(params[:id])

    if @lift.update(params[:lift])
      head :no_content
    else
      render json: @lift.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lifts/1
  # DELETE /lifts/1.json
  def destroy
    @lift = Lift.find(params[:id])
    @lift.destroy

    head :no_content
  end
end
