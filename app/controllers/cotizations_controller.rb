class CotizationsController < ApplicationController
  before_action :set_cotization, only: [:show, :edit, :update, :destroy]

  # GET /cotizations
  # GET /cotizations.json
  def index
    @cotizations = Cotization.all
  end

  # GET /cotizations/1
  # GET /cotizations/1.json
  def show
  end

  # GET /cotizations/new
  def new
    @cotization = Cotization.new
  end

  # GET /cotizations/1/edit
  def edit
  end

  # POST /cotizations
  # POST /cotizations.json
  def create
    @cotization = Cotization.new(cotization_params)

    respond_to do |format|
      if @cotization.save
        format.html { redirect_to @cotization, notice: 'Cotization was successfully created.' }
        format.json { render :show, status: :created, location: @cotization }
      else
        format.html { render :new }
        format.json { render json: @cotization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cotizations/1
  # PATCH/PUT /cotizations/1.json
  def update
    respond_to do |format|
      if @cotization.update(cotization_params)
        format.html { redirect_to @cotization, notice: 'Cotization was successfully updated.' }
        format.json { render :show, status: :ok, location: @cotization }
      else
        format.html { render :edit }
        format.json { render json: @cotization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cotizations/1
  # DELETE /cotizations/1.json
  def destroy
    @cotization.destroy
    respond_to do |format|
      format.html { redirect_to cotizations_url, notice: 'Cotization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cotization
      @cotization = Cotization.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cotization_params
      params.require(:cotization).permit(:user_id, :product_id, :quantity)
    end
end
