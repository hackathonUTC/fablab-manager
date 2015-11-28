class SellableTypesController < ApplicationController
  before_action :set_sellable_type, only: [:show, :edit, :update, :destroy]

  # GET /sellable_types
  # GET /sellable_types.json
  def index
    @sellable_types = SellableType.all
  end

  # GET /sellable_types/1
  # GET /sellable_types/1.json
  def show
  end

  # GET /sellable_types/new
  def new
    @sellable_type = SellableType.new
  end

  # GET /sellable_types/1/edit
  def edit
  end

  # POST /sellable_types
  # POST /sellable_types.json
  def create
    @sellable_type = SellableType.new(sellable_type_params)

    respond_to do |format|
      if @sellable_type.save
        format.html { redirect_to @sellable_type, notice: 'Sellable type was successfully created.' }
        format.json { render :show, status: :created, location: @sellable_type }
      else
        format.html { render :new }
        format.json { render json: @sellable_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sellable_types/1
  # PATCH/PUT /sellable_types/1.json
  def update
    respond_to do |format|
      if @sellable_type.update(sellable_type_params)
        format.html { redirect_to @sellable_type, notice: 'Sellable type was successfully updated.' }
        format.json { render :show, status: :ok, location: @sellable_type }
      else
        format.html { render :edit }
        format.json { render json: @sellable_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sellable_types/1
  # DELETE /sellable_types/1.json
  def destroy
    @sellable_type.destroy
    respond_to do |format|
      format.html { redirect_to sellable_types_url, notice: 'Sellable type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sellable_type
      @sellable_type = SellableType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sellable_type_params
      params.require(:sellable_type).permit(:name)
    end
end
