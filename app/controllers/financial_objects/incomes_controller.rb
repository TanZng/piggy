module FinancialObjects
  class IncomesController < ApplicationController
    before_action :set_financial_objects_income, only: %i[ show edit destroy ]
    before_action :authenticate_user!

    # GET /financial_objects/incomes or /financial_objects/incomes.json
    def index
      @financial_objects_incomes = FinancialObjects::Income.all
    end

    # GET /financial_objects/incomes/1 or /financial_objects/incomes/1.json
    def show; end

    # GET /financial_objects/incomes/new
    def new
      @financial_objects_income = FinancialObjects::Income.new
    end

    # GET /financial_objects/incomes/1/edit
    def edit; end

    # POST /financial_objects/incomes or /financial_objects/incomes.json
    def create
      manager = FinancialObjects::IncomeManager.new
      @financial_objects_income = manager.create(financial_objects_income_params, current_user)

      respond_to do |format|
        if @financial_objects_income.valid?
          format.html { redirect_to @financial_objects_income, notice: 'Income was successfully created.' }
          format.json { render :show, status: :created, location: @financial_objects_income }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @financial_objects_income.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /financial_objects/incomes/1 or /financial_objects/incomes/1.json
    def update
      manager = FinancialObjects::IncomeManager.new
      updated_succeeds, @financial_objects_expense = manager.update(params[:id], financial_objects_income_params, current_user)

      respond_to do |format|
        if updated_succeeds
          format.html { redirect_to @financial_objects_income, notice: 'Income was successfully updated.' }
          format.json { render :show, status: :ok, location: @financial_objects_income }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @financial_objects_income.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /financial_objects/incomes/1 or /financial_objects/incomes/1.json
    def destroy
      @financial_objects_income.destroy
      respond_to do |format|
        format.html { redirect_to financial_objects_incomes_url, notice: 'Income was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_financial_objects_income
      @financial_objects_income = FinancialObjects::Income.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def financial_objects_income_params
      params.require(:financial_objects_income).permit(:description, :currency, :category_id)
    end
  end
end
