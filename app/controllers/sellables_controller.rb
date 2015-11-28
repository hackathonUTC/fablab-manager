class SellablesController < ApplicationController
  before_action :set_sellable, only: [:show, :edit, :update, :destroy]
  before_action :set_sellable_types, only: [:edit, :new, :create, :update]

  # GET /sellables
  # GET /sellables.json
  def index
    @sellables = Sellable.all
  end

  # GET /sellables/1
  # GET /sellables/1.json
  def show
  end

  # GET /sellables/new
  def new
    @sellable = Sellable.new
  end

  # GET /sellables/1/edit
  def edit
  end

  # POST /sellables
  # POST /sellables.json
  def create
    byebug
    sellable_info = sellable_params.except(:price)
    price_info = sellable_params[:price]

    @sellable = Sellable.new(sellable_info)

    respond_to do |format|
      if @sellable.save
        price_info[:sellable_id] = @sellable.id
        @price = Price.new(price_info)
        if @price.valid?
          @price.save

          format.html { redirect_to @sellable, notice: 'Sellable was successfully created.' }
          format.json { render :show, status: :created, location: @sellable }
        else
          format.html { render :new }
          format.json { render json: @price.errors, status: :unprocessable_entity }
        end
      else
        format.html { render :new }
        format.json { render json: @sellable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sellables/1
  # PATCH/PUT /sellables/1.json
  def update
    sellable_info = sellable_params.except(:price)
    price_info = sellable_params[:price]

    respond_to do |format|
      if @sellable.update(sellable_info)
        price_info[:sellable_id] = @sellable.id
        @price = Price.new(price_info)
        if @price.valid?
          @price.save

          format.html { redirect_to @sellable, notice: 'Sellable was successfully updated.' }
          format.json { render :show, status: :ok, location: @sellable }
        else
          @sellable.destroy
          format.html { render :edit }
          format.json { render json: @price.errors, status: :unprocessable_entity }
        end
      else
        format.html { render :edit }
        format.json { render json: @sellable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sellables/1
  # DELETE /sellables/1.json
  def destroy
    @sellable.destroy
    respond_to do |format|
      format.html { redirect_to sellables_url, notice: 'Sellable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sellable
      @sellable = Sellable.find(params[:id])
    end

    def set_sellable_types
      @sellable_types = SellableType.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sellable_params
      params.require(:sellable).permit(:unit, :name, :description, :stock, :sellable_type_id, price: [:innovation_center, :permanencier, :non_commercial, :commercial])
    end
end
