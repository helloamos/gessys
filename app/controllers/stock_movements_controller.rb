class StockMovementsController < ApplicationController
  before_action :set_stock_movement, only: [:show, :edit, :update, :destroy]

  # GET /stock_movements
  # GET /stock_movements.json
  def index
    @stock_movements = StockMovement.all
  end

  # GET /stock_movements/1
  # GET /stock_movements/1.json
  def show
  end

  # GET /stock_movements/new
  def new
    @stock_movement = StockMovement.new
  end

  # GET /stock_movements/1/edit
  def edit
  end

  # POST /stock_movements
  # POST /stock_movements.json
  def create
    @stock_movement = StockMovement.new(stock_movement_params)

    respond_to do |format|
      if @stock_movement.save
        format.html { redirect_to @stock_movement, notice: 'Stock movement was successfully created.' }
        format.json { render :show, status: :created, location: @stock_movement }
      else
        format.html { render :new }
        format.json { render json: @stock_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stock_movements/1
  # PATCH/PUT /stock_movements/1.json
  def update
    respond_to do |format|
      if @stock_movement.update(stock_movement_params)
        format.html { redirect_to @stock_movement, notice: 'Stock movement was successfully updated.' }
        format.json { render :show, status: :ok, location: @stock_movement }
      else
        format.html { render :edit }
        format.json { render json: @stock_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_movements/1
  # DELETE /stock_movements/1.json
  def destroy
    @stock_movement.destroy
    respond_to do |format|
      format.html { redirect_to stock_movements_url, notice: 'Stock movement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock_movement
      @stock_movement = StockMovement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stock_movement_params
      params.require(:stock_movement).permit(:reference, :movement_type_id, :status, :user_id)
    end
end
