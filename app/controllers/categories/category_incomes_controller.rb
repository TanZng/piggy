class Categories::CategoryIncomesController < ApplicationController
  before_action :set_categories_category_income, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /categories/category_incomes or /categories/category_incomes.json
  def index
    @categories_category_incomes = Categories::CategoryIncome.all
  end

  # GET /categories/category_incomes/1 or /categories/category_incomes/1.json
  def show
  end

  # GET /categories/category_incomes/new
  def new
    @categories_category_income = Categories::CategoryIncome.new
  end

  # GET /categories/category_incomes/1/edit
  def edit
  end

  # POST /categories/category_incomes or /categories/category_incomes.json
  def create
    @categories_category_income = Categories::CategoryIncome.new(categories_category_income_params)

    respond_to do |format|
      if @categories_category_income.save
        format.html { redirect_to @categories_category_income, notice: "Category income was successfully created." }
        format.json { render :show, status: :created, location: @categories_category_income }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @categories_category_income.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories/category_incomes/1 or /categories/category_incomes/1.json
  def update
    respond_to do |format|
      if @categories_category_income.update(categories_category_income_params)
        format.html { redirect_to @categories_category_income, notice: "Category income was successfully updated." }
        format.json { render :show, status: :ok, location: @categories_category_income }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @categories_category_income.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/category_incomes/1 or /categories/category_incomes/1.json
  def destroy
    @categories_category_income.destroy
    respond_to do |format|
      format.html { redirect_to categories_category_incomes_url, notice: "Category income was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_categories_category_income
    @categories_category_income = Categories::CategoryIncome.find(params[:id])
  end

    # Only allow a list of trusted parameters through.
  def categories_category_income_params
    params.require(:categories_category_income).permit(:title, :color, :icon, :wallet_id)
  end
end
