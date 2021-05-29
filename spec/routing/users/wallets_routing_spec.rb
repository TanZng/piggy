require "rails_helper"

RSpec.describe Users::WalletsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/users/wallets").to route_to("users/wallets#index")
    end

    it "routes to #new" do
      expect(get: "/users/wallets/new").to route_to("users/wallets#new")
    end

    it "routes to #show" do
      expect(get: "/users/wallets/1").to route_to("users/wallets#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/users/wallets/1/edit").to route_to("users/wallets#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/users/wallets").to route_to("users/wallets#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/users/wallets/1").to route_to("users/wallets#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/users/wallets/1").to route_to("users/wallets#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/users/wallets/1").to route_to("users/wallets#destroy", id: "1")
    end
  end
end
