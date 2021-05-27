class FinancialObjects::GoalsController < ApplicationController
  before_action :set_financial_objects_goal, only: %i[ show edit update destroy ]

  # GET /financial_objects/goals or /financial_objects/goals.json
  def index
    @financial_objects_goals = FinancialObjects::Goal.all
  end

  # GET /financial_objects/goals/1 or /financial_objects/goals/1.json
  def show
  end

  # GET /financial_objects/goals/new
  def new
    @financial_objects_goal = FinancialObjects::Goal.new
  end

  # GET /financial_objects/goals/1/edit
  def edit
  end

  # POST /financial_objects/goals or /financial_objects/goals.json
  def create
    @financial_objects_goal = FinancialObjects::Goal.new(financial_objects_goal_params)

    respond_to do |format|
      if @financial_objects_goal.save
        format.html { redirect_to @financial_objects_goal, notice: "Goal was successfully created." }
        format.json { render :show, status: :created, location: @financial_objects_goal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @financial_objects_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /financial_objects/goals/1 or /financial_objects/goals/1.json
  def update
    respond_to do |format|
      if @financial_objects_goal.update(financial_objects_goal_params)
        format.html { redirect_to @financial_objects_goal, notice: "Goal was successfully updated." }
        format.json { render :show, status: :ok, location: @financial_objects_goal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @financial_objects_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /financial_objects/goals/1 or /financial_objects/goals/1.json
  def destroy
    @financial_objects_goal.destroy
    respond_to do |format|
      format.html { redirect_to financial_objects_goals_url, notice: "Goal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_financial_objects_goal
      @financial_objects_goal = FinancialObjects::Goal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def financial_objects_goal_params
      params.require(:financial_objects_goal).permit(:description, :currency, :due_date, :wallet_id)
    end
end
