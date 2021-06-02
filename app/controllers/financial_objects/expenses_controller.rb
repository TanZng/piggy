module FinancialObjects
  class ExpensesController < ApplicationController
    before_action :set_financial_objects_expense, only: %i[ show edit update destroy ]
    before_action :authenticate_user!

    # GET /financial_objects/expenses or /financial_objects/expenses.json
    def index
      @financial_objects_expenses = FinancialObjects::Expense.all
    end

    # GET /financial_objects/expenses/1 or /financial_objects/expenses/1.json
    def show; end

    # GET /financial_objects/expenses/new
    def new
      @financial_objects_expense = FinancialObjects::Expense.new
    end

    # GET /financial_objects/expenses/1/edit
    def edit; end

    # POST /financial_objects/expenses or /financial_objects/expenses.json
    def create
      manager = FinancialObjects::ExpenseManager.new
      @financial_objects_expense = manager.create(financial_objects_expense_params, current_user)
      respond_to do |format|
        if @financial_objects_expense.valid?
          format.html { redirect_to @financial_objects_expense, notice: 'Expense was successfully created.' }
          format.json { render :show, status: :created, location: @financial_objects_expense }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @financial_objects_expense.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /financial_objects/expenses/1 or /financial_objects/expenses/1.json
    def update
      manager = FinancialObjects::ExpenseManager.new
      updated, @financial_objects_expense = manager.update(params[:id], financial_objects_expense_params, current_user)
      respond_to do |format|
        if updated
          format.html { redirect_to @financial_objects_expense, notice: 'Expense was successfully updated.' }
          format.json { render :show, status: :ok, location: @financial_objects_expense }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @financial_objects_expense.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /financial_objects/expenses/1 or /financial_objects/expenses/1.json
    def destroy
      @financial_objects_expense.destroy
      respond_to do |format|
        format.html { redirect_to financial_objects_expenses_url, notice: 'Expense was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_financial_objects_expense
      @financial_objects_expense = FinancialObjects::Expense.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def financial_objects_expense_params
      params.require(:financial_objects_expense).permit(:description, :currency, :category_id, :payment_method_id, :date)
    end
  end
end
