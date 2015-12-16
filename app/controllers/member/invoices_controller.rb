class Member::InvoicesController < Member::BaseController
  before_action :set_invoice, only: [:show, :edit, :update, :destroy]
  before_action :set_sellables, only: [:update, :edit, :create, :new]
  before_action :set_users, only: [:update, :edit, :create, :new]
  before_action :set_price_types

  skip_before_action :bouhou, only: [:edit, :update]


  # GET /invoices
  # GET /invoices.json
  def index
    if current_user.is_member?
      @invoices = Invoice.all
    else
      @invoices = current_user.invoices
    end
  end

  # GET /invoices/1
  # GET /invoices/1.json
  def show
    redirect_to :action => "edit"
  end

  # GET /invoices/new
  def new
    @invoice = Invoice.new
  end

  # GET /invoices/1/edit
  def edit
  end

  # POST /invoices
  # POST /invoices.json
  def create
    @invoice = Invoice.new(invoice_params)
    @invoice.created_by = current_user.id

    respond_to do |format|
      if @invoice.save
        format.html { redirect_to @invoice, notice: 'Invoice was successfully created.' }
        format.json { render :show, status: :created, location: @invoice }
      else
        format.html { render :new }
        format.json { render json: @invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invoices/1
  # PATCH/PUT /invoices/1.json
  def update
    respond_to do |format|
      if @invoice.update(invoice_params)
        format.html { redirect_to @invoice, notice: 'Invoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @invoice }
      else
        format.html { render :edit }
        format.json { render json: @invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoices/1
  # DELETE /invoices/1.json
  def destroy
    @invoice.destroy
    respond_to do |format|
      format.html { redirect_to invoices_url, notice: 'Invoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_invoice
    @invoice = Invoice.includes(:orders).find(params[:id])
  end

  def set_sellables
    @sellables = Sellable.all
  end

  def set_users
    @users = User.all
  end

  def set_price_types
    @price_types = current_user.is_member? ? PriceType.all : PriceType.where('display = ?', true)
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def invoice_params
    params.require(:invoice).permit(:created_for, orders_attributes: [:id, :quantity, :discount, :sellable_id, :_destroy]) unless !current_user.is_member?
  end
end
