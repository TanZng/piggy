 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/financial_objects/goals", type: :request do
  
  # FinancialObjects::Goal. As you add validations to FinancialObjects::Goal, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      FinancialObjects::Goal.create! valid_attributes
      get financial_objects_goals_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      goal = FinancialObjects::Goal.create! valid_attributes
      get financial_objects_goal_url(financial_objects_goal)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_financial_objects_goal_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      goal = FinancialObjects::Goal.create! valid_attributes
      get edit_financial_objects_goal_url(financial_objects_goal)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new FinancialObjects::Goal" do
        expect {
          post financial_objects_goals_url, params: { financial_objects_goal: valid_attributes }
        }.to change(FinancialObjects::Goal, :count).by(1)
      end

      it "redirects to the created financial_objects_goal" do
        post financial_objects_goals_url, params: { financial_objects_goal: valid_attributes }
        expect(response).to redirect_to(financial_objects_goal_url(@financial_objects_goal))
      end
    end

    context "with invalid parameters" do
      it "does not create a new FinancialObjects::Goal" do
        expect {
          post financial_objects_goals_url, params: { financial_objects_goal: invalid_attributes }
        }.to change(FinancialObjects::Goal, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post financial_objects_goals_url, params: { financial_objects_goal: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested financial_objects_goal" do
        goal = FinancialObjects::Goal.create! valid_attributes
        patch financial_objects_goal_url(financial_objects_goal), params: { financial_objects_goal: new_attributes }
        goal.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the financial_objects_goal" do
        goal = FinancialObjects::Goal.create! valid_attributes
        patch financial_objects_goal_url(financial_objects_goal), params: { financial_objects_goal: new_attributes }
        goal.reload
        expect(response).to redirect_to(financial_objects_goal_url(goal))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        goal = FinancialObjects::Goal.create! valid_attributes
        patch financial_objects_goal_url(financial_objects_goal), params: { financial_objects_goal: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested financial_objects_goal" do
      goal = FinancialObjects::Goal.create! valid_attributes
      expect {
        delete financial_objects_goal_url(financial_objects_goal)
      }.to change(FinancialObjects::Goal, :count).by(-1)
    end

    it "redirects to the financial_objects_goals list" do
      goal = FinancialObjects::Goal.create! valid_attributes
      delete financial_objects_goal_url(financial_objects_goal)
      expect(response).to redirect_to(financial_objects_goals_url)
    end
  end
end
