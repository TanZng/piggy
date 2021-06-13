require 'rails_helper'

RSpec.describe "Dashboards::Dashboards", type: :request do
  describe "GET /monthly" do
    it "returns http success" do
      get "/dashboards/dashboard/monthly"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /annual" do
    it "returns http success" do
      get "/dashboards/dashboard/annual"
      expect(response).to have_http_status(:success)
    end
  end

end
