require "rails_helper"

describe JobsController do
  it "routes to #index" do
    get("/jobs").should route_to("jobs#index")
  end

  it "routes to #new" do
    get("/jobs/new").should route_to("jobs#new")
  end
end
