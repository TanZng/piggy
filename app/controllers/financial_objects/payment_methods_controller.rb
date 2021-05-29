class FinancialObjects::PaymentMethodsController < ApplicationController
  before_action :set_financial_objects_payment_method, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /financial_objects/payment_methods or /financial_objects/payment_methods.json
  def index
    @financial_objects_payment_methods = FinancialObjects::PaymentMethod.all
  end

  # GET /financial_objects/payment_methods/1 or /financial_objects/payment_methods/1.json
  def show
  end

  # GET /financial_objects/payment_methods/new
  def new
    @financial_objects_payment_method = FinancialObjects::PaymentMethod.new
  end

  # GET /financial_objects/payment_methods/1/edit
  def edit
  end

  # POST /financial_objects/payment_methods or /financial_objects/payment_methods.json
  def create
    @financial_objects_payment_method = FinancialObjects::PaymentMethod.new(financial_objects_payment_method_params)

    respond_to do |format|
      if @financial_objects_payment_method.save
        format.html { redirect_to @financial_objects_payment_method, notice: "Payment method was successfully created." }
        format.json { render :show, status: :created, location: @financial_objects_payment_method }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @financial_objects_payment_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /financial_objects/payment_methods/1 or /financial_objects/payment_methods/1.json
  def update
    respond_to do |format|
      if @financial_objects_payment_method.update(financial_objects_payment_method_params)
        format.html { redirect_to @financial_objects_payment_method, notice: "Payment method was successfully updated." }
        format.json { render :show, status: :ok, location: @financial_objects_payment_method }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @financial_objects_payment_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /financial_objects/payment_methods/1 or /financial_objects/payment_methods/1.json
  def destroy
    @financial_objects_payment_method.destroy
    respond_to do |format|
      format.html { redirect_to financial_objects_payment_methods_url, notice: "Payment method was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_financial_objects_payment_method
      @financial_objects_payment_method = FinancialObjects::PaymentMethod.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def financial_objects_payment_method_params
      params.require(:financial_objects_payment_method).permit(:title, :description, :wallet_id, :date)
    end
end
