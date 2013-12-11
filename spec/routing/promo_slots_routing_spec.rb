require "spec_helper"

describe PromoSlotsController do
  describe "routing" do

    it "routes to #index" do
      get("/promo_slots").should route_to("promo_slots#index")
    end

    it "routes to #new" do
      get("/promo_slots/new").should route_to("promo_slots#new")
    end

    it "routes to #show" do
      get("/promo_slots/1").should route_to("promo_slots#show", :id => "1")
    end

    it "routes to #edit" do
      get("/promo_slots/1/edit").should route_to("promo_slots#edit", :id => "1")
    end

    it "routes to #create" do
      post("/promo_slots").should route_to("promo_slots#create")
    end

    it "routes to #update" do
      put("/promo_slots/1").should route_to("promo_slots#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/promo_slots/1").should route_to("promo_slots#destroy", :id => "1")
    end

  end
end
