require "spec_helper"

describe CampaignItemsController do
  describe "routing" do

    it "routes to #index" do
      get("/campaign_items").should route_to("campaign_items#index")
    end

    it "routes to #new" do
      get("/campaign_items/new").should route_to("campaign_items#new")
    end

    it "routes to #show" do
      get("/campaign_items/1").should route_to("campaign_items#show", :id => "1")
    end

    it "routes to #edit" do
      get("/campaign_items/1/edit").should route_to("campaign_items#edit", :id => "1")
    end

    it "routes to #create" do
      post("/campaign_items").should route_to("campaign_items#create")
    end

    it "routes to #update" do
      put("/campaign_items/1").should route_to("campaign_items#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/campaign_items/1").should route_to("campaign_items#destroy", :id => "1")
    end

  end
end
