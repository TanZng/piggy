module Categories
  class CategoryExpensesController < ApplicationController
    before_action :set_categories_category_expense, only: %i[show edit destroy]
    before_action :authenticate_user!

    # GET /categories/category_expenses or /categories/category_expenses.json
    def index
      # @categories_category_expenses = Categories::CategoryExpense.all
      @categories_category_expenses = manager.index(current_user)
      @pagy, @categories_category_expenses = pagy(@categories_category_expenses)
    end

    # GET /categories/category_expenses/1 or /categories/category_expenses/1.json
    def show; end

    # GET /categories/category_expenses/new
    def new
      @categories_category_expense = Categories::CategoryExpense.new
    end

    # GET /categories/category_expenses/1/edit
    def edit; end

    # POST /categories/category_expenses or /categories/category_expenses.json
    def create
      @categories_category_expense = manager.create(categories_category_expense_params, current_user)

      respond_to do |format|
        if @categories_category_expense.save
          format.html { redirect_to categories_category_expenses_path, notice: 'Category expense was successfully created.' }
          format.json { render :show, status: :created, location: @categories_category_expense }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @categories_category_expense.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /categories/category_expenses/1 or /categories/category_expenses/1.json
    def update
      updated_succeeds, @categories_category_expense = manager.update(params[:id], categories_category_expense_params, current_user)

      respond_to do |format|
        if updated_succeeds
          format.html { redirect_to categories_category_expenses_path, notice: 'Category expense was successfully updated.' }
          format.json { render :show, status: :ok, location: @categories_category_expense }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @categories_category_expense.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /categories/category_expenses/1 or /categories/category_expenses/1.json
    def destroy
      @categories_category_expense.destroy
      respond_to do |format|
        format.html { redirect_to categories_category_expenses_url, notice: 'Category expense was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    def manager
      Categories::CategoryExpenseManager.new
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_categories_category_expense
      @categories_category_expense = Categories::CategoryExpense.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def categories_category_expense_params
      params.require(:categories_category_expense).permit(:title, :color, :icon, :wallet_id)
    end
  end
end
