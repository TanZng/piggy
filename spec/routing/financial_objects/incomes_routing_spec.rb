require "rails_helper"

RSpec.describe FinancialObjects::IncomesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/financial_objects/incomes").to route_to("financial_objects/incomes#index")
    end

    it "routes to #new" do
      expect(get: "/financial_objects/incomes/new").to route_to("financial_objects/incomes#new")
    end

    it "routes to #show" do
      expect(get: "/financial_objects/incomes/1").to route_to("financial_objects/incomes#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/financial_objects/incomes/1/edit").to route_to("financial_objects/incomes#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/financial_objects/incomes").to route_to("financial_objects/incomes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/financial_objects/incomes/1").to route_to("financial_objects/incomes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/financial_objects/incomes/1").to route_to("financial_objects/incomes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/financial_objects/incomes/1").to route_to("financial_objects/incomes#destroy", id: "1")
    end
  end
end
