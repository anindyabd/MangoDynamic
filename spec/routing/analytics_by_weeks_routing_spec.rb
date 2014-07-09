require "spec_helper"

describe AnalyticsByWeeksController do
  describe "routing" do

    it "routes to #index" do
      get("/analytics_by_weeks").should route_to("analytics_by_weeks#index")
    end

    it "routes to #new" do
      get("/analytics_by_weeks/new").should route_to("analytics_by_weeks#new")
    end

    it "routes to #show" do
      get("/analytics_by_weeks/1").should route_to("analytics_by_weeks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/analytics_by_weeks/1/edit").should route_to("analytics_by_weeks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/analytics_by_weeks").should route_to("analytics_by_weeks#create")
    end

    it "routes to #update" do
      put("/analytics_by_weeks/1").should route_to("analytics_by_weeks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/analytics_by_weeks/1").should route_to("analytics_by_weeks#destroy", :id => "1")
    end

  end
end
