class TourOperatorsController < ApplicationController
  before_action :set_tour_operator, only: [:show, :edit, :update, :destroy]

  # GET /tour_operators
  # GET /tour_operators.json
  def index
    @tour_operators = TourOperator.all
  end

  # GET /tour_operators/1
  # GET /tour_operators/1.json
  def show
  end

  # GET /tour_operators/new
  def new
    @tour_operator = TourOperator.new
  end

  # GET /tour_operators/1/edit
  def edit
  end

  # POST /tour_operators
  # POST /tour_operators.json
  def create
    @tour_operator = TourOperator.new(tour_operator_params)

    respond_to do |format|
      if @tour_operator.save
        format.html { redirect_to @tour_operator, notice: 'Tour operator was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tour_operator }
      else
        format.html { render action: 'new' }
        format.json { render json: @tour_operator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tour_operators/1
  # PATCH/PUT /tour_operators/1.json
  def update
    respond_to do |format|
      if @tour_operator.update(tour_operator_params)
        format.html { redirect_to @tour_operator, notice: 'Tour operator was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tour_operator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tour_operators/1
  # DELETE /tour_operators/1.json
  def destroy
    @tour_operator.destroy
    respond_to do |format|
      format.html { redirect_to tour_operators_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tour_operator
      @tour_operator = TourOperator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tour_operator_params
      params[:tour_operator]
    end
end
