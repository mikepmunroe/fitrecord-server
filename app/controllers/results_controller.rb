class ResultsController < ApplicationController
  # GET /results
  # GET /results.json
  def index
    @results = Result.all

    render json: @results
  end

  # GET /results/1
  # GET /results/1.json
  def show
    @result = Result.find(params[:id])

    render json: @result
  end

  # POST /results
  # POST /results.json
  def create
    @result = Result.new(params[:result])

    if @result.save
      render json: @result, status: :created, location: @result
    else
      render json: @result.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /results/1
  # PATCH/PUT /results/1.json
  def update
    @result = Result.find(params[:id])

    if @result.update(params[:result])
      head :no_content
    else
      render json: @result.errors, status: :unprocessable_entity
    end
  end

  # DELETE /results/1
  # DELETE /results/1.json
  def destroy
    @result = Result.find(params[:id])
    @result.destroy

    head :no_content
  end
end
