require "rails_helper"

RSpec.describe FinancialObjects::PaymentMethodsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/financial_objects/payment_methods").to route_to("financial_objects/payment_methods#index")
    end

    it "routes to #new" do
      expect(get: "/financial_objects/payment_methods/new").to route_to("financial_objects/payment_methods#new")
    end

    it "routes to #show" do
      expect(get: "/financial_objects/payment_methods/1").to route_to("financial_objects/payment_methods#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/financial_objects/payment_methods/1/edit").to route_to("financial_objects/payment_methods#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/financial_objects/payment_methods").to route_to("financial_objects/payment_methods#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/financial_objects/payment_methods/1").to route_to("financial_objects/payment_methods#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/financial_objects/payment_methods/1").to route_to("financial_objects/payment_methods#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/financial_objects/payment_methods/1").to route_to("financial_objects/payment_methods#destroy", id: "1")
    end
  end
end
